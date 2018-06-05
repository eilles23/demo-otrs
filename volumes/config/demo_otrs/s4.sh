#!/bin/bash
###add: queues, groups, escalation
#copy Config.pm
 cp /opt/otrs/Kernel/demo_otrs/s4/s4.pm /opt/otrs/Kernel/Config.pm
#add faq article
perl /opt/otrs/bin/otrs.Console.pl Admin::FAQ::Import "/opt/otrs/Kernel/demo_otrs/s4/s4.csv"

#add mail accounts
sudo docker exec demootrs_mail add-account agent-dach@firma.de otrs 
sudo docker exec demootrs_mail add-account agent-benelux@firma.de otrs 
sudo docker exec demootrs_mail add-account agent-latam@firma.de otrs 
sudo docker exec demootrs_mail add-account agent-nam@firma.de otrs 
sudo docker exec demootrs_mail add-account agent-europe@firma.de otrs 
sudo docker exec demootrs_mail add-account agent-america@firma.de otrs 
sudo docker exec demootrs_mail add-account agent-worldwide@firma.de otrs 
sudo docker exec demootrs_mail add-account customer-dach@firma.de otrs 
sudo docker exec demootrs_mail add-account customer-benelux@firma.de otrs 
sudo docker exec demootrs_mail add-account customer-latam@firma.de otrs 
sudo docker exec demootrs_mail add-account customer-nam@firma.de otrs 
sudo docker exec demootrs_mail add-account customer-europe@firma.de otrs 
sudo docker exec demootrs_mail add-account customer-america@firma.de otrs 
sudo docker exec demootrs_mail add-account customer-worldwide@firma.de otrs 
 sudo docker exec demootrs_mailclient rm -rf /home/developer/.sylpheed-2.0/
 sudo docker cp /opt/otrs/Kernel/demo_otrs/s4/mailbox demootrs_mailclient:/home/developer/.sylpheed-2.0
 sudo docker restart demootrs_mailclient

#add customer
perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "DACH" --customer-id "102"
perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "BENELUX" --customer-id "103"
perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "NAM" --customer-id "104"
perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "LATAM" --customer-id "105"
perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "EUROPE" --customer-id "106"
perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "AMERICA" --customer-id "107"
perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "WORLDWIDE" --customer-id "108"

#add cutomeruser
perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "customer-dach@firma.de" --first-name Privat --last-name Kunde --email-address "customer-dach@firma.de" --password "otrs" --customer-id "102"
perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "customer-benelux@firma.de" --first-name Prive --last-name Client --email-address "customer-benelux@firma.de" --password "otrs" --customer-id "103"
perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "customer-nam@firma.de" --first-name Private --last-name Customer --email-address "customer-nam@firma.de" --password "otrs" --customer-id "104"
perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "customer-latam@firma.de" --first-name Privadamente --last-name Cliente --email-address "customer-latam@firma.de" --password "otrs" --customer-id "105"
perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "customer-europe@firma.de" --first-name Prive --last-name Client --email-address "customer-europe@firma.de" --password "otrs" --customer-id "106"
perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "customer-america@firma.de" --first-name Private --last-name Customer --email-address "customer-america@firma.de" --password "otrs" --customer-id "107"
perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "customer-worldwide@firma.de" --first-name Private --last-name Customer --email-address "customer-worldwide@firma.de" --password "otrs" --customer-id "108"


#add groups
perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "DACH"
perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "BENELUX"
perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "LATAM"
perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "NAM"
perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "EUROPE"
perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "AMERICA"
perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "WORLDWIDE"
perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "2ndLvl"
perl /opt/otrs/bin/otrs.Console.pl Admin::Group::Add --name "3rdLvl"

#add roles
perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Agent::General"
perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Agent::1st-Lvl::DACH"
perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Agent::1st-Lvl::BENELUX"
perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Agent::1st-Lvl::LATAM"
perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Agent::1st-Lvl::NAM"
perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Agent::2nd-Lvl::EUROPE"
perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Agent::2nd-Lvl::AMERICA"
perl /opt/otrs/bin/otrs.Console.pl Admin::Role::Add --name "Agent::3rd-Lvl::WORLDWIDE"

