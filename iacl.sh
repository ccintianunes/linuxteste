#!/bin/bash

echo "criando diretorios.."

mkdir /publico
mkdir /adm
mkdir /outros

echo "criando grupos de usuarios.."

groupadd GRP_ADM
groupadd GRP_OUTROS

echo "criando usuarios.."

useradd neide -m -s /bin/bash -p $(openss1 passwd -crypt 123) -c "maria neide" -G GRP_ADM
useradd simone - m -s /bin/bash -p $(openss1 passwd -crypt 123) -G GRP_ADM

useradd raquel -m -s /bin/bash -p $(opennss1 passwd -crypt 123) -G GRP_OUTROS
useradd davi -m -s /bin/bash -p $(opennss1 passwd-crypt 123) -G GRP_OUTROS

echo "adicionando usuários aos grupos"
echo "dando permissões dos diretórios"

chown root: GRP_ADM /adm
chown root: GRP_OUTROS /outros

chmod 770 /adm
chmod 770 /outros
chmod 777 /publico

echo "fim né baby"


