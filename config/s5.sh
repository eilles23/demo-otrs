#!/bin/bash
###add: queues, groups, escalation
#copy Config.pm
sudo docker exec demootrs_otrs cp /opt/otrs/Kernel/scripts/s5/s5.pm /opt/otrs/Kernel/Config.pm
#add faq article
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::FAQ::Import "/opt/otrs/Kernel/System/Console/Command/Custom/Admin/FAQ/s5.csv"'

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
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "digicam::LATAM"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "digicam::NAM"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "digicam::AMERICA"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "digicam::WORLDWIDE"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "digicam::2ndLvl"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "digicam::3rdLvl"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "medoptics"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "medoptics::DACH"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "medoptics::BENELUX"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "medoptics::LATAM"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "medoptics::NAM"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "medoptics::EUROPE"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "medoptics::AMERICA"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "medoptics::WORLDWIDE"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "medoptics::2ndLvl"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "medoptics::3rdLvl"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "intelliEyes"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "intelliEyes::DACH"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "intelliEyes::BENELUX"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "intelliEyes::LATAM"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "intelliEyes::NAM"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "intelliEyes::EUROPE"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "intelliEyes::AMERICA"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "intelliEyes::WORLDWIDE"'
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
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Queue::Update --ID "7" --name "Digicam DACH" --group "digicam::DACH" --system-address-name "support.digicam@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Queue::Update --ID "8" --name "Digicam BENELUX" --group "digicam::BENELUX" --system-address-name "support.digicam@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Queue::Update --ID "9" --name "Digicam LATAM" --group "digicam::LATAM" --system-address-name "support.digicam@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Queue::Update --ID "10" --name "Digicam NAM" --group "digicam::NAM" --system-address-name "support.digicam@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Queue::Update --ID "11" --name "Digicam EUROPE" --group "digicam::EUROPE" --system-address-name "support.digicam@firma.de"'

#add queues
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Digicam AMERICA" --group "digicam::AMERICA" --system-address-name "support.digicam@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Digicam WORLDWIDE" --group "digicam::WORLDWIDE" --system-address-name "support.digicam@firma.de"'

sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Medoptics" --group "medoptics" --system-address-name "support.medoptics@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Medoptics DACH" --group "medoptics::DACH" --system-address-name "support.medoptics@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Medoptics BENELUX" --group "medoptics::BENELUX" --system-address-name "support.medoptics@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Medoptics LATAM" --group "medoptics::LATAM" --system-address-name "support.medoptics@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Medoptics NAM" --group "medoptics::NAM" --system-address-name "support.medoptics@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Medoptics EUROPE" --group "medoptics::EUROPE" --system-address-name "support.medoptics@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Medoptics AMERICA" --group "medoptics::AMERICA" --system-address-name "support.medoptics@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Medoptics WORLDWIDE" --group "medoptics::WORLDWIDE" --system-address-name "support.medoptics@firma.de"'

sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "IntelliEyes" --group "intelliEyes" --system-address-name "support.intellieyes@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "IntelliEyes DACH" --group "intelliEyes::DACH" --system-address-name "support.intellieyes@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "IntelliEyes BENELUX" --group "intelliEyes::BENELUX" --system-address-name "support.intellieyes@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "IntelliEyes LATAM" --group "intelliEyes::LATAM" --system-address-name "support.intellieyes@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "IntelliEyes NAM" --group "intelliEyes::NAM" --system-address-name "support.intellieyes@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "IntelliEyes EUROPE" --group "intelliEyes::EUROPE" --system-address-name "support.intellieyes@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "IntelliEyes AMERICA" --group "intelliEyes::AMERICA" --system-address-name "support.intellieyes@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "IntelliEyes WORLDWIDE" --group "intelliEyes::WORLDWIDE" --system-address-name "support.intellieyes@firma.de"'


#add mail accounts
#add mail accounts
sudo docker exec demootrs_mail add-account agent-dach@digicam.firma.de otrs 
sudo docker exec demootrs_mail add-account agent-benelux@digicam.firma.de otrs 
sudo docker exec demootrs_mail add-account agent-latam@digicam.firma.de otrs 
sudo docker exec demootrs_mail add-account agent-nam@digicam.firma.de otrs 
sudo docker exec demootrs_mail add-account agent-europe@digicam.firma.de otrs 
sudo docker exec demootrs_mail add-account agent-america@digicam.firma.de otrs 
sudo docker exec demootrs_mail add-account agent-worldwide@digicam.firma.de otrs 

