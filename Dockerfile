FROM nfcore/base
LABEL authors="Vlad Saveliev" \
      description="Docker image containing all requirements for nf-core/umcaw pipeline"

COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a
ENV PATH /opt/conda/envs/nf-core-umcaw-1.0dev/bin:$PATH
