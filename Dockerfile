FROM httpd:2.4

# Dependencies
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
  make \
  perl-modules \
  liburi-perl \
  liburi-encode-perl \
  libwww-perl \
  libjson-perl \
  libdbi-perl \
  libdbd-mysql-perl \
  libdbd-pg-perl \
  libdigest-md5-perl \
  libfile-slurp-perl \
  libhtml-strip-perl \
  liblist-moreutils-perl \
  libcache-memcached-perl \
  libhtml-template-perl \
  libdigest-md5-perl \
  libdigest-md5-file-perl \
  libdatetime-perl \
  libdatetime-format-ISO8601-perl \
  liblist-allutils-perl \
  libposix-strptime-perl \
  libuuid-tiny-perl \
  libmongodb-perl \
  libfreezethaw-perl \
  libtemplate-perl \
  libclass-isa-perl
  
RUN apt-get install -y \
  curl \
  emacs \
  git
    
ENV PERL_MM_USE_DEFAULT 1
WORKDIR /usr/local/apache2/htdocs/ 
RUN git clone https://github.com/paczian/authServer.git
ADD . SequenceCenter
RUN cd SequenceCenter && \
  git clone https://github.com/MG-RAST/Retina.git
  


