FROM ubuntu/apache2:2.4-21.04_beta
LABEL mantainer = 'Vovolinux <vinicius@viniciusalopes.com.br>'

# Interactive mode
ENV DEBIAN_FRONTEND=noninteractive

# Locale and Language
ENV OS_LOCALE='pt_BR.UTF-8' \
    LANG=${OS_LOCALE}       \
    LANGUAGE=${OS_LOCALE}   \
    LC_ALL=${OS_LOCALE}

RUN apt-get update                \
    && apt-get install -y locales \
    && locale-gen ${OS_LOCALE}    \
    && dpkg-reconfigure locales

# Build dependecies
ENV BUILD_DEPS='software-properties-common'
RUN apt-get install -f -y $BUILD_DEPS

# Installing php5.6
RUN apt-get update \
    && add-apt-repository -y ppa:ondrej/php \
    && apt-get update

RUN apt-get install -y    \
    curl                  \
    libapache2-mod-php5.6 \
    php5.6                \
    php5.6-bz2            \
    php5.6-cgi            \
    php5.6-cli            \
    php5.6-curl           \
    php5.6-dba            \
    php5.6-gd             \
    php5.6-gmp            \
    php5.6-imap           \
    php5.6-json           \
    php5.6-mbstring       \
    php5.6-mcrypt         \
    php5.6-mysql          \
    php5.6-pgsql          \
    php5.6-sqlite3        \
    php5.6-pgsql          \
    php5.6-soap           \
    php5.6-xml            \
    php5.6-xmlrpc         \
    php5.6-xsl            \
    php5.6-zip

# Enabling php5.6 module
RUN a2enmod php5.6

# Cleaning
RUN apt-get purge -y --autoremove $BUILD_DEPS \
    && apt-get autoremove -y                  \
    && apt-get clean -y                       \
    && rm -rfv /var/lib/apt/lists/*           \
    && rm -rfv /tmp/*

# Forward request and error logs to docker log collector
RUN ln -sfv /dev/stdout /var/log/apache2/access.log \
    && ln -sfv /dev/stderr /var/log/apache2/error.log

# Permanent files
ENV DIR_VOVO="/var/www/vovo"
COPY ./html ${DIR_VOVO}/html
COPY ./apache2/conf ${DIR_VOVO}/conf
COPY ./apache2/sites-available ${DIR_VOVO}/sites-available

RUN chmod 755 /var/www/html -Rf

WORKDIR /var/www/html/

EXPOSE 80 443

# By default, simply start apache.
COPY apache2/entrypoint.sh /sbin/entrypoint.sh
RUN chmod 755 /sbin/entrypoint.sh 
CMD ["/sbin/entrypoint.sh"]

# On my machine, it works!
# (Vovolinux)
