#!/bin/bash
#add: statistic, ...

sudo docker exec demootrs_otrs sed -i 's/Step 6/Step 7/' /opt/otrs/Kernel/Config/Files/XML/DemoOTRS.xml #current step
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Maint::Config::Rebuild'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Maint::Cache::Delete'

sudo docker exec demootrs_otrs cp /opt/otrs/Kernel/scripts/s7/*.pm /opt/otrs/Kernel/Config.pm

#add faq article
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::FAQ::Import "/opt/otrs/Kernel/System/Console/Command/Custom/Admin/FAQ/c03s02.csv"'

#install additional packages
#curl -o ftp://ftp.otrs.org/pub/otrs/itsm/bundle6/
#FAQ
LATEST=$(curl -s4 ftp://ftp.otrs.org/pub/otrs/packages/ | grep -Eo 'FAQ-[0-9].[0-9].[0-9]+' | tr "[:blank:]" "\n" | sort -V | tail -n 1)
if [ ! -f ./volumes/backup/$LATEST.opm ]; then
  sudo docker exec -it demootrs_otrs curl -o /var/otrs/backups/$LATEST.opm ftp://ftp.otrs.org/pub/otrs/itsm/bundle6/$LATEST.opm
else 
echo "File $LATEST.opm already existing."
fi
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Package::Install /var/otrs/backups/ITSM-*'


