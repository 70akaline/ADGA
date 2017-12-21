# This file is part of the Abinitio Dynamical Vertex Approximation (ADGA)
# package. It's an electronic structure code which allows the inclusion of
# non-local correlations beyond DMFT.
#
# The public repository can be found at
# https://github.com/AbinitioDGA/ADGA
#
# The arXiv publication can be found at
# https://arxiv.org/abs/1710.06651
#
# Copyright (C) <2017, 2018> 
# <Anna Galler, Patrick Thunström, Josef Kaufmann, Matthias Pickem, Jan M. Tomczak, Karsten Held>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software Foundation,
# Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301  USA

all: binR abinitiodga make_config 

make_config:
	cd make_configs/;./make_config_auto.sh

binR:
	if [ ! -d bin ] ; then mkdir bin ; fi

abinitiodga: make_config
	cd src/; make

clean: make_config
	cd src/; make clean

pristine: make_config
	cd src/; make pristine
	rmdir bin
