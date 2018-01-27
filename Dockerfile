FROM perl:5.26
MAINTAINER Henry Van Styn <vanstyn@cpan.org>


# ----
# The current released version of MIME::Types (2.17) is broken, install 
# older versions for now:
RUN cpanm \
  http://cpan.metacpan.org/authors/id/M/MA/MARKOV/MIME-Types-2.14.tar.gz \
  http://cpan.metacpan.org/authors/id/V/VA/VANSTYN/Email-MIME-CreateHTML-1.041.tar.gz \
  https://cpan.metacpan.org/authors/id/V/VA/VANSTYN/Catalyst-Controller-SimpleCAS-1.001.tar.gz \
&& rm -rf .cpanm/
# ----


RUN cpanm \
 http://cpan.metacpan.org/authors/id/V/VA/VANSTYN/RapidApp-1.3100.tar.gz \
&& rm -rf .cpanm/


## docker-build command refernce:
#
# docker build -t rapi/rapidapp-base .
# docker tag rapi/rapidapp-base rapi/rapidapp-base:1.3100
# docker push rapi/rapidapp-base
#
