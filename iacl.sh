#!/bin/bash
echo "--------------------Criando os diretorios-----------"

mkdir  /publico 
mkdir /adm 
mkdir /ven 
mkdir /sec

echo "-------------------Criando Grupos-------------------"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "-----------------Criando usarios  e Grupos -------"

useradd carlos -c "Carlos maia de Figueredo" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria  -c "Maria Eduarda" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -c "João Figueiredo" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd debora -c "Debora Nascimento" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana de Almeida" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -c "Roberto Costa" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd josefina -c "Josefina de Leite" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -c "Amanda de Freitas" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -c "Rogerios de Toledo" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "-----------------Especificação permissoes dos diretorios --------"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado-------"

