FROM onmodulus/run-base

ADD . /opt/modulus
ENV PATH=/opt/modulus/bin:$PATH

RUN /opt/modulus/bootstrap.sh

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]
