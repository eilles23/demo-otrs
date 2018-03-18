#!/bin/bash
#add: user

cp ./volumes/config/scripts/s1/*.pm ./volumes/config/Config.pm

sudo docker exec demootrs_otrs su - otrs -c 'cp /opt/otrs/Kernel/scripts/navbar.xml /opt/otrs/Kernel/Config/Files/XML/DemoOTRS.xml'
sudo docker exec demootrs_otrs sed -i 's/RUNTO/Step 2/' /opt/otrs/Kernel/Config/Files/XML/DemoOTRS.xml 
sudo docker exec demootrs_otrs sed -i 's/TOLINK/load%20step%2002/' /opt/otrs/Kernel/Config/Files/XML/DemoOTRS.xml
sudo docker exec demootrs_otrs sed -i 's/HEREIAM/Step 1/' /opt/otrs/Kernel/Config/Files/XML/DemoOTRS.xml #current step
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Maint::Config::Rebuild'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Maint::Cache::Delete'

#add faq article
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::FAQ::Import "/opt/otrs/Kernel/System/Console/Command/Custom/Admin/FAQ/c01s01.csv"'

#create default agent
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent@firma.de" --first-name Mitar --last-name Beiter --email-address "agent@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::UserLink --group-name "users" --user-name "agent@firma.de" --permission "rw"'

#add generic agent
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "load step 02" --file "/s1.yml"'
