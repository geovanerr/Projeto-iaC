#!/bin/bash

echo "Criando Diretórios..."

mkdir /publico
mkdir /adm
mkdir /vendas
mkdir /RH

echo "Criando os grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VENDAS
groupadd GRP_RH

echo "Criando os usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VENDA                                                                                                                                                             S
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_V                                                                                                                                                             ENDAS
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEND                                                                                                                                                             AS

useradd josefina -m -s /bin/bash -p  $(openssl passwd -crypt Senha123) -G GRP_RH
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_RH
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_RH

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VENDAS /vendas
chown root:GRP_RH /RH

chmod 770 /adm
chmod 770 /vendas
chmod 770 /RH
chmod 777 /publico

echo "Fim..."
