#!/bin/bash

set -x
cd /

#mkdir /publico
#mkdir /adm
#mkdir /ven
#mkdir /sec

#groupadd GRP_ADM
#groupadd GRP_VEN
#groupadd GRP_SEC

#chown root:GRP_ADM adm
#chown root:GRP_VEN ven
#chown root:GRP_SEC sec

#chmod 777 publico
#chmod 770 adm
#chmod 770 ven
#chmod 770 sec

useradd carlos -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -6 "carlos123")
passwd carlos -e
useradd maria -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -6 "maria123")
passwd maria -e
useradd joao -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -6 "joao123")
passwd joao -e
useradd debora -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -6 "debora123")
passwd debora -e
useradd sebastiana -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -6 "sebastiana123")
passwd sebastiana -e
useradd roberto -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -6 "roberto123")
passwd roberto -e
useradd josefina -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -6 "josefina123")
passwd josefina -e
useradd amanda -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -6 "amanda123")
passwd amanda -e
useradd rogerio -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -6 "rogerio123")
passwd rogerio -e

set +x
echo "Processo finalizado."
