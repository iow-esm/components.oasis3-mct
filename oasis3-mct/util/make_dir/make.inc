#
# System dependent settings 
#
# $Id: make.inc 1123 2006-09-06 12:14:56Z valcke $
#
##### User configurable options #####
#
# Note: The absolute path name must be indicated.
#
# Note: Choose one of these includes files and modify it according to your
#       local settings. Replace the currently active file with your own.
#
#include  $(HOME)/oasis3-mct/util/make_dir/make.intel_nemo_lenovo
include  /space/coquart/oasis3-mct_buildbot/util/make_dir/make.pgi_openmpi_openmp_linux_buildbot
#
### End User configurable options ###