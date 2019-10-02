FROM perl:5.26
MAINTAINER Henry Van Styn <vanstyn@cpan.org>


RUN cpanm \
 http://cpan.metacpan.org/authors/id/V/VA/VANSTYN/RapidApp-1.3108.tar.gz \
&& rm -rf .cpanm/


## docker-build command refernce:
#
# docker build -t rapi/rapidapp-base .
# docker tag rapi/rapidapp-base rapi/rapidapp-base:1.3108
# docker push rapi/rapidapp-base
#
