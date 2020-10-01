#!/bin/bash
#Data alteração 20275

unset APACHE2 &&
unset VEIANEW &&
export APACHE2="/usr/local/apache22" &&
export VEIANEW="${APACHE2}/VEIANEW" &&
wget -N -v --tries=1 -P ${VEIANEW} https://github.com/MarioAlvesCarvalho/veianew/archive/master.zip &&
chmod -R 777 ${VEIANEW}/master.zip ;
chmod +x ${VEIANEW}/master.zip ;
unzip -oq ${VEIANEW}/master.zip -d ${VEIANEW} &&
sleep 1 &&
rm -rf ${VEIANEW}/*.sh ;
cp -rf ${VEIANEW}/veianew-master/* ${VEIANEW}/ ;
chmod 775 ${VEIANEW}/* ;
chown root.root ${VEIANEW}/* ;
rm -rf ${VEIANEW}/master.zip ${VEIANEW}/veianew-master ;
ln -s /usr/local/apache22/VEIANEW/veianew /bin/veianew ;
yum install rsync;
echo -e "" &&
echo -e "" &&
echo -e "" &&
echo -e "******************************************" &&
echo -e "    Instalação do VEIANEW concluida!!!    " &&
echo -e "       Execute o comando  'veianew'       " &&
echo -e "em qualquer lugar do terminal para usar!!!" &&
echo -e "******************************************" ;