sudo docker exec demootrs_mail add-account digi-kunde@privat.de otrs 
sudo docker exec demootrs_mail add-account digi-dritt@unternehmen.de otrs 
sudo docker exec demootrs_mail add-account digi-client@prive.be otrs 
sudo docker exec demootrs_mail add-account digi-troisieme@enterprise.be otrs 
sudo docker exec demootrs_mail add-account digi-customer@private.com otrs 
sudo docker exec demootrs_mail add-account digi-thirdparty@company.com otrs 
sudo docker exec demootrs_mail add-account digi-cliente@privada.br otrs 
sudo docker exec demootrs_mail add-account digi-terceiro@companhia.br otrs 

sudo docker exec demootrs_mail add-account agent-dach@intellieyes.firma.de otrs 
sudo docker exec demootrs_mail add-account agent-benelux@intellieyes.firma.de otrs 
sudo docker exec demootrs_mail add-account agent-latam@intellieyes.firma.de otrs 
sudo docker exec demootrs_mail add-account agent-nam@intellieyes.firma.de otrs 
sudo docker exec demootrs_mail add-account agent-europe@intellieyes.firma.de otrs 
sudo docker exec demootrs_mail add-account agent-america@intellieyes.firma.de otrs 
sudo docker exec demootrs_mail add-account agent-worldwide@intellieyes.firma.de otrs 

sudo docker exec demootrs_mail add-account intelli-kunde@privat.de otrs 
sudo docker exec demootrs_mail add-account intelli-dritt@unternehmen.de otrs 
sudo docker exec demootrs_mail add-account intelli-client@prive.be otrs 
sudo docker exec demootrs_mail add-account intelli-troisieme@enterprise.be otrs 
sudo docker exec demootrs_mail add-account intelli-customer@private.com otrs 
sudo docker exec demootrs_mail add-account intelli-thirdparty@company.com otrs 
sudo docker exec demootrs_mail add-account intelli-cliente@privada.br otrs 
sudo docker exec demootrs_mail add-account intelli-terceiro@companhia.br otrs 

sudo docker exec demootrs_mail add-account agent-dach@medoptics.firma.de otrs 
sudo docker exec demootrs_mail add-account agent-benelux@medoptics.firma.de otrs 
sudo docker exec demootrs_mail add-account agent-latam@medoptics.firma.de otrs 
sudo docker exec demootrs_mail add-account agent-nam@medoptics.firma.de otrs 
sudo docker exec demootrs_mail add-account agent-europe@medoptics.firma.de otrs 
sudo docker exec demootrs_mail add-account agent-america@medoptics.firma.de otrs 
sudo docker exec demootrs_mail add-account agent-worldwide@medoptics.firma.de otrs 

sudo docker exec demootrs_mail add-account med-kunde@privat.de otrs 
sudo docker exec demootrs_mail add-account med-dritt@unternehmen.de otrs 
sudo docker exec demootrs_mail add-account med-client@prive.be otrs 
sudo docker exec demootrs_mail add-account med-troisieme@enterprise.be otrs 
sudo docker exec demootrs_mail add-account med-customer@private.com otrs 
sudo docker exec demootrs_mail add-account med-thirdparty@company.com otrs 
sudo docker exec demootrs_mail add-account med-cliente@privada.br otrs 
sudo docker exec demootrs_mail add-account med-terceiro@companhia.br otrs 

sudo rm -R ./volumes/mailbox/.sylpheed-2.0/
sudo cp -Rfa ./config/s5/mailbox ./volumes/mailbox/.sylpheed-2.0
sudo docker-compose restart mailclient

