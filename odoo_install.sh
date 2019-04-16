#!/bin/bash
################################################################################
echo -e "\n---- Actualizando Servidor ----"
sudo apt-get update
sudo apt-get upgrade
echo -e "\n---- instalando utilitarios ----"
sudo apt-get install nano
sudo apt-get install unrar
echo -e "\n---- instalando firewall y abriendo puertos ----"
apt install ufw
sudo ufw allow ssh
sudo ufw allow 8069/tcp
echo -e "\n---- instalando postgres y python dependencias ----"
sudo apt install git python-pip postgresql postgresql-server-dev-9.5 python-all-dev python-dev python-setuptools libxml2-dev libxslt1-dev libevent-dev libsasl2-dev libldap2-dev pkg-config libtiff5-dev libjpeg8-dev libjpeg-dev zlib1g-dev libfreetype6-dev liblcms2-dev liblcms2-utils libwebp-dev tcl8.6-dev tk8.6-dev python-tk libyaml-dev fontconfig
echo -e "\n---- instalando dependencias de odoo ----"
sudo apt-get install python-pypdf2 python-dateutil python-feedparser python-ldap python-libxslt1 python-lxml python-mako python-openid python-psycopg2 python-pybabel python-pychart python-pydot python-pyparsing python-reportlab python-simplejson python-tz python-vatnumber python-vobject python-webdav python-werkzeug python-xlwt python-yaml python-zsi python-docutils python-psutil python-mock python-unittest2 python-jinja2 python-pypdf python-decorator python-requests python-passlib libpq-dev build-essential libssl-dev libffi-dev python-dev python-pil -y
sudo apt install python3-pip python3-babel python3-dateutil python3-decorator python3-docutils python3-feedparser python3-gevent python3-html2text python3-jinja2 python3-lxml python3-mako python3-mock 
sudo pip3 install pypdf2==1.26.0 Babel==2.3.4 passlib==1.6.5 Werkzeug==0.11.15 decorator==4.0.10 python-dateutil==2.5.3 pyyaml==3.13 qrcode==5.3 pysftp==0.2.9 psycopg2==2.7.3.1 psutil==4.3.1 html2text==2016.9.19 docutils==0.12 lxml==4.2.3 pillow==4.0.0 reportlab==3.3.0 ninja2 requests==2.20.0 gdata XlsxWriter==0.9.3 vobject==0.9.3 python-openid pyparsing==2.1.10 pydot==1.2.3 mock==2.0.0 mako==1.0.4 Jinja2==2.10.1 ebaysdk==2.1.5 feedparser==5.2.1 xlwt==1.3.* psycogreen suds-jurko==0.6 pytz==2016.7 pyusb==1.0.0 greenlet==0.4.10 xlrd==1.0.0
echo -e "\n---- instalando WKHTMLTOPDF para odoo ----"
sudo wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.1/wkhtmltox-0.12.1_linux-trusty-amd64.deb
sudo dpkg -i wkhtmltox-0.12.1_linux-trusty-amd64.deb
sudo cp /usr/local/bin/wkhtmltoimage /usr/bin/wkhtmltoimage
sudo cp /usr/local/bin/wkhtmltopdf /usr/bin/wkhtmltopdf
