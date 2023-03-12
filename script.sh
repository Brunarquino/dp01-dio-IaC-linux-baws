#!/bin/bash

echo "Criando os diretorios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "Todos diretórios criados!"

echo "Criando os grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Todos grupos criados!"

echo "Criando os usuarios do grupo Adm..."
useradd carlos -c "Administração" -m -s /bin/bash -p $(openssl passwd -1 Adm123) -G GRP_ADM 
useradd maria -c "Administração" -m -s /bin/bash -p $(openssl passwd -1 Adm123) -G GRP_ADM
useradd joao -c "Administração" -m -s /bin/bash -p $(openssl passwd -1 Adm123) -G GRP_ADM

echo "Criando os usuarios do grupo Vendas"
useradd debora -c "vendas" -m -s /bin/bash -p $(openssl passwd -1 Ven123) -G GRP_VEN
useradd sebastiana -c "vendas" -m -s /bin/bash -p $(openssl passwd -1 Ven123) -G GRP_VEN
useradd roberto -c "vendas" -m -s /bin/bash -p $(openssl passwd -1 Ven123) -G GRP_VEN

echo "Criando os usuarios do grupo Secretariado"
useradd josefina -c "Secretariado" -m -s /bin/bash -p $(openssl passwd -1 Sec123) -G GRP_SEC
useradd amanda -c "Secretariado" -m -s /bin/bash -p $(openssl passwd -1 Sec123) -G GRP_SEC
useradd rogerio -c "Secretariado" -m -s /bin/bash -p $(openssl passwd -1 Sec123) -G GRP_SEC

echo "Todos usuarios criados!"

echo "Modificando as permissões dos diretorios..."
chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Permissões modificadas!"
