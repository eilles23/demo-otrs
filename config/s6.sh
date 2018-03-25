#!/bin/bash
###add: Itsm
#copy Config.pm
sudo docker exec demootrs_otrs cp /opt/otrs/Kernel/scripts/s6/s6.pm /opt/otrs/Kernel/Config.pm
#add faq article
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::FAQ::Import "/opt/otrs/Kernel/System/Console/Command/Custom/Admin/FAQ/s6.csv"'

#check mysqld config at /etc/my.cnf in demootrs_mariadb
if sudo docker exec demootrs_mariadb grep -q max_allowed_packet=20M /etc/my.cnf; then
  sudo docker exec demootrs_mariadb mysql -u root --password="changeme" -e "SET GLOBAL max_allowed_packet=67108864;"
  echo "Warning: MariaDB does not have the required settings for OTRS loaded!"
  echo "set global variable 'max_allowed_packet'"
  sudo docker exec demootrs_mariadb mysql -u otrs --password="changeme" -e "SHOW VARIABLES LIKE 'max_allowed_packet';"
fi
#restart webserver inside container
sudo docker exec demootrs_otrs  supervisorctl restart httpd
#install additional packages
#curl -o ftp://ftp.otrs.org/pub/otrs/itsm/bundle6/
#FAQ
#LATEST=$(curl -s4 ftp://ftp.otrs.org/pub/otrs/packages/ | grep -Eo 'FAQ-[0-9].[0-9].[0-9]+' | tr "[:blank:]" "\n" | sort -V | tail -n 1)
#if [ ! -f ./volumes/backup/$LATEST.opm ]; then
#  sudo docker exec -it demootrs_otrs curl -o /var/otrs/backups/$LATEST.opm ftp://ftp.otrs.org/pub/otrs/itsm/bundle6/$LATEST.opm
#else 
#echo "File $LATEST.opm already existing."
#fi
#sudo docker exec -it demootrs_otrs curl -o /var/otrs/backups/DynamicFieldConfigItem.opm https://opar.perl-services.de/package/download/1508
sudo cp ./config/ITSM-*.opm ./volumes/backup/
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Package::Install /var/otrs/backups/ITSM-*'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Package::Install /opt/otrs/Kernel/scripts/s6/DynamicFieldITSMConfigItem-6.0.1.opm'

#add general catalog entries
#add config item configurations
#create CIs ?!


#add dynamicfields
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name DIGImodelnr --label "Model Nr." --type Text --file /DF_Text.yml'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name DIGIserialnr --label "Serial Nr." --type Text --file /DF_Text.yml'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name DIGIwarranty --label "Still in warranty" --type Checkbox --file /DF_checkbox.yml'

sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name MEDproductid --label "Product ID" --type Text --file /DF_Text.yml'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name MEDdevicetype --label "Device Type" --type Dropdown --file /MEDdevicetype.yml'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name MEDconectivity --label "Connectivity" --type Multiselect --file /MEDconectivity.yml'

sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name INTELLIservice --label "Service" --type Dropdown --file /INTELLIservice.yml'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name INTELLIfeatures --label "Features" --type Multiselect --file /INTELLIfeatures.yml'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name INTELLIStartdate --label "Service Start Date" --type Date --file /DF_Date.yml'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name INTELLIDuration --label "Contract Duration" --type DateTime --file /DF_DateTime.yml'


#import processes

#add acls
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file AAA_Hide_all_processes.yml'

#add generic agent
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "load step 07" --file /s6.yml'