#Link Group-Role
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "1stlvl" --role-name "Agent::1st-Lvl::DACH" --permission "rw"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "DACH" --role-name "Agent::1st-Lvl::DACH" --permission "rw"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "EUROPE" --role-name "Agent::1st-Lvl::DACH" --permission "ro" --permission "move_into" --permission "create"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "WORLDWIDE" --role-name "Agent::1st-Lvl::DACH" --permission "ro"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "1stlvl" --role-name "Agent::1st-Lvl::BENELUX" --permission "rw"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "BENELUX" --role-name "Agent::1st-Lvl::BENELUX" --permission "rw"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "EUROPE" --role-name "Agent::1st-Lvl::BENELUX" --permission "ro" --permission "move_into" --permission "create"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "WORLDWIDE" --role-name "Agent::1st-Lvl::BENELUX" --permission "ro"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "1stlvl" --role-name "Agent::1st-Lvl::LATAM" --permission "rw"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "LATAM" --role-name "Agent::1st-Lvl::LATAM" --permission "rw"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "AMERICA" --role-name "Agent::1st-Lvl::LATAM" --permission "ro" --permission "move_into" --permission "create"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "WORLDWIDE" --role-name "Agent::1st-Lvl::LATAM" --permission "ro"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "1stlvl" --role-name "Agent::1st-Lvl::NAM" --permission "rw"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "NAM" --role-name "Agent::1st-Lvl::NAM" --permission "rw"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "AMERICA" --role-name "Agent::1st-Lvl::NAM" --permission "ro" --permission "move_into" --permission "create"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "WORLDWIDE" --role-name "Agent::1st-Lvl::NAM" --permission "ro"

/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "DACH" --role-name "Agent::2nd-Lvl::EUROPE" --permission "ro" --permission "move_into" --permission "create"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "BENELUX" --role-name "Agent::2nd-Lvl::EUROPE" --permission "ro" --permission "move_into" --permission "create"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "EUROPE" --role-name "Agent::2nd-Lvl::EUROPE" --permission "rw"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "2ndlvl" --role-name "Agent::2nd-Lvl::AMERICA" --permission "rw"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "LATAM" --role-name "Agent::2nd-Lvl::AMERICA" --permission "ro" --permission "move_into" --permission "create"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "NAM" --role-name "Agent::2nd-Lvl::AMERICA" --permission "ro" --permission "move_into" --permission "create"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "AMERICA" --role-name "Agent::2nd-Lvl::AMERICA" --permission "rw"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "2ndlvl" --role-name "Agent::2nd-Lvl::AMERICA" --permission "rw"

/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "3rdlvl" --role-name "Agent::3rd-Lvl::WORLDWIDE" --permission "rw"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "WORLDWIDE" --role-name "Agent::3rd-Lvl::WORLDWIDE" --permission "rw"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "DACH" --role-name "Agent::3rd-Lvl::WORLDWIDE" --permission "ro" --permission "move_into" --permission "create"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "BENELUX" --role-name "Agent::3rd-Lvl::WORLDWIDE" --permission "ro" --permission "move_into" --permission "create"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "LATAM" --role-name "Agent::3rd-Lvl::WORLDWIDE" --permission "ro" --permission "move_into" --permission "create"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "NAM" --role-name "Agent::3rd-Lvl::WORLDWIDE" --permission "ro" --permission "move_into" --permission "create"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "AMERICA" --role-name "Agent::3rd-Lvl::WORLDWIDE" --permission "ro" --permission "move_into" --permission "create"
/opt/otrs/bin/otrs.Console.pl Admin::Group::RoleLink --group-name "EUROPE" --role-name "Agent::3rd-Lvl::WORLDWIDE" --permission "ro" --permission "move_into" --permission "create"

