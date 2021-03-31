#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
# Copyright 2021 jhunhong.
#
# This is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.
#
# This software is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this software; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street,
# Boston, MA 02110-1301, USA.
#


import struct
import numpy
from gnuradio import gr
import time
from math import sqrt

from PyQt5 import Qt, QtGui
from PyQt5.QtCore import Qt as Qtc
from PyQt5.QtCore import pyqtSignal,  QPoint,  pyqtSlot,  pyqtProperty, QRect
from PyQt5.QtWidgets import QFrame, QWidget, QVBoxLayout, QVBoxLayout, QLabel
from PyQt5.QtGui import QPainter, QPalette, QFont, QFontMetricsF,  QPen, QColor, QBrush


class LabeledSemiCircle(QFrame):
    def __init__(self, min_size, update_time, setDebug=False, backgroundColor='default'):
        QFrame.__init__(self)
        self.sectorControl = SemiCircle(min_size, update_time, setDebug, backgroundColor)

        self.layout = QVBoxLayout()
        self.layout.addWidget(self.sectorControl)
        self.layout.setAlignment(Qtc.AlignCenter | Qtc.AlignVCenter)
        self.setLayout(self.layout)

        self.show()

    def change_angle(self, angle, doa_exist):
        self.sectorControl.change_angle(angle, doa_exist)

    def setColors(self, backgroundColor='default', circleColor='black', sectorColor='blue'):
        self.sectorControl.setColors(backgroundColor, circleColor, sectorColor)


class SemiCircle(QWidget):
    angleChanged = pyqtSignal(float)

    def __init__(self, min_size, update_time, setDebug=False, backgroundColor='default'):
        QWidget.__init__(self, None)

        # Set parameters
        self.debug = setDebug
        self.update_period = update_time
        self.last = time.time()
        self.next_sector = 0

        self._angle = 0
        self._margins = 2
        self.setMinimumSize(min_size, min_size)
        self.setSizePolicy(Qt.QSizePolicy.Expanding, Qt.QSizePolicy.Expanding)

        self.backgroundColor = backgroundColor
        self.circleColor = 'black'
        self.sectorColor = 'blue'

        self.doa_exist = False

    def setColors(self, backgroundColor='default', circleColor='black', sectorColor='blue'):
        self.backgroundColor = backgroundColor
        self.circleColor = circleColor
        self.sectorColor = sectorColor
        super().update()

    def paintEvent(self, event):
        painter = QPainter()
        painter.begin(self)
        painter.setRenderHint(QPainter.Antialiasing)

#         if (self.backgroundColor == 'default'):
#             painter.fillRect(event.rect(), self.palette().brush(QPalette.Window))
#         else:
#             size = self.size()
#             center_x = size.width()/2
#             diameter = size.height()
#             rect = QRect(center_x-diameter/2, 0, diameter, diameter)
#             brush = QBrush(QColor(self.backgroundColor), Qtc.SolidPattern)

#             painter.setBrush(brush)
#             painter.setPen(QPen(QColor(self.circleColor), 2))
#             painter.setRenderHint(QPainter.Antialiasing)
#             painter.drawEllipse(center_x-diameter/2+1, 1, diameter-4, diameter-4)

        self.drawSector(painter)
        painter.end()

    def drawSector(self, painter):
        painter.save()

        # Set up painter
        painter.translate(self.width()/2, self.height()/2)

        painter.setPen(QPen(QColor(self.circleColor)))

        angle = int(round(self._angle))

        height = 600
        width = 600

        # Draw the outline
        painter.drawPie(0-width/2, 0-height/2, width, height, 0 * 16, 90 * 16)
        painter.drawPie(0-width/2, 0-height/2, width, height, 90 * 16, 90 * 16)

        # Draw the antenna
        painter.drawLine(-width/2, 200, width/2, 200)
        painter.drawLine(-width/2, 150, -width/2, 200)
        painter.drawLine(width/2, 150, width/2, 200)

        painter.drawLine(-width/2, 150, -width/2+10, 130)
        painter.drawLine(-width/2, 150, -width/2-10, 130)
        painter.drawLine(-width/2-10, 130, -width/2+10, 130)

        painter.drawLine(width/2, 150, width/2+10, 130)
        painter.drawLine(width/2, 150, width/2-10, 130)
        painter.drawLine(width/2-10, 130, width/2+10, 130)

        if angle > 0 and self.doa_exist:
            painter.setBrush(QBrush(QColor(self.sectorColor), Qtc.SolidPattern))
            painter.drawPie(0-width/2, 0-height/2, width, height, 90 * 16, 90 * 16)
        elif angle < 0 and self.doa_exist:
            painter.setBrush(QBrush(QColor(self.sectorColor), Qtc.SolidPattern))
            painter.drawPie(0-width/2, 0-height/2, width, height, 0 * 16, 90 * 16)
        # else:
        #     painter.setBrush(QBrush(QColor(0,0,0), Qtc.SolidPattern))

        painter.restore()

    def angle(self):
        return self._angle

    def change_angle(self, angle, doa_exist):
        if angle != self._angle:
            if self.debug:
                print(("DoA Angle: " + str(angle)))
            # if (angle < 0.0):
            #     angle = 0


        if doa_exist:
            self.doa_exist = True
            self._angle = angle
            self.angleChanged.emit(angle)
        else:
            self.doa_exist = False

        self.update()

    angle = pyqtProperty(float, angle, change_angle)


class GrSemiCircle(gr.sync_block, LabeledSemiCircle):
    def __init__(self, min_size, update_time, setDebug=False, backgroundColor='default'):
        gr.sync_block.__init__(self, name="QTSemiCircle", in_sig=[numpy.float32], out_sig=[])

        LabeledSemiCircle.__init__(self, min_size, update_time, setDebug, backgroundColor)

        self.last = time.time()
        self.update_period = update_time
        self.next_angle = 0
        self.doa_array = []
        self.doa_exist = False
        self.peak_detected = 0
        self.doa_value = 0
        self.std = 0

    def setColors(self, backgroundColor='default', circleColor='black', sectorColor='blue'):
        super().setColors(backgroundColor, circleColor, sectorColor)

    def work(self, input_items, output_items):
        self.doa_array.append(int(input_items[0][0]))
        # self.doa_value = int(input_items[0][0])
        # self.peak_detected = input_items[1][0]

        self.next_angle = numpy.mean(self.doa_array)
        if (len(self.doa_array) >= 50):
            # pack it into an array

            # getting standard deviation of input arrays
            self.std = sqrt(numpy.mean(abs(self.doa_array[-1] - self.next_angle)**2))

            if (self.std <= 0.02): # make it larger than 0.1?
                # print(self.doa_array)
                # print(self.std)
                # print(input_items[1])
                self.doa_exist = True
                self.doa_array = []

            else:
                self.doa_array.pop(0)

            self.std = 0


        if (time.time() - self.last) > self.update_period:
            self.last = time.time()
            # print(self.peak_detected)
            # print(self.doa_value)
            # print(self.peak_detected)
            super().change_angle(self.next_angle, self.doa_exist)
            self.doa_exist = False

        return len(input_items[0])
