#!/bin/bash
###add: queues, groups, escalation
#copy Config.pm
sudo docker exec demootrs_otrs cp /opt/otrs/Kernel/scripts/s4/s4.pm /opt/otrs/Kernel/Config.pm
#add faq article
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::FAQ::Import "/opt/otrs/Kernel/System/Console/Command/Custom/Admin/FAQ/s4.csv"'

#add mail accounts
sudo docker exec demootrs_mail add-account agent-dach@firma.de otrs 
sudo docker exec demootrs_mail add-account agent-benelux@firma.de otrs 
sudo docker exec demootrs_mail add-account agent-latam@firma.de otrs 
sudo docker exec demootrs_mail add-account agent-nam@firma.de otrs 
sudo docker exec demootrs_mail add-account agent-europe@firma.de otrs 
sudo docker exec demootrs_mail add-account agent-america@firma.de otrs 
sudo docker exec demootrs_mail add-account agent-worldwide@firma.de otrs 
sudo docker exec demootrs_mail add-account kunde@privat.de otrs 
sudo docker exec demootrs_mail add-account customer@private.com otrs 
sudo docker exec demootrs_mail add-account client@prive.be otrs 
sudo docker exec demootrs_mail add-account cliente@privada.br otrs 
sudo docker exec demootrs_mail add-account dritt@unternehmen.de otrs 
sudo docker exec demootrs_mail add-account troisieme@enterprise.be otrs 
sudo docker exec demootrs_mail add-account thirdparty@company.com otrs 
sudo docker exec demootrs_mail add-account terceiro@companhia.br otrs 

#add customer
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "Private Customers" --customer-id "101"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "<Unternehmen>" --customer-id "102"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "<Enterprise>" --customer-id "103"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "<Company>" --customer-id "104"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "<Companhia>" --customer-id "105"'

#add cutomeruser
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "kunde@privat.de" --first-name Privat --last-name Kunde --email-address "kunde@privat.de" --password "otrs" --customer-id "101"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "client@prive.be" --first-name Prive --last-name Client --email-address "client@prive.be" --password "otrs" --customer-id "101"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "customer@private.com" --first-name Private --last-name Customer --email-address "customer@private.com" --password "otrs" --customer-id "101"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "cliente@privada.br" --first-name Privadamente --last-name Cliente --email-address "cliente@privada.br" --password "otrs" --customer-id "101"'

sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "dritt@unternehmen.de" --first-name Dritt --last-name Unternehmen --email-address "dritt@unternehmen.de" --password "otrs" --customer-id "102"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "troisieme@enterprise.be" --first-name Troisieme --last-name Enterprise --email-address "troisieme@enterprise.be" --password "otrs" --customer-id "103"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "thirdparty@company.com" --first-name Thirdparty --last-name Company --email-address "thirdparty@company.com" --password "otrs" --customer-id "104"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "terceiro@companhia.br" --first-name Terceiro --last-name Companhia --email-address "terceiro@companhia.br" --password "otrs" --customer-id "105"'


#add groups
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "DACH"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "BENELUX"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "LATAM"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "NAM"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "EUROPE"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "AMERICA"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "WORLDWIDE"'
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
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "LATAM" --role-name "Agent::1st-Lvl::LATAM" --permission "rw"'
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

sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "WORLDWIDE" --role-name "Agent::3rd-Lvl::WORLDWIDE" --permission "rw"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "DACH" --role-name "Agent::3rd-Lvl::WORLDWIDE" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "BENELUX" --role-name "Agent::3rd-Lvl::WORLDWIDE" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "LATAM" --role-name "Agent::3rd-Lvl::WORLDWIDE" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "NAM" --role-name "Agent::3rd-Lvl::WORLDWIDE" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "AMERICA" --role-name "Agent::3rd-Lvl::WORLDWIDE" --permission "ro" --permission "move_into" --permission "create"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "EUROPE" --role-name "Agent::3rd-Lvl::WORLDWIDE" --permission "ro" --permission "move_into" --permission "create"'

#update queues
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Queue::Update --ID "6" --name "1st Level DACH" --group "DACH" --system-address-name "support@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Queue::Update --ID "7" --name "1st Level BENELUX" --group "BENELUX" --system-address-name "support@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Queue::Update --ID "8" --name "1st Level LATAM" --group "LATAM" --system-address-name "support@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Queue::Update --ID "9" --name "1st Level NAM" --group "NAM" --system-address-name "support@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Queue::Update --ID "4" --name "3rd Level WORLDWIDE" --group "WORLDWIDE" --system-address-name "support@firma.de"'

#add queues
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "2nd Level EUROPE" --group "EUROPE" --system-address-name "support@firma.de"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "2nd Level AMERICA" --group "AMERICA" --system-address-name "support@firma.de"'


