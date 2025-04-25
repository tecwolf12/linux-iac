#/bin/bash

echo "Pastas sendo criadas..."

mkdir /publico
mkdir /adm
mkdir /ven  
mkdir /sec

echo "Usuários em processo de seperação..."

groupadd GRP_ADM
groupadd GRP_SEC
groupadd GRP_VEN

echo "Usuários sendo configurados"

useradd carlos  -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_ADM
useradd maria  -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_ADM
useradd joao  -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_ADM

useradd debora  -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_ADM
useradd sebastiana  -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_ADM
useradd roberto  -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_ADM

useradd josefina  -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_ADM
useradd amanda  -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_ADM
useradd rogerio  -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_ADM

echo "Organizando permissões"

chown root:GRP_ADM /adm
chown root:GRP_SEC /sec
chown root:GRP_VEN /ven

chmod 777 /publico
chmod 770 /adm
chmod 770 /sec
chmod 770 /ven

echo "Saindo"
