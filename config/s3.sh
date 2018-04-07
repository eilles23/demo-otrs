#!/bin/bash
###add: agentticketphone, agentticketmail, ticket types and priorities, 
#copy Config.pm
sudo docker exec demootrs_otrs cp /opt/otrs/Kernel/scripts/s3/s3.pm /opt/otrs/Kernel/Config.pm
#add faq article
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::FAQ::Import "/opt/otrs/Kernel/System/Console/Command/Custom/Admin/FAQ/s3.csv"'

#add ticket types
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::TicketType::Add --name "Incident"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::TicketType::Add --name "Service Request"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::TicketType::Add --name "Request for Information"'

#add groups
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "incident::1stlvl"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "servicerequest::1stlvl"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "incident::2ndlvl"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "servicerequest::2ndlvl"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "incident::3rdlvl"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "servicerequest::3rdlvl"'

#link agent
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Group::UserLink --group-name "incident::1stlvl" --user-name "agent@firma.de" --permission "ro create move_into"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Group::UserLink --group-name "servicerequest::1stlvl" --user-name "agent@firma.de" --permission "ro create move_into"'

#add queues
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Incidents 1st Level" --group "incident::1stlvl" --system-address-name "support@firma.de" --first-response-time "2" --update-time "4" --solution-time "6"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Incidents 2nd Level" --group "incident::2ndlvl" --system-address-name "support@firma.de" --first-response-time "4" --update-time "6" --solution-time "8"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Service Requests 1st Level" --group "servicerequest::1stlvl" --system-address-name "support@firma.de" --first-response-time "2" --update-time "4" --solution-time "6"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Service Requests 2nd Level" --group "servicerequest::2ndlvl" --system-address-name "support@firma.de" --first-response-time "4" --update-time "6" --solution-time "8"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Incidents 3rd Level" --group "incident::3rdlvl" --system-address-name "support@firma.de" --first-response-time "2" --update-time "4" --solution-time "6"'

#link autoresponses
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "1 2 3 4" --queue-name "Incidents 1st Level"'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "1 2 3 4" --queue-name "Service Requests 1st Level"'

#add mailaccounts
sudo docker exec demootrs_mail add-account agent-1stlvl@firma.de otrs 
sudo docker exec demootrs_mail add-account agent-2ndlvl@firma.de otrs 
sudo docker exec demootrs_mail add-account agent-3rdlvl@firma.de otrs 
sudo docker exec demootrs_mail add-account mitarbeiter@kustoma.de otrs 
sudo docker exec demootrs_mail add-account kunde@priv.at otrs 
sudo rm -R ./volumes/mailbox/.sylpheed-2.0/
sudo cp -Rfa ./config/s3/mailbox ./volumes/mailbox/.sylpheed-2.0
sudo docker-compose restart mailclient

##add 2nd-Lvl agents 
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-1stlvl@firma.de" --first-name "Agent 1st" --last-name Level --email-address "agent-1stlvl@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-2ndlvl@firma.de" --first-name "Agent 2nd" --last-name Level --email-address "agent-2ndlvl@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-3rdlvl@firma.de" --first-name "Agent 3rd" --last-name Level --email-address "agent-3rdlvl@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::UserLink --group-name "incident::1stlvl" --user-name "agent-1stlvl@firma.de" --permission "rw"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::UserLink --group-name "servicerequest::1stlvl" --user-name "agent-1stlvl@firma.de" --permission "rw"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::UserLink --group-name "incident::1stlvl" --user-name "agent-2ndlvl@firma.de" --permission "rw"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::UserLink --group-name "servicerequest::1stlvl" --user-name "agent-2ndlvl@firma.de" --permission "rw"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::UserLink --group-name "incident::2ndlvl" --user-name "agent-2ndlvl@firma.de" --permission "rw"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::UserLink --group-name "servicerequest::2ndlvl" --user-name "agent-2ndlvl@firma.de" --permission "rw"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::UserLink --group-name "incident::1stlvl" --user-name "agent-3rdlvl@firma.de" --permission "rw"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::UserLink --group-name "servicerequest::1stlvl" --user-name "agent-3rdlvl@firma.de" --permission "rw"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::UserLink --group-name "incident::2ndlvl" --user-name "agent-3rdlvl@firma.de" --permission "rw"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::UserLink --group-name "servicerequest::2ndlvl" --user-name "agent-3rdlvl@firma.de" --permission "rw"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::UserLink --group-name "incident::3rdlvl" --user-name "agent-3rdlvl@firma.de --permission "rw"'

#add customer
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "KUSTOMA GmbH & Co. KG" --customer-id "101"'
#add cutomeruser
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "mitarbeiter@kustoma.de" --first-name Privat --last-name Kunde --email-address "mitarbeiter@kustoma.de" --password "otrs" --customer-id "101"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "kunde@priv.at" --first-name Privat --last-name Kunde --email-address "kunde@priv.at" --password "otrs" --customer-id "100"'


#add generic agent
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "Move Incidents 1st Level" --file incidents1stlvl.yml --path "/opt/otrs/Kernel/scripts/s3/genericagent"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "Move Service Requests 1st Level" --file servicerequests1stlvl.yml --path "/opt/otrs/Kernel/scripts/s3/genericagent"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "Move Incidents 2nd Level" --file incidents2ndlvl.yml --path "/opt/otrs/Kernel/scripts/s3/genericagent"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "Move Service Requests 2nd Level" --file servicerequests2ndlvl.yml --path "/opt/otrs/Kernel/scripts/s3/genericagent"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "Move Incidents 3rd Level" --file incidents3rdlvl.yml --path "/opt/otrs/Kernel/scripts/s3/genericagent"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "load step 04" --file /s3.yml'
