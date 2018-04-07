#!/bin/bash
####add: user
#copy Config.pm
cp ./volumes/config/scripts/s1/s1.pm ./volumes/config/Config.pm

#add faq article
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::FAQ::Import "/opt/otrs/Kernel/System/Console/Command/Custom/Admin/FAQ/s1.csv"'

#add default mail accounts 
sudo docker exec demootrs_mail add-domain firma.de
sudo docker exec demootrs_mail add-domain priv.at 
sudo docker exec demootrs_mail add-account agent@firma.de otrs 
sudo docker exec demootrs_mail add-account support@firma.de otrs
sudo docker exec demootrs_mail add-account kunde@firma.de otrs
sudo rm -R ./volumes/mailbox/.sylpheed-2.0/
sudo cp -Rfa ./config/s1/mailbox ./volumes/mailbox/.sylpheed-2.0
sudo docker-compose restart mailclient

#add customer
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "My Customers" --customer-id "100"'
#add customer user
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "kunde@firma.de" --first-name Test --last-name Kunde --email-address "kunde@firma.de" --password "otrs" --customer-id "100"'

#create default agent
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent@firma.de" --first-name Mitar --last-name Beiter --email-address "agent@firma.de" --password "otrs"'
sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Admin::Group::UserLink --group-name "users" --user-name "agent@firma.de" --permission "rw"'

#update auto-resoponse
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Update --name "default reject/new ticket created" --subject "Re: <OTRS_TICKET_Title> - Ticket received" --response "Dear &lt;OTRS_CUSTOMER_REALNAME&gt;,<br/><br/>thank you very much for your message.&nbsp;<br/>Your previous ticket is closed.<br /><br/>--  A new ticket has been created for you. --<br/><br/>We have received your request. Your new case number is &lt;OTRS_TICKET_TicketNumber&gt;<br/><br/>Kind regards,<br/>Support - Mayer GmbH" --system-address-name  "support@firma.de" --ID "4" --type "4"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Update --name "default reject" --subject "Re: <OTRS_TICKET_Title> - Ticket rejected" --response "Dear &lt;OTRS_CUSTOMER_REALNAME&gt;,<br/><br/>thank you very much for your message.&nbsp;<br/>Your previous ticket is closed.<br /><br/>-- Your follow-up has been rejected. --<br/><br/>Please create a new ticket.<br/><br/>Kind regards,<br/>Support - Mayer GmbH" --system-address-name  "support@firma.de" --ID "2" --type "2"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Update --name "default follow-up" --subject "Re: <OTRS_TICKET_Title> - Ticket follow-up received" --response "Dear &lt;OTRS_CUSTOMER_REALNAME&gt;,<br/><br/>thank you very much for your follow-up message.&nbsp;<br/>We will contact you when your request is complete or we need any more information.<br/><br/>Kind regards,<br/>Support - Mayer GmbH" --system-address-name  "support@firma.de" --ID "3" --type "3"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Update --name "default reply (after new ticket has been created)" --subject "Re: <OTRS_TICKET_Title> - Ticket received" --response "Dear &lt;OTRS_CUSTOMER_REALNAME&gt;,<br/><br/>thank you very much for your message.&nbsp;<br/>We have received your request. Your case number is &lt;OTRS_TICKET_TicketNumber&gt;.<br />We will contact you when your request is complete or we need any more information.<br/><br/>Kind regards,<br/>Support - Mayer GmbH" --system-address-name  "support@firma.de" --ID "1" --type "1"'

#link autoresponses
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "1 2 3 4" --queue-name Raw'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "1 2 3 4" --queue-name Postmaster'
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "1 2 3 4" --queue-name Misc'

#add dynamic field
#sudo docker exec demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name FromName --label From --type Text --file /DF_Text.yml'
#add postmaster filter
#sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::PostMasterFilter::Add --name "FromName" --file "FromName.yml" --path "/opt/otrs/Kernel/scripts/s1/postmasterfilter"'

#add notifications
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Notification::Add --file "Export_Notification_Ticket_closed.yml" --path "/opt/otrs/Kernel/scripts/s1/notification"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Notification::Add --file "Export_Notification_Ticket_merged.yml" --path "/opt/otrs/Kernel/scripts/s1/notification"'
sudo docker exec demootrs_otrs su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Notification::Add --file "Export_Notification_Ticket_pending_auto_close.yml" --path "/opt/otrs/Kernel/scripts/s1/notification"'

#add acls
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file "Export_ACL_AAA_Hide_Close__Pending__Closed_Tickets_.yml" --path "/opt/otrs/Kernel/scripts/s1/acl"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file "AAA_Default_New_Email-Ticket.yml" --path "/opt/otrs/Kernel/scripts/s1/acl"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file "AAA_Default_New_Email-Ticket.yml" --path "/opt/otrs/Kernel/scripts/s1/acl"'
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file "AAA_Default_New_Phone-Ticket.yml" --path "/opt/otrs/Kernel/scripts/s1/acl"'


#add generic agent
sudo docker exec demootrs_otrs su - otrs -c '/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "load step 02" --file "/s1.yml"'