#add agents 
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-dach@medoptics.firma.de" --first-name Medoptics --last-name DACH --email-address "agent-dach@medoptics.firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-benelux@medoptics.firma.de" --first-name Medoptics --last-name BENELUX --email-address "agent-benelux@medoptics.firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-latam@medoptics.firma.de" --first-name Medoptics --last-name LATAM --email-address "agent-latam@medoptics.firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-nam@medoptics.firma.de" --first-name Medoptics --last-name NAM --email-address "agent-nam@medoptics.firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-europe@medoptics.firma.de" --first-name Medoptics --last-name EUROPE --email-address "agent-europe@medoptics.firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-america@medoptics.firma.de" --first-name Medoptics --last-name AMERICA --email-address "agent-america@medoptics.firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-worldwide@medoptics.firma.de" --first-name Medoptics --last-name WORLDWIDE --email-address "agent-worldwide@medoptics.firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-dach@intellieyes.firma.de" --first-name intelliEyes --last-name DACH --email-address "agent-dach@intellieyes.firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-benelux@intellieyes.firma.de" --first-name intelliEyes --last-name BENELUX --email-address "agent-benelux@intellieyes.firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-latam@intellieyes.firma.de" --first-name intelliEyes --last-name LATAM --email-address "agent-latam@intellieyes.firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-nam@intellieyes.firma.de" --first-name intelliEyes --last-name NAM --email-address "agent-nam@intellieyes.firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-europe@intellieyes.firma.de" --first-name intelliEyes --last-name EUROPE --email-address "agent-europe@intellieyes.firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-america@intellieyes.firma.de" --first-name intelliEyes --last-name AMERICA --email-address "agent-america@intellieyes.firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-worldwide@intellieyes.firma.de" --first-name intelliEyes --last-name WORLDWIDE --email-address "agent-worldwide@intellieyes.firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-dach@digicam.firma.de" --first-name digicam --last-name DACH --email-address "agent-dach@digicam.firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-benelux@digicam.firma.de" --first-name digicam --last-name BENELUX --email-address "agent-benelux@digicam.firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-latam@digicam.firma.de" --first-name digicam --last-name LATAM --email-address "agent-latam@digicam.firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-nam@digicam.firma.de" --first-name digicam --last-name NAM --email-address "agent-nam@digicam.firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-europe@digicam.firma.de" --first-name digicam --last-name EUROPE --email-address "agent-europe@digicam.firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-america@digicam.firma.de" --first-name digicam --last-name AMERICA --email-address "agent-america@digicam.firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-worldwide@digicam.firma.de" --first-name digicam --last-name WORLDWIDE --email-address "agent-worldwide@digicam.firma.de" --password "otrs"'