#add queues
perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add  --name "1st Level DACH" --group "DACH" --system-address-name "support@firma.de"
perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add  --name "1st Level BENELUX" --group "BENELUX" --system-address-name "support@firma.de"
perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add  --name "1st Level LATAM" --group "LATAM" --system-address-name "support@firma.de"
perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add  --name "1st Level NAM" --group "NAM" --system-address-name "support@firma.de"
perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "2nd Level EUROPE" --group "EUROPE" --system-address-name "support@firma.de"
perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add --name "2nd Level AMERICA" --group "AMERICA" --system-address-name "support@firma.de"
perl /opt/otrs/bin/otrs.Console.pl Admin::Queue::Add  --name "3rd Level WORLDWIDE" --group "WORLDWIDE" --system-address-name "support@firma.de"

#add agents
perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-dach@firma.de" --first-name Agent --last-name DACH --email-address "agent-dach@firma.de" --password "otrs"
perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-benelux@firma.de" --first-name Agent --last-name BENELUX --email-address "agent-benelux@firma.de" --password "otrs"
perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-latam@firma.de" --first-name Agent --last-name LATAM --email-address "agent-latam@firma.de" --password "otrs"
perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-nam@firma.de" --first-name Agent --last-name NAM --email-address "agent-nam@firma.de" --password "otrs"
perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-europe@firma.de" --first-name Agent --last-name EUROPE --email-address "agent-europe@firma.de" --password "otrs"
perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent-america@firma.de" --first-name Agent --last-name AMERICA --email-address "agent-america@firma.de" --password "otrs"

#link agents-role
/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-dach@firma.de" --role-name "Agent::1st-Lvl::DACH"
/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-benelux@firma.de" --role-name "Agent::1st-Lvl::BENELUX"
/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-latam@firma.de" --role-name "Agent::1st-Lvl::LATAM"
/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-nam@firma.de" --role-name "Agent::1st-Lvl::NAM"
/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-europe@firma.de" --role-name "Agent::2nd-Lvl::EUROPE"
/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent-america@firma.de" --role-name "Agent::2nd-Lvl::AMERICA"
/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "agent@firma.de" --role-name "Agent::3rd-Lvl::WORLDWIDE"
/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "admin@firma.de" --role-name "Agent::3rd-Lvl::WORLDWIDE"
/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "admin@firma.de" --role-name "Agent::1st-Lvl::DACH"
/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "admin@firma.de" --role-name "Agent::1st-Lvl::BENELUX"
/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "admin@firma.de" --role-name "Agent::1st-Lvl::LATAM"
/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "admin@firma.de" --role-name "Agent::1st-Lvl::NAM"
/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "admin@firma.de" --role-name "Agent::2nd-Lvl::EUROPE"
/opt/otrs/bin/otrs.Console.pl Admin::Role::UserLink --user-name "admin@firma.de" --role-name "Agent::2nd-Lvl::AMERICA"


#add dynamic fields
perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name Market --label "Market" --type Dropdown --file Market.yml --path "/opt/otrs/Kernel/demo_otrs/s4/dynamicfield"

#update autoresponse
perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Update --name "default reply (after new ticket has been created)" --subject "Re: <OTRS_TICKET_Title> - Ticket received" --response "Dear &lt;OTRS_CUSTOMER_REALNAME&gt;,<br/><br/>thank you very much for your message.&nbsp;<br/>We have received your request. Your case number is <a href=&lt;OTRS_CONFIG_HttpType&gt;://&lt;OTRS_CONFIG_FQDN&gt;/&lt;OTRS_CONFIG_ScriptAlias&gt;customer.pl?Action=CustomerTicketZoom;TicketNumber=&lt;OTRS_TICKET_TicketNumber&gt;>&lt;OTRS_TICKET_TicketNumber&gt;</a>.<br />We will contact you when your request is complete or we need any more information.<br/><br/>Kind regards,<br/>Support &lt;OTRS_TICKET_DynamicField_Market&gt;<br/>Mayer GmbH" --system-address-name  "support@firma.de" --ID "1" --type "1"
#update autoresponse
perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Update --name "default reject" --subject "Re: <OTRS_TICKET_Title> - Ticket received" --response "Dear &lt;OTRS_CUSTOMER_REALNAME&gt;,<br/><br/>thank you very much for your message.&nbsp;<br/>Unfortunately the mail address you have written to is invalid and so your email will not be answered.<br />Please contact your regional customer support.<br/><br/>Kind regards,<br/>Support &lt;OTRS_TICKET_DynamicField_Market&gt;<br/>Mayer GmbH" --system-address-name  "support@firma.de" --type "2" --ID "2"
#link autoresponses
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "1 2 3 4" --queue-name "1st Level DACH"
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "1 2 3 4" --queue-name "1st Level BENELUX"
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "1 2 3 4" --queue-name "1st Level NAM"
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "1 2 3 4" --queue-name "1st Level LATAM"
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "2" --queue-name "2nd Level EUROPE"
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "2" --queue-name "2nd Level AMERICA"
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "2" --queue-name "3rd Level WORLDWIDE"

