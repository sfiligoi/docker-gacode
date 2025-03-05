#/bin/bash
conda create -y -n gacode -c conda-forge gfortran binutils make python fftw openmpi netcdf4 libopenblas=*=*openmp* vim git
conda clean -y --all
