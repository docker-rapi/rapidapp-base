FROM perl:5.22
MAINTAINER Henry Van Styn <vanstyn@cpan.org>

# pre-install dep needed later on by Devel::CheckOS (1.77)
RUN cpanm File::Find::Rule && rm -rf .cpanm/

RUN cpanm \
 https://cpan.metacpan.org/authors/id/V/VA/VANSTYN/RapidApp-1.2100.tar.gz \
&& rm -rf .cpanm/

## docker-build command refernce:
#
# docker build -t rapi/rapidapp-base .
# docker tag rapi/rapidapp-base rapi/rapidapp-base:1.2100
# docker push rapi/rapidapp-base
#
