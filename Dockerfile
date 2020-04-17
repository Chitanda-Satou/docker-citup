FROM continuumio/miniconda:latest

RUN conda config --add channels http://conda.anaconda.org/dranew \
    && conda config --add channels http://conda.anaconda.org/shahcompbio \
    && conda install -y \
        -c https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/bioconda/ \
        -c bioconda \
        -c https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge/ \
        -c conda-forge \
        citup \
        numpy \
        pandas \
    && conda clean --all
