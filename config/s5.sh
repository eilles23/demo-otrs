#!/bin/bash
#add: queues, groups, escalation

sudo docker exec demootrs_otrs su - otrs -c 'cp /opt/otrs/Kernel/scripts/navbar.xml /opt/otrs/Kernel/Config/Files/XML/DemoOTRS.xml'
sudo docker exec demootrs_otrs sed -i 's/RUNTO/Step 6/' /opt/otrs/Kernel/Config/Files/XML/DemoOTRS.xml 
sudo docker exec demootrs_otrs sed -i 's/TOLINK/load%20step%2006/' /opt/otrs/Kernel/Config/Files/XML/DemoOTRS.xml
sudo docker exec demootrs_otrs sed -i 's/HEREIAM/Step 5/' /opt/otrs/Kernel/Config/Files/XML/DemoOTRS.xml #current step
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Maint::Config::Rebuild'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Maint::Cache::Delete'

sudo docker exec demootrs_otrs cp /opt/otrs/Kernel/scripts/s5/*.pm /opt/otrs/Kernel/Config.pm

#add faq article
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::FAQ::Import "/opt/otrs/Kernel/System/Console/Command/Custom/Admin/FAQ/c02s02.csv"'

#add groups     digicam
#add sub group  digicam::DACH
#add sub group  digicam::BENELUX
#add sub group  digicam::LATAM
#add sub group  digicam::NAM
#add sub group  digicam::2ndLvl
#add sub group  digicam::3rdLvl
#add groups     medoptics
#add sub group  medoptics::DACH
#add sub group  medoptics::BENELUX
#add sub group  medoptics::LATAM
#add sub group  medoptics::NAM
#add sub group  medoptics::2ndLvl
#add sub group  medoptics::3rdLvl
#add groups     intelliEyes
#add sub group  intelliEyes::DACH
#add sub group  intelliEyes::BENELUX
#add sub group  intelliEyes::LATAM
#add sub group  intelliEyes::NAM
#add sub group  intelliEyes::2ndLvl
#add sub group  intelliEyes::3rdLvl
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "digicam"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "digicam::DACH"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "digicam::BENELUX"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "digicam::EUROPE"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "digicamAMERICA"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "digicamWOLRDWIDE"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "digicam::2ndLvl"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "digicam::3rdLvl"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "medoptics"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "medoptics::DACH"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "medoptics::BENELUX"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "medoptics::EUROPE"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "medoptics::AMERICA"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "medoptics::WOLRDWIDE"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "medoptics::2ndLvl"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "medoptics::3rdLvl"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "intelliEyes"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "intelliEyes::DACH"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "intelliEyes::BENELUX"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "intelliEyes::EUROPE"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "intelliEyes::AMERICA"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "intelliEyes::WOLRDWIDE"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "intelliEyes::2ndLvl"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "intelliEyes::3rdLvl"'

#add role       IntelliEyes::1st-Lvl::DACH,BENELUX,LATAM,NAM
#add role       IntelliEyes::2nd-Lvl::EUROPE
#add role       IntelliEyes::2nd-Lvl::AMERICA
#add role       IntelliEyes::3rd-Lvl::WORLDWIDE
#add role       Digicam::1st-Lvl::DACH,BENELUX,LATAM,NAM
#add role       Digicam::2nd-Lvl::EUROPE
#add role       Digicam::2nd-Lvl::AMERICA
#add role       Digicam::3rd-Lvl::WORLDWIDE
#add role       Medoptics::1st-Lvl::DACH,BENELUX,LATAM,NAM
#add role       Medoptic::2nd-Lvl::EUROPE
#add role       Medoptic::2nd-Lvl::AMERICA
#add role       Medoptic::3rd-Lvl::WORLDWIDE
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "IntelliEyes::General"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "IntelliEyes::1st-Lvl::DACH"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "IntelliEyes::1st-Lvl::BENELUX"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "IntelliEyes::1st-Lvl::LATAM"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "IntelliEyes::1st-Lvl::NAM"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "IntelliEyes::2nd-Lvl::EUROPE"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "IntelliEyes::2nd-Lvl::AMERICA"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "IntelliEyes::3rd-Lvl::WORLDWIDE"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Digicam::General"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Digicam::1st-Lvl::DACH"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Digicam::1st-Lvl::BENELUX"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Digicam::1st-Lvl::LATAM"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Digicam::1st-Lvl::NAM"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Digicam::2nd-Lvl::EUROPE"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Digicam::2nd-Lvl::AMERICA"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Digicam::3rd-Lvl::WORLDWIDE"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Medoptics::General"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Medoptics::1st-Lvl::DACH"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Medoptics::1st-Lvl::BENELUX"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Medoptics::1st-Lvl::LATAM"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Medoptics::1st-Lvl::NAM"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Medoptics::2nd-Lvl::EUROPE"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Medoptics::2nd-Lvl::AMERICA"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Medoptics::3rd-Lvl::WORLDWIDE"'

#link group-role
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "digicam::DACH" --role-name "Digicam::1st-Lvl::DACH" --permission "rw"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "digicam::EUROPE" --role-name "Digicam::2nd-Lvl::EUROPE" --permission "rw"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "digicam::AMERICA" --role-name "Digicam::2nd-Lvl::AMERICA" --permission "rw"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "digicam::AMERICA" --role-name "Digicam::2nd-Lvl::EUROPE" --permission "move_into"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "digicam::EUROPE" --role-name "Digicam::2nd-Lvl::AMERICA" --permission "move_into"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "digicam::WORLDWIDE" --role-name "Digicam::2nd-Lvl::EUROPE" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "digicam::WORLDWIDE" --role-name "Digicam::2nd-Lvl::AMERICA" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "digicam::DACH" --role-name "Digicam::2nd-Lvl::EUROPE" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "digicam::DACH" --role-name "Digicam::2nd-Lvl::AMERICA" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "digicam::BENELUX" --role-name "Digicam::2nd-Lvl::EUROPE" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "digicam::BENELUX" --role-name "Digicam::2nd-Lvl::AMERICA" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "digicam::LATAM" --role-name "Digicam::2nd-Lvl::EUROPE" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "digicam::LATAM" --role-name "Digicam::2nd-Lvl::AMERICA" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "digicam::NAM" --role-name "Digicam::2nd-Lvl::EUROPE" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "digicam::NAM" --role-name "Digicam::2nd-Lvl::AMERICA" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "digicam::WORLDWIDE" --role-name "Digicam::3rd-Lvl::WORLDWIDE" --permission "rw"'


sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "medoptics::DACH" --role-name "Medoptics::1st-Lvl::DACH" --permission "rw"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "medoptics::EUROPE" --role-name "Medoptics::2nd-Lvl::EUROPE" --permission "rw"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "medoptics::AMERICA" --role-name "Medoptics::2nd-Lvl::AMERICA" --permission "rw"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "medoptics::AMERICA" --role-name "Medoptics::2nd-Lvl::EUROPE" --permission "move_into"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "medoptics::EUROPE" --role-name "Medoptics::2nd-Lvl::AMERICA" --permission "move_into"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "medoptics::WORLDWIDE" --role-name "Medoptics::2nd-Lvl::EUROPE" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "medoptics::WORLDWIDE" --role-name "Medoptics::2nd-Lvl::AMERICA" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "medoptics::DACH" --role-name "Medoptics::2nd-Lvl::EUROPE" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "medoptics::DACH" --role-name "Medoptics::2nd-Lvl::AMERICA" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "medoptics::BENELUX" --role-name "Medoptics::2nd-Lvl::EUROPE" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "medoptics::BENELUX" --role-name "Medoptics::2nd-Lvl::AMERICA" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "medoptics::LATAM" --role-name "Medoptics::2nd-Lvl::EUROPE" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "medoptics::LATAM" --role-name "Medoptics::2nd-Lvl::AMERICA" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "medoptics::NAM" --role-name "Medoptics::2nd-Lvl::EUROPE" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "medoptics::NAM" --role-name "Medoptics::2nd-Lvl::AMERICA" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "medoptics::WORLDWIDE" --role-name "Medoptics::3rd-Lvl::WORLDWIDE" --permission "rw"'


sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "intelliEyes::DACH" --role-name "IntelliEyes::1st-Lvl::DACH" --permission "rw"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "intelliEyes::EUROPE" --role-name "IntelliEyes::2nd-Lvl::EUROPE" --permission "rw"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "intelliEyes::AMERICA" --role-name "IntelliEyes::2nd-Lvl::AMERICA" --permission "rw"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "intelliEyes::AMERICA" --role-name "IntelliEyes::2nd-Lvl::EUROPE" --permission "move_into"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "intelliEyes::EUROPE" --role-name "IntelliEyes::2nd-Lvl::AMERICA" --permission "move_into"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "intelliEyes::WORLDWIDE" --role-name "IntelliEyes::2nd-Lvl::EUROPE" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "intelliEyes::WORLDWIDE" --role-name "IntelliEyes::2nd-Lvl::AMERICA" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "intelliEyes::DACH" --role-name "IntelliEyes::2nd-Lvl::EUROPE" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "intelliEyes::DACH" --role-name "IntelliEyes::2nd-Lvl::AMERICA" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "intelliEyes::BENELUX" --role-name "IntelliEyes::2nd-Lvl::EUROPE" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "intelliEyes::BENELUX" --role-name "IntelliEyes::2nd-Lvl::AMERICA" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "intelliEyes::LATAM" --role-name "IntelliEyes::2nd-Lvl::EUROPE" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "intelliEyes::LATAM" --role-name "IntelliEyes::2nd-Lvl::AMERICA" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "intelliEyes::NAM" --role-name "IntelliEyes::2nd-Lvl::EUROPE" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "intelliEyes::NAM" --role-name "IntelliEyes::2nd-Lvl::AMERICA" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "intelliEyes::WORLDWIDE" --role-name "IntelliEyes::3rd-Lvl::WORLDWIDE" --permission "rw"'


#add system addresses
sudo docker exec demootrs_mail add-account support.digicam@firma.de otrs 
sudo docker exec demootrs_mail add-account support.medoptics@firma.de otrs 
sudo docker exec demootrs_mail add-account support.intellieyes@firma.de otrs 
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::SystemAddress::Add --name "Digicam Support" --email-address support.digicam@firma.de --queue-name "Postmaster"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::SystemAddress::Add --name "Medoptics Support" --email-address support.medoptics@firma.de --queue-name "Postmaster"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::SystemAddress::Add --name "IntelliEyes Support" --email-address support.intellieyes@firma.de --queue-name "Postmaster"'

#update queues
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Queue::Update --ID "6" --name "Digicam" --group "digicam" --system-address-name "support.digicam@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Queue::Add --ID "7" --name "Digicam::DACH" --group "digicam::DACH" --system-address-name "support.digicam@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Queue::Add --ID "8" --name "Digicam::BENELUX" --group "digicam::BENELUX" --system-address-name "support.digicam@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Queue::Add --ID "9" --name "Digicam::LATAM" --group "digicam::LATAM" --system-address-name "support.digicam@firma.de"'

#add queues
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Digicam::NAM" --group "digicam::NAM" --system-address-name "support.digicam@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Digicam::EUROPE" --group "digicam::EUROPE" --system-address-name "support.digicam@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Digicam::AMERICA" --group "digicam::AMERICA" --system-address-name "support.digicam@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Digicam::WORLDWIDE" --group "digicam::WORLDWIDE" --system-address-name "support.digicam@firma.de"'

sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Medoptics" --group "medoptics" --system-address-name "support.medoptics@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Medoptics::DACH" --group "medoptics::DACH" --system-address-name "support.medoptics@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Medoptics::BENELUX" --group "medoptics::BENELUX" --system-address-name "support.medoptics@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Medoptics::LATAM" --group "medoptics::LATAM" --system-address-name "support.medoptics@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Medoptics::NAM" --group "medoptics::NAM" --system-address-name "support.medoptics@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Medoptics::EUROPE" --group "medoptics::EUROPE" --system-address-name "support.medoptics@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Medoptics::AMERICA" --group "medoptics::AMERICA" --system-address-name "support.medoptics@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Medoptics::WORLDWIDE" --group "medoptics::WORLDWIDE" --system-address-name "support.medoptics@firma.de"'

sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "IntelliEyes" --group "intelliEyes" --system-address-name "support.intellieyes@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "IntelliEyes::DACH" --group "intelliEyes::DACH" --system-address-name "support.intellieyes@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "IntelliEyes::BENELUX" --group "intelliEyes::BENELUX" --system-address-name "support.intellieyes@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "IntelliEyes::LATAM" --group "intelliEyes::LATAM" --system-address-name "support.intellieyes@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "IntelliEyes::NAM" --group "intelliEyes::NAM" --system-address-name "support.intellieyes@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "IntelliEyes::EUROPE" --group "intelliEyes::EUROPE" --system-address-name "support.intellieyes@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "IntelliEyes::AMERICA" --group "intelliEyes::AMERICA" --system-address-name "support.intellieyes@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "IntelliEyes::WORLDWIDE" --group "intelliEyes::WORLDWIDE" --system-address-name "support.intellieyes@firma.de"'



#add mail accounts
sudo docker exec demootrs_mail add-account agent.digicamDACH@firma.de otrs 
sudo docker exec demootrs_mail add-account agent.digicamBENELUX@firma.de otrs 
sudo docker exec demootrs_mail add-account agent.digicamLATAM@firma.de otrs 
sudo docker exec demootrs_mail add-account agent.digicamNAM@firma.de otrs 
sudo docker exec demootrs_mail add-account agent.digicamEUROPE@firma.de otrs 
sudo docker exec demootrs_mail add-account agent.digicamAMERICA@firma.de otrs 
sudo docker exec demootrs_mail add-account agent.digicamWORLDWIDE@firma.de otrs 

sudo docker exec demootrs_mail add-account kunde.digi@privat.de otrs 
sudo docker exec demootrs_mail add-account digi.dritt@unternehmen.de otrs 
sudo docker exec demootrs_mail add-account client.digi@prive.be otrs 
sudo docker exec demootrs_mail add-account digi.troisieme@enterprise.be otrs 
sudo docker exec demootrs_mail add-account customer.digi@private.com otrs 
sudo docker exec demootrs_mail add-account digi.thirdparty@company.com otrs 
sudo docker exec demootrs_mail add-account cliente.digi@privada.br otrs 
sudo docker exec demootrs_mail add-account digi.terceiro@companhia.br otrs 

sudo docker exec demootrs_mail add-account agent.intelliEyesDACH@firma.de otrs 
sudo docker exec demootrs_mail add-account agent.intelliEyesBENELUX@firma.de otrs 
sudo docker exec demootrs_mail add-account agent.intelliEyesLATAM@firma.de otrs 
sudo docker exec demootrs_mail add-account agent.intelliEyesNAM@firma.de otrs 
sudo docker exec demootrs_mail add-account agent.intelliEyesEUROPE@firma.de otrs 
sudo docker exec demootrs_mail add-account agent.intelliEyesAMERICA@firma.de otrs 
sudo docker exec demootrs_mail add-account agent.intelliEyesWORLDWIDE@firma.de otrs 

sudo docker exec demootrs_mail add-account kunde.intelli@privat.de otrs 
sudo docker exec demootrs_mail add-account intelli.dritt@unternehmen.de otrs 
sudo docker exec demootrs_mail add-account client.intelli@prive.be otrs 
sudo docker exec demootrs_mail add-account intelli.troisieme@enterprise.be otrs 
sudo docker exec demootrs_mail add-account customer.intelli@private.com otrs 
sudo docker exec demootrs_mail add-account intelli.thirdparty@company.com otrs 
sudo docker exec demootrs_mail add-account cliente.intelli@privada.br otrs 
sudo docker exec demootrs_mail add-account intelli.terceiro@companhia.br otrs 

sudo docker exec demootrs_mail add-account agent.medopticsDACH@firma.de otrs 
sudo docker exec demootrs_mail add-account agent.medopticsBENELUX@firma.de otrs 
sudo docker exec demootrs_mail add-account agent.medopticsLATAM@firma.de otrs 
sudo docker exec demootrs_mail add-account agent.medopticsNAM@firma.de otrs 
sudo docker exec demootrs_mail add-account agent.medopticsEUROPE@firma.de otrs 
sudo docker exec demootrs_mail add-account agent.medopticsAMERICA@firma.de otrs 
sudo docker exec demootrs_mail add-account agent.medopticsWORLDWIDE@firma.de otrs 

sudo docker exec demootrs_mail add-account kunde.med@privat.de otrs 
sudo docker exec demootrs_mail add-account med.dritt@unternehmen.de otrs 
sudo docker exec demootrs_mail add-account client.med@prive.be otrs 
sudo docker exec demootrs_mail add-account med.troisieme@enterprise.be otrs 
sudo docker exec demootrs_mail add-account customer.med@private.com otrs 
sudo docker exec demootrs_mail add-account med.thirdparty@company.com otrs 
sudo docker exec demootrs_mail add-account cliente.med@privada.br otrs 
sudo docker exec demootrs_mail add-account med.terceiro@companhia.br otrs 

#add agents 
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent.medopticsDACH@firma.de" --first-name Medoptics --last-name DACH --email-address "agent.medopticsDACH@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent.medopticsBENELUX@firma.de" --first-name Medoptics --last-name BENELUX --email-address "agent.medopticsBENELUX@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent.medopticsLATAM@firma.de" --first-name Medoptics --last-name LATAM --email-address "agent.medopticsLATAM@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent.medopticsNAM@firma.de" --first-name Medoptics --last-name NAM --email-address "agent.medopticsNAM@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent.medopticsEUROPE@firma.de" --first-name Medoptics --last-name EUROPE --email-address "agent.medopticsEUROPE@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent.medopticsAMERICA@firma.de" --first-name Medoptics --last-name AMERICA --email-address "agent.medopticsAMERICA@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent.medopticsWORLDWIDE@firma.de" --first-name Medoptics --last-name WORLDWIDE --email-address "agent.medopticsWORLDWIDE@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent.intelliEyesDACH@firma.de" --first-name intelliEyes --last-name DACH --email-address "agent.intelliEyesDACH@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent.intelliEyesBENELUC@firma.de" --first-name intelliEyes --last-name BENELUX --email-address "agent.intelliEyesBENELUX@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent.intelliEyesLATAM@firma.de" --first-name intelliEyes --last-name LATAM --email-address "agent.intelliEyesLATAM@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent.intelliEyesNAM@firma.de" --first-name intelliEyes --last-name NAM --email-address "agent.intelliEyesNAM@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent.intelliEyesEUROPE@firma.de" --first-name intelliEyes --last-name EUROPE --email-address "agent.intelliEyesEUROPE@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent.intelliEyesAMERICA@firma.de" --first-name intelliEyes --last-name AMERICA --email-address "agent.intelliEyesAMERICA@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent.intelliEyesWORLDWIDE@firma.de" --first-name intelliEyes --last-name WORLDWIDE --email-address "agent.intelliEyesWORLDWIDE@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent.digicamDACH@firma.de" --first-name digicam --last-name DACH --email-address "agent.digicamDACH@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent.digicamBENELUX@firma.de" --first-name digicam --last-name BENELUX --email-address "agent.digicamBENELUX@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent.digicamLATAM@firma.de" --first-name digicam --last-name LATAM --email-address "agent.digicamLATAM@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent.digicamNAM@firma.de" --first-name digicam --last-name NAM --email-address "agent.digicamNAM@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent.digicamEUROPE@firma.de" --first-name digicam --last-name EUROPE --email-address "agent.digicamEUROPE@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent.digicamAMERICA@firma.de" --first-name digicam --last-name AMERICA --email-address "agent.digicamAMERICA@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent.digicamWORLDWIDE@firma.de" --first-name digicam --last-name WORLDWIDE --email-address "agent.digicamWORLDWIDE@firma.de" --password "otrs"'

#Link agents-role
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent.digicamDACH@firma.de" --role-name "Digicam::1st-Lvl::DACH"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent.digicamBENELUX@firma.de" --role-name "Digicam::1st-Lvl::BENELUX"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent.digicamLATAM@firma.de" --role-name "Digicam::1st-Lvl::LATAM"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent.digicamNAM@firma.de" --role-name "Digicam::1st-Lvl::NAM"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent.digicamEUROPE@firma.de" --role-name "Digicam::2nd-Lvl::EUROPE"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent.digicamAMERICA@firma.de" --role-name "Digicam::1st-Lvl::AMERICA"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent.digicam@firma.de" --role-name "Digicam::3rd-Lvl::WORLDWIDE"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent.medopticsDACH@firma.de" --role-name "Medoptics::1st-Lvl::DACH"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent.medopticsBENELUX@firma.de" --role-name "Medoptics::1st-Lvl::BENELUX"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent.medopticsLATAM@firma.de" --role-name "Medoptics::1st-Lvl::LATAM"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent.medopticsNAM@firma.de" --role-name "Medoptics::1st-Lvl::NAM"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent.medopticsEUROPE@firma.de" --role-name "Medoptics::2nd-Lvl::EUROPE"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent.medopticsAMERICA@firma.de" --role-name "Medoptics::1st-Lvl::AMERICA"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent.medoptics@firma.de" --role-name "Medoptics::3rd-Lvl::WORLDWIDE"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent.intelliEyesDACH@firma.de" --role-name "IntelliEyes::1st-Lvl::DACH"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent.intelliEyesBENELUX@firma.de" --role-name "IntelliEyes::1st-Lvl::BENELUX"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent.intelliEyesLATAM@firma.de" --role-name "IntelliEyes::1st-Lvl::LATAM"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent.intelliEyesNAM@firma.de" --role-name "IntelliEyes::1st-Lvl::NAM"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent.intelliEyesEUROPE@firma.de" --role-name "IntelliEyes::2nd-Lvl::EUROPE"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent.intelliEyesAMERICA@firma.de" --role-name "IntelliEyes::1st-Lvl::AMERICA"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent.intelliEyes@firma.de" --role-name "IntelliEyes::3rd-Lvl::WORLDWIDE"'

#add customer
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "Digicam Private Customers" --customer-id "110"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "Digicam <Unternehmen>" --customer-id "111"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "Digicam <Enterprise>" --customer-id "112"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "Digicam <Company>" --customer-id "113"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "Digicam <Companhia>" --customer-id "114"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "Medoptics Private Customers" --customer-id "120"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "Medoptics <Unternehmen>" --customer-id "121"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "Medoptics <Enterprise>" --customer-id "122"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "Medoptics <Company>" --customer-id "123"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "Medoptics <Companhia>" --customer-id "124"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "IntelliEyes Private Customers" --customer-id "130"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "IntelliEyes <Unternehmen>" --customer-id "131"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "IntelliEyes <Enterprise>" --customer-id "132"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "IntelliEyes <Company>" --customer-id "133"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "IntelliEyes <Companhia>" --customer-id "134"'
#add customerusers
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "kunde.digi@privat.de" --first-name Privat --last-name DigiKunde --email-address "kunde.digi@privat.de" --password "otrs" --customer-id "110"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "client.digi@prive.be" --first-name Prive --last-name DigiClient --email-address "client.digi@prive.be" --password "otrs" --customer-id "110"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "customer.digi@private.com" --first-name Private --last-name DigiCustomer --email-address "customer.digi@private.com" --password "otrs" --customer-id "110"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "cliente.digi@privada.br" --first-name Privadamente --last-name DigiCliente --email-address "cliente.digi@privada.br" --password "otrs" --customer-id "110"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "kunde.med@privat.de" --first-name Privat --last-name MedKunde --email-address "kunde.med@privat.de" --password "otrs" --customer-id "120"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "client.med@prive.be" --first-name Prive --last-name MedClient --email-address "client.med@prive.be" --password "otrs" --customer-id "120"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "customer.med@private.com" --first-name Private --last-name MedCustomer --email-address "customer.med@private.com" --password "otrs" --customer-id "120"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "cliente.med@privada.br" --first-name Privadamente --last-name MedCliente --email-address "cliente.med@privada.br" --password "otrs" --customer-id "120"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "kunde.intelli@privat.de" --first-name Privat --last-name IntelliKunde --email-address "kunde.intelli@privat.de" --password "otrs" --customer-id "130"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "client.intelli@prive.be" --first-name Prive --last-name IntelliClient --email-address "client.intelli@prive.be" --password "otrs" --customer-id "130"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "customer.intelli@private.com" --first-name Private --last-name IntelliCustomer --email-address "customer.intelli@private.com" --password "otrs" --customer-id "130"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "cliente.intelli@privada.br" --first-name Privadamente --last-name IntelliCliente --email-address "cliente.intelli@privada.br" --password "otrs" --customer-id "130"'

sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "digi.dritt@unternehmen.de" --first-name Dritt --last-name DigiUnternehmen --email-address "digi.dritt@unternehmen.de" --password "otrs" --customer-id "111"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "digi.troisieme@enterprise.be" --first-name Troisieme --last-name DigiEnterprise --email-address "digi.troisieme@enterprise.be" --password "otrs" --customer-id "112"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "digi.thirdparty@company.com" --first-name Thirdparty --last-name DigiCompany --email-address "digi.thirdparty@company.com" --password "otrs" --customer-id "113"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "digi.terceiro@companhia.br" --first-name Terceiro --last-name DigiCompanhia --email-address "digi.terceiro@companhia.br" --password "otrs" --customer-id "114"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "med.dritt@unternehmen.de" --first-name Dritt --last-name MedUnternehmen --email-address "med.dritt@unternehmen.de" --password "otrs" --customer-id "121"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "med.troisieme@enterprise.be" --first-name Troisieme --last-name MedEnterprise --email-address "med.troisieme@enterprise.be" --password "otrs" --customer-id "122"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "med.thirdparty@company.com" --first-name Thirdparty --last-name MedCompany --email-address "med.thirdparty@company.com" --password "otrs" --customer-id "123"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "med.terceiro@companhia.br" --first-name Terceiro --last-name MedCompanhia --email-address "med.terceiro@companhia.br" --password "otrs" --customer-id "124"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "intelli.dritt@unternehmen.de" --first-name Dritt --last-name IntelliUnternehmen --email-address "intelli.dritt@unternehmen.de" --password "otrs" --customer-id "131"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "intelli.troisieme@enterprise.be" --first-name Troisieme --last-name IntelliEnterprise --email-address "intelli.troisieme@enterprise.be" --password "otrs" --customer-id "132"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "intelli.thirdparty@company.com" --first-name Thirdparty --last-name IntelliCompany --email-address "intelli.thirdparty@company.com" --password "otrs" --customer-id "133"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "intelli.terceiro@companhia.br" --first-name Terceiro --last-name IntelliCompanhia --email-address "intelli.terceiro@companhia.br" --password "otrs" --customer-id "134"'


#add dynamcfields
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name Market --label "Market" --type Text --file /DF_Text.yml'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name DIGImodelnr --label "Model Nr." --type Text --file /DF_Text.yml'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name DIGIserialnr --label "Serial Nr." --type Text --file /DF_Text.yml'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name DIGIwarranty --label "Still in warranty" --type Checkbox --file /DF_Checkbox.yml'

sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name MEDproductid --label "Product ID" --type Text --file /DF_Text.yml'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name MEDdevicetype --label "Device Type" --type Dropdown --file /MEDdevicetype.yml'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name MEDconectivity --label "Connectivity" --type Multiselect --file /MEDconnectivity.yml'

sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name INTELLIservice --label "Service" --type Dropdown --file /INTELLIservice.yml'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name INTELLIfeatures --label "Features" --type Multiselect --file /INTELLIfeatures.yml'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name INTELLIStartdate --label "Service Start Date" --type Date --file /DF_Date.yml'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name INTELLIDuration --label "Contract Duration" --type DateTime --file /DF_DateTime.yml'

#add acls
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file AAA_Default_New_Email-Ticket.yml'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file AAA_Default_New_Phone-Ticket.yml'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file AAA_Hide_all_markets.yml'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file AAM_digi_DACH.yml'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file AAM_digi_BENELUX.yml'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file AAM_digi_NAM.yml'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file AAM_digi_LATAM.yml'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file AAM_med_DACH.yml'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file AAM_med_BENELUX.yml'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file AAM_med_NAM.yml'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file AAM_med_LATAM.yml'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file AAM_intelli_DACH.yml'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file AAM_intelli_BENELUX.yml'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file AAM_intelli_NAM.yml'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file AAM_intelli_LATAM.yml'


#remove & add generic agent
 sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Delete --name "Move Incidents"'
  sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Delete --name "Move Service Requests"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "load step 06" --file /s5.yml'
