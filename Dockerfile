FROM perl:5.22
MAINTAINER Henry Van Styn <vanstyn@cpan.org>

RUN cpanm \
 https://cpan.metacpan.org/authors/id/V/VA/VANSTYN/RapidApp-1.1008.tar.gz \
&& rm -rf .cpanm/

## docker-build command refernce:
#
# docker build -t rapi/rapidapp-base .
# docker tag rapi/rapidapp-base rapi/rapidapp-base:1.1008
# docker push rapi/rapidapp-base
#