#add notifications
perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Notification::Add --file "Export_Notification_Ticket_closed.yml" --path "/opt/otrs/Kernel/demo_otrs/s4/notification"
perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Notification::Add --file "Export_Notification_Ticket_merged.yml" --path "/opt/otrs/Kernel/demo_otrs/s4/notification"
perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Notification::Add --file "Export_Notification_Ticket_pending_auto_close.yml" --path "/opt/otrs/Kernel/demo_otrs/s4/notification"

#add genericagents
/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "Market<->Queue DACH" --file DACH.yml --path "/opt/otrs/Kernel/demo_otrs/s4/genericagent"
/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "Market<->Queue BENELUX" --file BENELUX.yml --path "/opt/otrs/Kernel/demo_otrs/s4/genericagent"
/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "Market<->Queue NAM" --file NAM.yml --path "/opt/otrs/Kernel/demo_otrs/s4/genericagent"
/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "Market<->Queue LATAM" --file LATAM.yml --path "/opt/otrs/Kernel/demo_otrs/s4/genericagent"
/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "Market<->Queue EUROPE" --file EUROPE.yml --path "/opt/otrs/Kernel/demo_otrs/s4/genericagent"
/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "Market<->Queue AMERICA" --file AMERICA.yml --path "/opt/otrs/Kernel/demo_otrs/s4/genericagent"
/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "Market<->Queue WORLDWIDE" --file WORLDWIDE.yml --path "/opt/otrs/Kernel/demo_otrs/s4/genericagent"
/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Delete --name "Move Incidents"
/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Delete --name "Move Service Requests"

#add Service
/opt/otrs/bin/otrs.Console.pl Admin::Service::Add --name Standard
#Add queue
perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::SLA::Add --name Basic --services "1" --first-response-time "2" --update-time "4" --solution-time "6" --services "1"
#Link customeruser<->service
perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Service::Link --customeruser "admin@firma.de" --service "1"

#add acls
/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file AAM_Customer_DACH.yml --path "/opt/otrs/Kernel/demo_otrs/s4/acl"
/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file AAM_Customer_BENELUX.yml --path "/opt/otrs/Kernel/demo_otrs/s4/acl"
/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file AAM_Customer_NAM.yml --path "/opt/otrs/Kernel/demo_otrs/s4/acl"
/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file AAM_Customer_LATAM.yml --path "/opt/otrs/Kernel/demo_otrs/s4/acl"
/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file AAM_Agent_DACH.yml --path "/opt/otrs/Kernel/demo_otrs/s4/acl"
/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file AAM_Agent_BENELUX.yml --path "/opt/otrs/Kernel/demo_otrs/s4/acl"
/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file AAM_Agent_NAM.yml --path "/opt/otrs/Kernel/demo_otrs/s4/acl"
/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file AAM_Agent_LATAM.yml --path "/opt/otrs/Kernel/demo_otrs/s4/acl"
/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file AAP_Admin_Markets.yml --path "/opt/otrs/Kernel/demo_otrs/s4/acl"
/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file AAA_Hide_all_markets.yml --path "/opt/otrs/Kernel/demo_otrs/s4/acl"

#add generic agent
/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "load step 05" --file /s4.yml


