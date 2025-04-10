#!/bin/bash
versao="1.0"
clear
echo "###_____###_____###_____##_____##_______##______#";
echo "##/ ____|#/ ____|#/ ____||_  _||___  __| |  ___|";
echo "#| (___##| |#####| (___####| |#####| |###| |__ ##";
echo "##\___ \#| |######\___ \###| |#####| |###|  __|##";
echo "##____) || |____##____) |#_| |_####| |###| |____#";
echo "#|_____/##\_____||_____/#|_____|###|_|###|______|";

echo "==========================================================="
echo "Patch Para instalação SNGREP, HTOP, MC E OUTROS para Issabel"
echo "Autor Jean Passos - Empresa SCSITE"
echo "https://www.scsite.com.br "
echo "==========================================================="
echo ""
sleep 5
echo ""
echo "Executando UPDATE"
echo ""
yum update -y
echo ""
echo "INICIANDO O PROCESSO..."
echo ""
echo "Instalando ferramentas úteis...[TCP DUMP]"
echo ""
yum install tcpdump -y
sleep 5
echo ""
echo "Instalando WGET"
echo ""
yum install wget -y
sleep 5
echo ""
echo "Instalando HTOP"
echo ""
yum install htop -y
sleep 5
echo ""
echo "Instalando RSYNC"
echo ""
yum install rsync -y
sleep 5
echo ""
echo "Instalando MC"
echo ""
yum install mc -y
sleep 5
echo ""
echo "Instalando MANO"
echo ""
yum install nano -y
sleep 5
yum update
echo ""
echo "Instalando sngrep"
echo "" 
rm -Rf /etc/yum.repos.d/irontec.repo
cat > /etc/yum.repos.d/irontec.repo <<EOF
[irontec]
name=Irontec RPMs repository
baseurl=http://packages.irontec.com/centos/\$releasever/\$basearch/
EOF
rpm --import http://packages.irontec.com/public.key
yum install sngrep -y
echo ""
echo "Atualizando o sistema..."
echo ""
yum -y update && yum -y upgrade
clear
echo ""
echo ""
echo "Instalando  subversion"
yum -y install subversion
echo ""
echo ""
echo "Instalando o ASTERNIC, porém precisa ficar atento porque precisará colocar senha"
sleep 5
echo "Começando..."
cd /usr/src
wget http://download.asternic.net/asternic-stats-pro-2.3.3.tgz
tar zxvf asternic-stats-pro-2.3.3.tgz
cd asternic-stats-pro-2.3.3
echo "@@@ ATENÇÃO NESTE MOMENTO QUE COMEÇARA PEDIR PARA COLOCAR A TUA SENHA @@@"
make install

cd /

echo "======================================================================="
echo ""
echo "===================  TUDO INSTALADO   ================================="
