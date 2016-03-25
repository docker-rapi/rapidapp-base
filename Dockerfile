FROM perl:5.22
MAINTAINER Henry Van Styn <vanstyn@cpan.org>

RUN cpanm RapidApp && rm -rf .cpanm/

## docker-build command refernce:
#
# docker build --no-cache -t rapi/rapidapp-base .
# docker tag rapi/rapidapp-base rapi/rapidapp-base:1.1006
# docker push rapi/rapidapp-base
#
