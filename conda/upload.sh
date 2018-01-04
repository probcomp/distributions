#!/bin/bash
set -ev

conda install anaconda-client
anaconda -t ${CONDA_UPLOAD_TOKEN} upload -u ${CONDA_USER} ~/miniconda/conda-bld/linux-64/libprotobuf-*.tar.bz2 --force
anaconda -t ${CONDA_UPLOAD_TOKEN} upload -u ${CONDA_USER} ~/miniconda/conda-bld/linux-64/distributions-*.tar.bz2 --force
