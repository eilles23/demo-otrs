#!/bin/bash
#add: queue, group, customerinfomationcenter

sudo docker exec demootrs_otrs su - otrs -c 'cp /opt/otrs/Kernel/scripts/navbar.xml /opt/otrs/Kernel/Config/Files/XML/DemoOTRS.xml'
sudo docker exec demootrs_otrs sed -i 's/RUNTO/Step 3/' /opt/otrs/Kernel/Config/Files/XML/DemoOTRS.xml 
sudo docker exec demootrs_otrs sed -i 's/TOLINK/load%20step%2003/' /opt/otrs/Kernel/Config/Files/XML/DemoOTRS.xml
sudo docker exec demootrs_otrs sed -i 's/HEREIAM/Step 2/' /opt/otrs/Kernel/Config/Files/XML/DemoOTRS.xml #current step
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Maint::Config::Rebuild'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Maint::Cache::Delete'

sudo docker exec demootrs_otrs cp /opt/otrs/Kernel/scripts/s2/*.pm /opt/otrs/Kernel/Config.pm

#add dynamicFields
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name username --label Username --type Text --file /DF_Text.yml'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name firstname --label Firstname --type Text --file /DF_Text.yml'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name lastname --label Lastname --type Text --file /DF_Text.yml'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name email --label E-Mail --type Text --file /DF_Text.yml'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name password --label Password --type Text --file /DF_Text.yml'


#Create new group
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "registration"'
#link webservice to new group
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::UserLink --group-name "registration" --user-name "webservice" --permission "rw"'
#link admin to new group
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::UserLink --group-name "registration" --user-name "admin" --permission "rw"'
#link agent to new group
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::UserLink --group-name "registration" --user-name "agent@firma.de" --permission "rw"'

#Add queue
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name Registration --group "registration"'

#add faq category
#add faq article
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::FAQ::Import "/opt/otrs/Kernel/System/Console/Command/Custom/Admin/FAQ/c01s02.csv"'


#add generic agent
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "load step 03" --file /s2.yml'
