FROM ubuntu:xenial

LABEL "readme"="This is the dockerfile to set up the test environment for COEN 241 HW 1"
WORKDIR /usr
RUN mkdir 241
RUN mkdir 241/HW1
ENV workdirectory /usr/241/HW1
WORKDIR $workdirectory
RUN apt update && apt install -y \
    vim \
    curl  \
    && bash  
RUN curl -s https://packagecloud.io/install/repositories/akopytov/sysbench/script.deb.sh | bash
RUN apt install -y sysbench=1.0.20-1
COPY top.sh .
COPY cpu.sh .
COPY cpu_test.sh .
COPY mode.sh .
COPY io.sh .
COPY io_test.sh .
COPY move_file.sh .
COPY move.sh .
COPY test_mv.sh .