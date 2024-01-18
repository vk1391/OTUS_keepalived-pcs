#!/bin/bash
targetcli /backstores/block create disk01 /dev/sdb
targetcli /iscsi create iqn.2024-01.ru.otus:storage.target00
targetcli /iscsi/iqn.2024-01.ru.otus:storage.target00/tpg1/portals create 0.0.0.0
targetcli /iscsi/iqn.2024-01.ru.otus:storage.target00/tpg1/luns create /backstores/block/disk01 lun=1
targetcli /iscsi/iqn.2024-01.ru.otus:storage.target00/tpg1/luns ls lun1
targetcli /iscsi/iqn.2024-01.ru.otus:storage.target00/tpg1 set attribute authentication=0
targetcli /iscsi/iqn.2024-01.ru.otus:storage.target00/tpg1 set auth userid=otus
targetcli /iscsi/iqn.2024-01.ru.otus:storage.target00/tpg1 set auth password=otus
targetcli /iscsi/iqn.2024-01.ru.otus:storage.target00/tpg1/acls  create wwn=iqn.2024-01.ru.otus:storage.client201 add_mapped_luns=true
targetcli /iscsi/iqn.2024-01.ru.otus:storage.target00/tpg1/acls  create wwn=iqn.2024-01.ru.otus:storage.client202  add_mapped_luns=true
targetcli /iscsi/iqn.2024-01.ru.otus:storage.target00/tpg1/acls  create wwn=iqn.2024-01.ru.otus:storage.client203 add_mapped_luns=true