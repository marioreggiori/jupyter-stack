FROM marioreggiori/tensorflow-notebook

RUN conda install --quiet --yes \
    -c conda-forge xeus-cling && \
    conda clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"