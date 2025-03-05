FROM continuumio/miniconda3

ADD scripts/install_ga_conda.sh /opt/docker-installer/install_ga_conda.sh
ADD scripts/install_ga_git.sh /opt/docker-installer/install_ga_git.sh
ADD scripts/build_ga_cgyro.sh /opt/docker-installer/build_ga_cgyro.sh

RUN /opt/docker-installer/install_ga_conda.sh && /opt/docker-installer/install_ga_git.sh && /opt/docker-installer/build_ga_cgyro.sh

ADD scripts/setup_gacode.sh /opt/gacode/setup_gacode.sh
RUN useradd -m -s /bin/bash gauser

env GACODE_ROOT=/opt/gacode
env GACODE_PLATFORM=CONDA_OMPI_GNU


