#!/bin/bash

#[[ -r /apps/3rdparty/hpcrnd/envmodules/profile.d/hpc-modules.sh ]] && . /apps/3rdparty/hpcrnd/envmodules/profile.d/hpc-modules.sh
#[[ -r /apps/3rdparty/hpcrnd/envmodules/profile.d/shell-modules.sh ]] && . /apps/3rdparty/hpcrnd/envmodules/profile.d/shell-modules.sh
#[[ -r /glb/data/hpcrnd/easybuild/public/etc/profile.d/shell-envmodules.sh ]] && . /glb/data/hpcrnd/easybuild/public/etc/profile.d/shell-envmodules.sh

module load /apps/3rdparty/hpcrnd/modulefiles/rhelany-intel/impi/5.0.2.044

module load ParaView/4.3.1-goolf-2015.02-Qt-5.2.1
module load qt/5.2.1 load gcc/4.9.2 openmpi/1.8.3/gcc_4.4.7 parallel_studio_xe/2013 git/2.2.2
module load GDB/7.8.2-GCC-4.9.2

export https_proxy="http://nbproxy.shell.com:8080"

shopt -s expand_aliases
alias Raja_SPH='cd /glb/ap/bngsti/proj/ir3/Raja/'
alias clear='echo -e '"'"'\0033\0143'"'"''
alias bsub_d='bsub -P ccb -q devel.q -Is bash'

#set vim terminal to 256 colors.
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
    else
        export TERM='xterm-color'
	fi

#module load easybuild