#Link agents-role
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-dach@digicam.firma.de" --role-name "Digicam::1st-Lvl::DACH"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-benelux@digicam.firma.de" --role-name "Digicam::1st-Lvl::BENELUX"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-latam@digicam.firma.de" --role-name "Digicam::1st-Lvl::LATAM"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-nam@digicam.firma.de" --role-name "Digicam::1st-Lvl::NAM"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-europe@digicam.firma.de" --role-name "Digicam::2nd-Lvl::EUROPE"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-america@digicam.firma.de" --role-name "Digicam::1st-Lvl::AMERICA"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent@digicam.firma.de" --role-name "Digicam::3rd-Lvl::WORLDWIDE"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-dach@medoptics.firma.de" --role-name "Medoptics::1st-Lvl::DACH"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-benelux@medoptics.firma.de" --role-name "Medoptics::1st-Lvl::BENELUX"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-latam@medoptics.firma.de" --role-name "Medoptics::1st-Lvl::LATAM"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-nam@medoptics.firma.de" --role-name "Medoptics::1st-Lvl::NAM"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-europe@medoptics.firma.de" --role-name "Medoptics::2nd-Lvl::EUROPE"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-america@medoptics.firma.de" --role-name "Medoptics::1st-Lvl::AMERICA"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent@medoptics.firma.de" --role-name "Medoptics::3rd-Lvl::WORLDWIDE"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-dach@intellieyes.firma.de" --role-name "IntelliEyes::1st-Lvl::DACH"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-benelux@intellieyes.firma.de" --role-name "IntelliEyes::1st-Lvl::BENELUX"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-latam@intellieyes.firma.de" --role-name "IntelliEyes::1st-Lvl::LATAM"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-nam@intellieyes.firma.de" --role-name "IntelliEyes::1st-Lvl::NAM"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-europe@intellieyes.firma.de" --role-name "IntelliEyes::2nd-Lvl::EUROPE"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-america@intellieyes.firma.de" --role-name "IntelliEyes::1st-Lvl::AMERICA"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent@intellieyes.firma.de" --role-name "IntelliEyes::3rd-Lvl::WORLDWIDE"'



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
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "digi-kunde@privat.de" --first-name Privat --last-name DigiKunde --email-address "digi-kunde@privat.de" --password "otrs" --customer-id "110"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "digi-client@prive.be" --first-name Prive --last-name DigiClient --email-address "digi-client@prive.be" --password "otrs" --customer-id "110"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "digi-customer@private.com" --first-name Private --last-name DigiCustomer --email-address "digi-customer@private.com" --password "otrs" --customer-id "110"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "digi-cliente@privada.br" --first-name Privadamente --last-name DigiCliente --email-address "digi-cliente@privada.br" --password "otrs" --customer-id "110"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "med-kunde@privat.de" --first-name Privat --last-name MedKunde --email-address "med-kunde@privat.de" --password "otrs" --customer-id "120"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "med-client@prive.be" --first-name Prive --last-name MedClient --email-address "med-client@prive.be" --password "otrs" --customer-id "120"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "med-customer@private.com" --first-name Private --last-name MedCustomer --email-address "med-customer@private.com" --password "otrs" --customer-id "120"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "med-cliente@privada.br" --first-name Privadamente --last-name MedCliente --email-address "med-cliente@privada.br" --password "otrs" --customer-id "120"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "intelli-kunde@privat.de" --first-name Privat --last-name IntelliKunde --email-address "intelli-kunde@privat.de" --password "otrs" --customer-id "130"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "intelli-client@prive.be" --first-name Prive --last-name IntelliClient --email-address "intelli-client@prive.be" --password "otrs" --customer-id "130"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "intelli-customer@private.com" --first-name Private --last-name IntelliCustomer --email-address "intelli-customer@private.com" --password "otrs" --customer-id "130"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "intelli-cliente@privada.br" --first-name Privadamente --last-name IntelliCliente --email-address "intelli-cliente@privada.br" --password "otrs" --customer-id "130"'

sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "digi-dritt@unternehmen.de" --first-name Dritt --last-name DigiUnternehmen --email-address "digi-dritt@unternehmen.de" --password "otrs" --customer-id "111"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "digi-troisieme@enterprise.be" --first-name Troisieme --last-name DigiEnterprise --email-address "digi-troisieme@enterprise.be" --password "otrs" --customer-id "112"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "digi-thirdparty@company.com" --first-name Thirdparty --last-name DigiCompany --email-address "digi-thirdparty@company.com" --password "otrs" --customer-id "113"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "digi-terceiro@companhia.br" --first-name Terceiro --last-name DigiCompanhia --email-address "digi-terceiro@companhia.br" --password "otrs" --customer-id "114"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "med-dritt@unternehmen.de" --first-name Dritt --last-name MedUnternehmen --email-address "med-dritt@unternehmen.de" --password "otrs" --customer-id "121"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "med-troisieme@enterprise.be" --first-name Troisieme --last-name MedEnterprise --email-address "med-troisieme@enterprise.be" --password "otrs" --customer-id "122"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "med-thirdparty@company.com" --first-name Thirdparty --last-name MedCompany --email-address "med-thirdparty@company.com" --password "otrs" --customer-id "123"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "med-terceiro@companhia.br" --first-name Terceiro --last-name MedCompanhia --email-address "med-terceiro@companhia.br" --password "otrs" --customer-id "124"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "intelli-dritt@unternehmen.de" --first-name Dritt --last-name IntelliUnternehmen --email-address "intelli-dritt@unternehmen.de" --password "otrs" --customer-id "131"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "intelli-troisieme@enterprise.be" --first-name Troisieme --last-name IntelliEnterprise --email-address "intelli-troisieme@enterprise.be" --password "otrs" --customer-id "132"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "intelli-thirdparty@company.com" --first-name Thirdparty --last-name IntelliCompany --email-address "intelli-thirdparty@company.com" --password "otrs" --customer-id "133"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "intelli-terceiro@companhia.br" --first-name Terceiro --last-name IntelliCompanhia --email-address "intelli-terceiro@companhia.br" --password "otrs" --customer-id "134"'


