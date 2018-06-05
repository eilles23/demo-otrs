#!/bin/bash
####add: user
#copy Config.pm
 cp /opt/otrs/Kernel/demo_otrs/s1/s1.pm /opt/otrs/Kernel/Config.pm

#add faq article
perl /opt/otrs/bin/otrs.Console.pl Admin::FAQ::Import "/opt/otrs/Kernel/demo_otrs/s1/s1.csv"

#add default mail accounts 
sudo docker exec demootrs_mail add-domain firma.de
sudo docker exec demootrs_mail add-domain priv.at 
sudo docker exec demootrs_mail add-account agent@firma.de otrs 
sudo docker exec demootrs_mail add-account support@firma.de otrs
sudo docker exec demootrs_mail add-account kunde@firma.de otrs
 sudo docker exec demootrs_mailclient rm -rf /home/developer/.sylpheed-2.0/
 sudo docker cp /opt/otrs/Kernel/demo_otrs/s1/mailbox demootrs_mailclient:/home/developer/.sylpheed-2.0
sudo docker exec demootrs_mailclient pkill -HUP sylpheed
sudo docker restart demootrs_mailclient

#Add PostMaster-MailAccount
perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::MailAccount::Add --login support@firma.de --password otrs --host mail --type IMAP --valid 1 --IMAPFolder INBOX --trusted "1" --dispatchingby Queue --queueID "1" 

#update systemaddress
perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::SystemAddress::Update --valid 1 --ID 1 --name "Mayer GmbH Support" --email-address support@firma.de --queue-name Postmaster

#add customer
perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerCompany::Add --name "My Customers" --customer-id "100"
#add customer user
perl /opt/otrs/bin/otrs.Console.pl Admin::CustomerUser::Add --user-name "kunde@firma.de" --first-name Test --last-name Kunde --email-address "kunde@firma.de" --password "otrs" --customer-id "100"

#create default agent
perl /opt/otrs/bin/otrs.Console.pl Admin::User::Add --user-name "agent@firma.de" --first-name Mitar --last-name Beiter --email-address "agent@firma.de" --password "otrs"
perl /opt/otrs/bin/otrs.Console.pl Admin::Group::UserLink --group-name "users" --user-name "agent@firma.de" --permission "rw"

#update auto-resoponse


#link autoresponses
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "1 2 3 4" --queue-name Raw
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "1 2 3 4" --queue-name Postmaster
sudo docker exec   demootrs_otrs  su - otrs -c 'perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::AutoResponse::Link --responseID "1 2 3 4" --queue-name Misc

#add dynamic field
#perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::DynamicField::Add --name FromName --label From --type Text --file /DF_Text.yml
#add postmaster filter
#/opt/otrs/bin/otrs.Console.pl Custom::Admin::PostMasterFilter::Add --name "FromName" --file "FromName.yml" --path "/opt/otrs/Kernel/demo_otrs/s1/postmasterfilter"

#add notifications
perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Notification::Add --file "Export_Notification_Ticket_closed.yml" --path "/opt/otrs/Kernel/demo_otrs/s1/notification"
perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Notification::Add --file "Export_Notification_Ticket_merged.yml" --path "/opt/otrs/Kernel/demo_otrs/s1/notification"
perl /opt/otrs/bin/otrs.Console.pl Custom::Admin::Notification::Add --file "Export_Notification_Ticket_pending_auto_close.yml" --path "/opt/otrs/Kernel/demo_otrs/s1/notification"

#add acls
/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file "Export_ACL_AAA_Hide_Close__Pending__Closed_Tickets_.yml" --path "/opt/otrs/Kernel/demo_otrs/s1/acl"
/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file "AAA_Default_New_Email-Ticket.yml" --path "/opt/otrs/Kernel/demo_otrs/s1/acl"
/opt/otrs/bin/otrs.Console.pl Custom::Admin::ACL::Add --file "AAA_Default_New_Phone-Ticket.yml" --path "/opt/otrs/Kernel/demo_otrs/s1/acl"


#add generic agent
/opt/otrs/bin/otrs.Console.pl Custom::Admin::GenericAgent::Add --name "load step 02" --file "s1.yml" --path "/opt/otrs/Kernel/demo_otrs/s1/"
