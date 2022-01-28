#!/bin/bash

debug=${1:-"release"}
rebuild=${2:-"fast"}

# LOAD REQUIRED MODULES
module load intel/19.1.0 
module load openmpi/intel.19/3.1.6 
module load netcdf/intel.19/4.7.4 

# GET IOW ESM ROOT PATH
export IOW_ESM_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )/../.."

# SET SYSTEM-SPECIFIC COMPILER OPTIONS AND PATHS
# compile mode: "PRODUCTION" or "DEBUG"
if [ $debug == "debug" ]; then
	export IOW_ESM_COMPILE_MODE="DEBUG"
elif [ $debug == "release" ]; then
	export IOW_ESM_COMPILE_MODE="PRODUCTION"
else
	echo "Compile mode is not specified correctly. Use debug or release"
	exit;
fi

# include paths
export IOW_ESM_NETCDF_INCLUDE="${NETCDF_INCLUDE_PATH}"
export IOW_ESM_NETCDF_LIBRARY="${NETCDF_LIBRARY_PATH}"
# executables
export IOW_ESM_MAKE="/usr/bin/make"
export IOW_ESM_FC="mpifort"
export IOW_ESM_CC="mpicc"
export IOW_ESM_LD="mpifort"

# compiler flags
if [ $debug == "debug" ]; then
	export IOW_ESM_FFLAGS="-O0 -g -traceback -fno-alias -ip -align"
	export IOW_ESM_CFLAGS="-vec-report0 -O0 -fno-alias -ip -align"
	export IOW_ESM_LDFLAGS="-g -traceback"
else
	export IOW_ESM_FFLAGS="-O3 -r8 -O3 -no-prec-div -static -fp-model fast=2 -xHost"
	export IOW_ESM_CFLAGS="-vec-report0 -O3 -r8 -O3 -no-prec-div -static -fp-model fast=2 -xHost"
	export IOW_ESM_LDFLAGS=""
fi

# MAKE CLEAN
if [ $rebuild == "rebuild" ]; then
	rm -r ${IOW_ESM_ROOT}/components/OASIS3-MCT/oasis3-mct/IOW_ESM_${IOW_ESM_COMPILE_MODE}
fi

# RUN BUILD COMMAND
cd ${IOW_ESM_ROOT}/components/OASIS3-MCT/oasis3-mct/util/make_dir
${IOW_ESM_MAKE} --file=TopMakefileOasis3
cd ${IOW_ESM_ROOT}/components/OASIS3-MCT