#add dynamcfields
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Update --name Market --label "Market" --type Dropdown --file Market.yml --path "/opt/otrs/Kernel/scripts/s5/dynamicfield"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name Description --label "Description" --type "TextArea" --file /DF_Textarea.yml'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name Escalate --label "Escalate" --type Text --file /DF_Text.yml '

sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name DIGIproduct --label "Product" --type Dropdown --file DIGIproduct.yml --path "/opt/otrs/Kernel/scripts/s5/dynamicfield"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name DIGIrequestApproval --label "Verification" --type Dropdown --file DIGIrequestApproval.yml --path "/opt/otrs/Kernel/scripts/s5/dynamicfield"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name DIGIorderNumber --label "Order Nr." --type Text --file /DF_Text.yml '
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name DIGIinvoiceNumber --label "Invoice Nr." --type Text --file /DF_Text.yml '
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name DIGIorderApproval --label "Verification" --type Dropdown --file DIGIorderApproval.yml --path "/opt/otrs/Kernel/scripts/s5/dynamicfield"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name DIGIdeliveryApproval --label "Verification" --type Dropdown --file DIGIdeliveryApproval.yml --path "/opt/otrs/Kernel/scripts/s5/dynamicfield"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name DIGIdeliveryAddress --label "Shipping Address" --type "TextArea" --file /DF_Textarea.yml'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name DIGIdeliveryTracking --label "Tracking Nr." --type Text --file /DF_Text.yml '
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name DIGIdeliveryDuration --label "Estimated processing time" --type Date --file /DF_Date.yml'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name DIGIdeliveryTime --label "Estimated shipping time" --type Date --file /DF_Date.yml'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name DIGIinprogress --label "Tracking Nr." --type Text --file /DF_Text.yml '
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name DIGIpacked --label "Tracking Nr." --type Text --file /DF_Text.yml '
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name DIGIsent --label "Tracking Nr." --type Text --file /DF_Text.yml '
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name DIGIdeliveryTracking --label "Tracking Nr." --type Text --file /DF_Text.yml '

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


