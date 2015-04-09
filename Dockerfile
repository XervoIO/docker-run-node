FROM onmodulus/image-run-base:1.0.0

ADD . /opt/modulus
ENV PATH=/opt/modulus/bin:$PATH

RUN /opt/modulus/bootstrap.sh

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]
