#!/bin/sh
export VOLK_GENERIC=1
export GR_DONT_LOAD_PREFS=1
export srcdir="/home/jhunhong/gnuradio-doa/gr-doa/python"
export GR_CONF_CONTROLPORT_ON=False
export PATH="/home/jhunhong/gnuradio-doa/gr-doa/build/python":$PATH
export LD_LIBRARY_PATH="":$LD_LIBRARY_PATH
export PYTHONPATH=/home/jhunhong/gnuradio-doa/gr-doa/build/swig:$PYTHONPATH
/home/jhunhong/.pyenv/shims/python3 /home/jhunhong/gnuradio-doa/gr-doa/python/qa_pi2pi_ff.py 