#add autoresponse
docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Add --name "Digicam reply" --subject "Re: <OTRS_TICKET_Title> - Ticket received" --response "Dear &lt;OTRS_CUSTOMER_REALNAME&gt;,<br/><br/>thank you very much for your message.&nbsp;<br/>We have received your request. Your case number is <a href=&lt;OTRS_CONFIG_HttpType&gt;://&lt;OTRS_CONFIG_FQDN&gt;/&lt;OTRS_CONFIG_ScriptAlias&gt;customer.pl?Action=CustomerTicketZoom;TicketNumber=&lt;OTRS_TICKET_TicketNumber&gt;>&lt;OTRS_TICKET_TicketNumber&gt;</a>.<br />We will contact you when your request is complete or we need any more information.<br/><br/>Kind regards,<br/>Digicam Support - Mayer GmbH" --system-address-name  "support.digicam@firma.de" --type "1"'
docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Add --name "Digicam reject/new ticket created" --subject "Re: <OTRS_TICKET_Title> - Ticket received" --response "Dear &lt;OTRS_CUSTOMER_REALNAME&gt;,<br/><br/>thank you very much for your message.&nbsp;<br/>Your previous ticket is closed.<br /><br/>--  A new ticket has been created for you. --<br/><br/>We have received your request. Your new case number is <a href=&lt;OTRS_CONFIG_HttpType&gt;://&lt;OTRS_CONFIG_FQDN&gt;/&lt;OTRS_CONFIG_ScriptAlias&gt;customer.pl?Action=CustomerTicketZoom;TicketNumber=&lt;OTRS_TICKET_TicketNumber&gt;>&lt;OTRS_TICKET_TicketNumber&gt;</a><br/><br/>Kind regards,<br/>Digicam Support - Mayer GmbH" --system-address-name  "support.digicam@firma.de" --type "4"'
docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Add --name "Digicam reject" --subject "Re: <OTRS_TICKET_Title> - Ticket rejected" --response "Dear &lt;OTRS_CUSTOMER_REALNAME&gt;,<br/><br/>thank you very much for your message.&nbsp;<br/>Your previous ticket is closed.<br /><br/>-- Your follow-up has been rejected. --<br/><br/>Please create a new ticket.<br/><br/>Kind regards,<br/>Digicam Support - Mayer GmbH" --system-address-name  "support.digicam@firma.de" --type "2"'
docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Add --name "Digicam follow-up" --subject "Re: <OTRS_TICKET_Title> - Ticket follow-up received" --response "Dear &lt;OTRS_CUSTOMER_REALNAME&gt;,<br/><br/>thank you very much for your follow-up message.&nbsp;<br/>We will contact you when your request is complete or we need any more information.<br/><br/>Kind regards,<br/>Digicam Support - Mayer GmbH" --system-address-name  "support.digicam@firma.de" --type "3"'
docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Add --name "Medoptics reply" --subject "Re: <OTRS_TICKET_Title> - Ticket received" --response "Dear &lt;OTRS_CUSTOMER_REALNAME&gt;,<br/><br/>thank you very much for your message.&nbsp;<br/>We have received your request. Your case number is <a href=&lt;OTRS_CONFIG_HttpType&gt;://&lt;OTRS_CONFIG_FQDN&gt;/&lt;OTRS_CONFIG_ScriptAlias&gt;customer.pl?Action=CustomerTicketZoom;TicketNumber=&lt;OTRS_TICKET_TicketNumber&gt;>&lt;OTRS_TICKET_TicketNumber&gt;</a>.<br />We will contact you when your request is complete or we need any more information.<br/><br/>Kind regards,<br/>Medoptics Support - Mayer GmbH" --system-address-name  "support.medoptics@firma.de" --type "1"'
docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Add --name "Medoptics reject/new ticket created" --subject "Re: <OTRS_TICKET_Title> - Ticket received" --response "Dear &lt;OTRS_CUSTOMER_REALNAME&gt;,<br/><br/>thank you very much for your message.&nbsp;<br/>Your previous ticket is closed.<br /><br/>--  A new ticket has been created for you. --<br/><br/>We have received your request. Your new case number is <a href=&lt;OTRS_CONFIG_HttpType&gt;://&lt;OTRS_CONFIG_FQDN&gt;/&lt;OTRS_CONFIG_ScriptAlias&gt;customer.pl?Action=CustomerTicketZoom;TicketNumber=&lt;OTRS_TICKET_TicketNumber&gt;>&lt;OTRS_TICKET_TicketNumber&gt;</a><br/><br/>Kind regards,<br/>Medoptics Support - Mayer GmbH" --system-address-name  "support.medoptics@firma.de" --type "4"'
docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Add --name "Medoptics reject" --subject "Re: <OTRS_TICKET_Title> - Ticket rejected" --response "Dear &lt;OTRS_CUSTOMER_REALNAME&gt;,<br/><br/>thank you very much for your message.&nbsp;<br/>Your previous ticket is closed.<br /><br/>-- Your follow-up has been rejected. --<br/><br/>Please create a new ticket.<br/><br/>Kind regards,<br/>Medoptics Support - Mayer GmbH" --system-address-name  "support.medoptics@firma.de" --type "2"'
docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Add --name "Medoptics follow-up" --subject "Re: <OTRS_TICKET_Title> - Ticket follow-up received" --response "Dear &lt;OTRS_CUSTOMER_REALNAME&gt;,<br/><br/>thank you very much for your follow-up message.&nbsp;<br/>We will contact you when your request is complete or we need any more information.<br/><br/>Kind regards,<br/>Medoptics Support - Mayer GmbH" --system-address-name  "support.medoptics@firma.de" --type "3"'
docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Add --name "IntelliEyes reply" --subject "Re: <OTRS_TICKET_Title> - Ticket received" --response "Dear &lt;OTRS_CUSTOMER_REALNAME&gt;,<br/><br/>thank you very much for your message.&nbsp;<br/>We have received your request. Your case number is <a href=&lt;OTRS_CONFIG_HttpType&gt;://&lt;OTRS_CONFIG_FQDN&gt;/&lt;OTRS_CONFIG_ScriptAlias&gt;customer.pl?Action=CustomerTicketZoom;TicketNumber=&lt;OTRS_TICKET_TicketNumber&gt;>&lt;OTRS_TICKET_TicketNumber&gt;</a>.<br />We will contact you when your request is complete or we need any more information.<br/><br/>Kind regards,<br/>IntelliEyes Support - Mayer GmbH" --system-address-name  "support.intellieyes@firma.de" --type "1"'
docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Add --name "IntelliEyes reject/new ticket created" --subject "Re: <OTRS_TICKET_Title> - Ticket received" --response "Dear &lt;OTRS_CUSTOMER_REALNAME&gt;,<br/><br/>thank you very much for your message.&nbsp;<br/>Your previous ticket is closed.<br /><br/>--  A new ticket has been created for you. --<br/><br/>We have received your request. Your new case number is <a href=&lt;OTRS_CONFIG_HttpType&gt;://&lt;OTRS_CONFIG_FQDN&gt;/&lt;OTRS_CONFIG_ScriptAlias&gt;customer.pl?Action=CustomerTicketZoom;TicketNumber=&lt;OTRS_TICKET_TicketNumber&gt;>&lt;OTRS_TICKET_TicketNumber&gt;</a><br/><br/>Kind regards,<br/>IntelliEyes Support - Mayer GmbH" --system-address-name  "support.intellieyes@firma.de" --type "4"'
docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Add --name "IntelliEyes reject" --subject "Re: <OTRS_TICKET_Title> - Ticket rejected" --response "Dear &lt;OTRS_CUSTOMER_REALNAME&gt;,<br/><br/>thank you very much for your message.&nbsp;<br/>Your previous ticket is closed.<br /><br/>-- Your follow-up has been rejected. --<br/><br/>Please create a new ticket.<br/><br/>Kind regards,<br/>IntelliEyes Support - Mayer GmbH" --system-address-name  "support.intellieyes@firma.de" --type "2"'
docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Add --name "IntelliEyes follow-up" --subject "Re: <OTRS_TICKET_Title> - Ticket follow-up received" --response "Dear &lt;OTRS_CUSTOMER_REALNAME&gt;,<br/><br/>thank you very much for your follow-up message.&nbsp;<br/>We will contact you when your request is complete or we need any more information.<br/><br/>Kind regards,<br/>IntelliEyes Support - Mayer GmbH" --system-address-name  "support.intellieyes@firma.de" --type "3"'

