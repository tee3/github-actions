FROM fedora:30

LABEL maintainer="Thomas Brown <tabsoftwareconsulting@gmail.com>"

RUN dnf clean all && dnf -y update && dnf -y install \
        boost-build \
        cmake \
        doxygen \
        gcc \
        clang \
        clang-tools-extra \
        graphviz \
        make \
        pkg-config \
        \
        gcc-c++ \
        clang \
        \
        boost-devel \
        \
        python3 \
        \
        git

RUN git clone https://github.com/tee3/commands_to_compilation_database.git /usr/local/src/commands_to_compilation_database && \
        git -C /usr/local/src/commands_to_compilation_database checkout 0.3.0 && \
        cd /usr/local/src/commands_to_compilation_database && \
        bjam --prefix=/usr/local install