#add agents
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-dach@firma.de" --first-name Agent --last-name DACH --email-address "agent-dach@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-benelux@firma.de" --first-name Agent --last-name BENELUX --email-address "agent-benelux@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-latam@firma.de" --first-name Agent --last-name LATAM --email-address "agent-latam@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-nam@firma.de" --first-name Agent --last-name NAM --email-address "agent-nam@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-europe@firma.de" --first-name Agent --last-name EUROPE --email-address "agent-europe@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-america@firma.de" --first-name Agent --last-name AMERICA --email-address "agent-america@firma.de" --password "otrs"'

#link agents-role
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-dach@firma.de" --role-name "Agent::1st-Lvl::DACH"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-benelux@firma.de" --role-name "Agent::1st-Lvl::BENELUX"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-latam@firma.de" --role-name "Agent::1st-Lvl::LATAM"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-nam@firma.de" --role-name "Agent::1st-Lvl::NAM"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-europe@firma.de" --role-name "Agent::2nd-Lvl::EUROPE"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-america@firma.de" --role-name "Agent::2nd-Lvl::AMERICA"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent@firma.de" --role-name "Agent::3rd-Lvl::WORLDWIDE"'

#add dynamic fields
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name Market --label "Market" --type Dropdown --file Market.yml --path "/opt/otrs/Kernel/scripts/s4/dynamicfield"'

#update autoresponse
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Update --name "default reply (after new ticket has been created)" --subject "Re: <OTRS_TICKET_Title> - Ticket received" --response "Dear &lt;OTRS_CUSTOMER_REALNAME&gt;,<br/><br/>thank you very much for your message.&nbsp;<br/>We have received your request. Your case number is <a href=&lt;OTRS_CONFIG_HttpType&gt;://&lt;OTRS_CONFIG_FQDN&gt;/&lt;OTRS_CONFIG_ScriptAlias&gt;customer.pl?Action=CustomerTicketZoom;TicketNumber=&lt;OTRS_TICKET_TicketNumber&gt;>&lt;OTRS_TICKET_TicketNumber&gt;</a>.<br />We will contact you when your request is complete or we need any more information.<br/><br/>Kind regards,<br/>Support &lt;OTRS_TICKET_DynamicField_Market&gt;<br/>Mayer GmbH" --system-address-name  "support@firma.de" --ID "1" --type "1"'
#update autoresponse
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Add --name "default reply (after new ticket has been created)" --subject "Re: <OTRS_TICKET_Title> - Ticket received" --response "Dear &lt;OTRS_CUSTOMER_REALNAME&gt;,<br/><br/>thank you very much for your message.&nbsp;<br/>Unfortunately the mail address you have written to is invalid.<br />Please contact your regional customer support.<br/><br/>Kind regards,<br/>Support &lt;OTRS_TICKET_DynamicField_Market&gt;<br/>Mayer GmbH" --system-address-name  "support@firma.de" --type "2"'
#link autoresponses
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "1 2 3 4" --queue-name "1st Level DACH"'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "1 2 3 4" --queue-name "1st Level BENELUX"'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "1 2 3 4" --queue-name "1st Level NAM"'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "1 2 3 4" --queue-name "1st Level LATAM"'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "2" --queue-name "2nd Level EUROPE"'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "2" --queue-name "2nd Level AMERICA"'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "2" --queue-name "3rd Level WORLDWIDE"'

#add notifications
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Notification::Add --file "Export_Notification_Registration_Ticket_create.yml" --path "/opt/otrs/Kernel/scripts/s4/notification"'

#add genericagents
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "Market<->Queue DACH" --file DACH.yml --path "/opt/otrs/Kernel/scripts/s4/genericagent"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "Market<->Queue BENELUX" --file BENELUX.yml --path "/opt/otrs/Kernel/scripts/s4/genericagent"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "Market<->Queue NAM" --file NAM.yml --path "/opt/otrs/Kernel/scripts/s4/genericagent"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "Market<->Queue LATAM" --file LATAM.yml --path "/opt/otrs/Kernel/scripts/s4/genericagent"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "Market<->Queue EUROPE" --file EUROPE.yml --path "/opt/otrs/Kernel/scripts/s4/genericagent"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "Market<->Queue AMERICA" --file AMERICA.yml --path "/opt/otrs/Kernel/scripts/s4/genericagent"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "Market<->Queue WORLDWIDE" --file WORLDWIDE.yml --path "/opt/otrs/Kernel/scripts/s4/genericagent"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Delete --name "Move Incidents"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Delete --name "Move Service Requests"'

#add Service
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Admin::Service::Add --name Standard'
#Add queue
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::SLA::Add --name Premium --first-response-time "2" --update-time "4" --solution-time "6" --services "1"'
#Link customeruser<->service
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Service::Link --customeruser "admin@firma.de" --service "1"'


#add generic agent
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "load step 05" --file /s4.yml'


