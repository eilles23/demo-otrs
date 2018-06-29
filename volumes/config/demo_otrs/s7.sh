#!/bin/bash
sudo docker exec demootrs_mailclient rm -rf /home/developer/.sylpheed-2.0/
sudo docker cp /opt/otrs/Kernel/demo_otrs/s5/mailbox/ demootrs_mailclient:/home/developer/.sylpheed-2.0/

