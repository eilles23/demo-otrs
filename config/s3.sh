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

#add acl to hide ticket type unclassified
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file AAA_Hide_Unclassified.yml'


#add groups
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "incident"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "servicerequest"'

#link agent
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Group::UserLink --group-name "incident" --user-name "agent@firma.de" --permission "ro create move_into"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Group::UserLink --group-name "servicerequest" --user-name "agent@firma.de" --permission "ro create move_into"'

#add queues
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Incidents 1st Level" --group "users" --system-address-name "support@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Incidents 2nd Level" --group "incidents" --system-address-name "support@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Service Requests 1st Level" --group "users" --system-address-name "support@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "Service Requests 2nd Level" --group "servicerequests" --system-address-name "support@firma.de"'

##add 2nd-Lvl agents
sudo docker exec demootrs_mail add-account agent.incidents@firma.de otrs 
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent.incidents@firma.de" --first-name Inci --last-name Dent --email-address "agent.incidents@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::UserLink --group-name "incident" --user-name "agent.incidents@firma.de" --permission "rw"'
sudo docker exec demootrs_mail add-account agent.servicereq@firma.de otrs 
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent.servicereq@firma.de" --first-name Servi --last-name Cereq --email-address "agent.servicereq@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::UserLink --group-name "servicerequest" --user-name "agent.servicereq@firma.de" --permission "rw"'


##add 2nd-Lvl agents
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent" --first-name webservice --last-name user --email-address "root@localhost" --password "otrs"'




#add generic agent
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "Move Incidents 1st Level" --file incidents1stlvl.yml --path "/opt/otrs/Kernel/scripts/s3/genericagent"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "Move Service Requests 1st Level" --file servicerequests1stlvl.yml --path "/opt/otrs/Kernel/scripts/s3/genericagent"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "Move Incidents 2nd Level" --file incidents1stlvl.yml --path "/opt/otrs/Kernel/scripts/s3/genericagent"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "Move Service Requests 2nd Level" --file servicerequests1stlvl.yml --path "/opt/otrs/Kernel/scripts/s3/genericagent"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "load step 04" --file /s3.yml'

