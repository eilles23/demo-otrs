#!/bin/bash
###add: statistic, ...
#copy Config.pm
 cp /opt/otrs/Kernel/scripts/s7/*.pm /opt/otrs/Kernel/Config.pm
#change navbar item
 sed -i 's/Step 6/Step 7/' /opt/otrs/Kernel/Config/Files/XML/DemoOTRS.xml #current step
/opt/otrs/bin/otrs.Console.pl Maint::Config::Rebuild
/opt/otrs/bin/otrs.Console.pl Maint::Cache::Delete


#add faq article
perl /opt/otrs/bin/otrs.Console.pl Admin::FAQ::Import "/opt/otrs/Kernel/System/Console/Command/Custom/Admin/FAQ/s7.csv"

#install additional packages
#curl -o ftp://ftp.otrs.org/pub/otrs/itsm/bundle6/
#FAQ
LATEST=$(curl -s4 ftp://ftp.otrs.org/pub/otrs/packages/ | grep -Eo 'FAQ-[0-9].[0-9].[0-9]+' | tr "[:blank:]" "\n" | sort -V | tail -n 1)
if [ ! -f ./volumes/backup/$LATEST.opm ]; then
  sudo docker exec -it demootrs_otrs curl -o /var/otrs/backups/$LATEST.opm ftp://ftp.otrs.org/pub/otrs/itsm/bundle6/$LATEST.opm
else 
echo "File $LATEST.opm already existing."
fi
perl /opt/otrs/bin/otrs.Console.pl Admin::Package::Install /var/otrs/backups/ITSM-*


