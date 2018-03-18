#!/bin/bash
#add: queues, groups, escalation

sudo docker exec demootrs_otrs su - otrs -c 'cp /opt/otrs/Kernel/scripts/navbar.xml /opt/otrs/Kernel/Config/Files/XML/DemoOTRS.xml'
sudo docker exec demootrs_otrs sed -i 's/RUNTO/Step 5/' /opt/otrs/Kernel/Config/Files/XML/DemoOTRS.xml 
sudo docker exec demootrs_otrs sed -i 's/TOLINK/load%20step%2005/' /opt/otrs/Kernel/Config/Files/XML/DemoOTRS.xml
sudo docker exec demootrs_otrs sed -i 's/HEREIAM/Step 6/' /opt/otrs/Kernel/Config/Files/XML/DemoOTRS.xml #current step
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Maint::Config::Rebuild'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Maint::Cache::Delete'

sudo docker exec demootrs_otrs cp /opt/otrs/Kernel/scripts/s4/*.pm /opt/otrs/Kernel/Config.pm

#add faq article
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::FAQ::Import "/opt/otrs/Kernel/System/Console/Command/Custom/Admin/FAQ/c02s01.csv"'

#add mail accounts
sudo docker exec demootrs_mail add-account agentDACH@firma.de otrs 
sudo docker exec demootrs_mail add-account agentBENELUX@firma.de otrs 
sudo docker exec demootrs_mail add-account agentLATAM@firma.de otrs 
sudo docker exec demootrs_mail add-account agentNAM@firma.de otrs 
sudo docker exec demootrs_mail add-account agentEUROPE@firma.de otrs 
sudo docker exec demootrs_mail add-account agentAMERICA@firma.de otrs 
sudo docker exec demootrs_mail add-account agentWORLDWIDE@firma.de otrs 
sudo docker exec demootrs_mail add-account kunde@privat.de otrs 
sudo docker exec demootrs_mail add-account digi.dritt@unternehmen.de otrs 
sudo docker exec demootrs_mail add-account client@prive.be otrs 
sudo docker exec demootrs_mail add-account digi.troisieme@enterprise.be otrs 
sudo docker exec demootrs_mail add-account customer@private.com otrs 
sudo docker exec demootrs_mail add-account digi.thirdparty@company.com otrs 
sudo docker exec demootrs_mail add-account cliente@privada.br otrs 
sudo docker exec demootrs_mail add-account digi.terceiro@companhia.br otrs 

#add customer
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "Private Customers" --customer-id "101"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "<Unternehmen>" --customer-id "102"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "<Enterprise>" --customer-id "103"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "<Company>" --customer-id "104"'

#add cutomeruser
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "kunde@privat.de" --first-name Privat --last-name Kunde --email-address "kunde@privat.de" --password "otrs" --customer-id "101"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "client@prive.be" --first-name Prive --last-name Client --email-address "client@prive.be" --password "otrs" --customer-id "102"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "customer@private.com" --first-name Private --last-name Customer --email-address "customer@private.com" --password "otrs" --customer-id "103"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "cliente@privada.br" --first-name Privadamente --last-name Cliente --email-address "cliente@privada.br" --password "otrs" --customer-id "104"'


#add groups
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "DACH"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "BENELUX"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "EUROPE"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "AMERICA"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "WOLRDWIDE"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "2ndLvl"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "3rdLvl"'

#add roles
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Agent::General"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Agent::1st-Lvl::DACH"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Agent::1st-Lvl::BENELUX"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Agent::1st-Lvl::LATAM"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Agent::1st-Lvl::NAM"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Agent::2nd-Lvl::EUROPE"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Agent::2nd-Lvl::AMERICA"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Agent::3rd-Lvl::WORLDWIDE"'

#Link Group-Role
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "DACH" --role-name "Agent::1st-Lvl::DACH" --permission "rw"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "EUROPE" --role-name "Agent::1st-Lvl::DACH" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "WORLDWIDE" --role-name "Agent::1st-Lvl::DACH" --permission "ro"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "BENELUX" --role-name "Agent::1st-Lvl::BENELUX" --permission "rw"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "EUROPE" --role-name "Agent::1st-Lvl::BENELUX" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "WORLDWIDE" --role-name "Agent::1st-Lvl::BENELUX" --permission "ro"'
sudo docker exec demootrs_otrs su - otrs -c 
'/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "LATAM" --role-name "Agent::1st-Lvl::LATAM" --permission "rw"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "EUROPE" --role-name "Agent::1st-Lvl::LATAM" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "WORLDWIDE" --role-name "Agent::1st-Lvl::LATAM" --permission "ro"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "NAM" --role-name "Agent::1st-Lvl::NAM" --permission "rw"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "EUROPE" --role-name "Agent::1st-Lvl::NAM" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "WORLDWIDE" --role-name "Agent::1st-Lvl::NAM" --permission "ro"'

sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "DACH" --role-name "Agent::2nd-Lvl::EUROPE" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "BENELUX" --role-name "Agent::2nd-Lvl::EUROPE" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "AMERICA" --role-name "Agent::2nd-Lvl::EUROPE" --permission "move_into"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "EUROPE" --role-name "Agent::2nd-Lvl::EUROPE" --permission "rw"'

sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "AMERICA" --role-name "Agent::2nd-Lvl::AMERICA" --permission "rw"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "LATAM" --role-name "Agent::2nd-Lvl::AMERICA" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "NAM" --role-name "Agent::2nd-Lvl::AMERICA" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "EUROPE" --role-name "Agent::2nd-Lvl::AMERICA" --permission "move_into"'

sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "" --role-name "Agent::3rd-Lvl::WORLDWIDE" --permission "rw"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "DACH" --role-name "Agent::3rd-Lvl::WORLDWIDE" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "BENELUX" --role-name "Agent::3rd-Lvl::WORLDWIDE" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "LATAM" --role-name "Agent::3rd-Lvl::WORLDWIDE" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "NAM" --role-name "Agent::3rd-Lvl::WORLDWIDE" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "AMERICA" --role-name "Agent::3rd-Lvl::WORLDWIDE" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "EUROPE" --role-name "Agent::3rd-Lvl::WORLDWIDE" --permission "ro" --permission "move_into" --permission "create"'

#update queues
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Queue::Add --ID "7" --name "DACH" --group "DACH" --system-address-name "support.digicam@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Queue::Add --ID "8" --name "BENELUX" --group "BENELUX" --system-address-name "support.digicam@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Queue::Add --ID "9" --name "LATAM" --group "LATAM" --system-address-name "support.digicam@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Queue::Update --ID "6" --name "NAM" --group "NAM" --system-address-name "support.digicam@firma.de"'

#add queues
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "2nd Level EUROPE" --group "EUROPE" --system-address-name "support@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "2nd Level AMERICA" --group "AMERICA" --system-address-name "support@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "3rd Level WORLDWIDE" --group "WORLDWIDE" --system-address-name "support@firma.de"'

#add agents
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agentDACH@firma.de" --first-name Agent --last-name DACH --email-address "agentDACH@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agentBENELUX@firma.de" --first-name Agent --last-name BENELUX --email-address "agentBENELUX@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agentLATAM@firma.de" --first-name Agent --last-name LATAM --email-address "agentLATAM@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agentNAM@firma.de" --first-name Agent --last-name NAM --email-address "agentNAM@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agentEUROPE@firma.de" --first-name Agent --last-name EUROPE --email-address "agentEUROPE@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agentAMERICA@firma.de" --first-name Agent --last-name AMERICA --email-address "agentAMERICA@firma.de" --password "otrs"'

#link agents-role
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agentDACH@firma.de" --role-name "Agent::1st-Lvl::DACH"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agentBENELUX@firma.de" --role-name "Agent::1st-Lvl::BENELUX"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agentLATAM@firma.de" --role-name "Agent::1st-Lvl::LATAM"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agentNAM@firma.de" --role-name "Agent::1st-Lvl::NAM"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agentEUROPE@firma.de" --role-name "Agent::2nd-Lvl::EUROPE"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agentAMERICA@firma.de" --role-name "Agent::1st-Lvl::AMERICA"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent@firma.de" --role-name "Agent::3rd-Lvl::WORLDWIDE"'

#add generic agent
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "load step 05" --file /s4.yml'


