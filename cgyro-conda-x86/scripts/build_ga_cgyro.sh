#/bin/bash
. /opt/conda/etc/profile.d/conda.sh
conda activate gacode
export GACODE_ROOT=/opt/gacode
export GACODE_PLATFORM=CONDA_OMPI_GNU
. $GACODE_ROOT/platform/env/env.$GACODE_PLATFORM
. $GACODE_ROOT/shared/bin/gacode_setup

cd /opt/gacode && cd cgyro && make && cd ../xgyro && make