#link autoresponses
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "1 2 3 4" --queue-name "Digicam DACH"'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "1 2 3 4" --queue-name "Digicam BENELUX"'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "1 2 3 4" --queue-name "Digicam NAM"'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "1 2 3 4" --queue-name "Digicam LATAM"'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "1 2 3 4" --queue-name "Medoptics DACH"'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "1 2 3 4" --queue-name "Medoptics BENELUX"'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "1 2 3 4" --queue-name "Medoptics NAM"'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "1 2 3 4" --queue-name "Medoptics LATAM"'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "1 2 3 4" --queue-name "IntelliEyes DACH"'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "1 2 3 4" --queue-name "IntelliEyes BENELUX"'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "1 2 3 4" --queue-name "IntelliEyes NAM"'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "1 2 3 4" --queue-name "IntelliEyes LATAM"'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "2" --queue-name "Digicam EUROPE"'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "2" --queue-name "Digicam AMERICA"'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "2" --queue-name "Digicam WORLDWIDE"'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "2" --queue-name "Medoptics EUROPE"'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "2" --queue-name "Medoptics AMERICA"'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "2" --queue-name "Medoptics WORLDWIDE"'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "2" --queue-name "IntelliEyes EUROPE"'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "2" --queue-name "IntelliEyes AMERICA"'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "2" --queue-name "IntelliEyes WORLDWIDE"'



#add generic agent
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "load step 06" --file /s5.yml'
