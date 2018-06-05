# OTRS config file (automatically generated)
# VERSION:1.1
package Kernel::Config::Files::ZZZACL;
use strict;
use warnings;
no warnings 'redefine'; ## no critic
use utf8;
sub Load {
    my ($File, $Self) = @_;

# Created: 2018-06-05 10:41:06 (root@localhost)
# Changed: 2018-06-05 10:41:06 (root@localhost)
$Self->{TicketAcl}->{'AAA Default - New Email-Ticket'} = {
  'Possible' => {},
  'PossibleAdd' => {},
  'PossibleNot' => {
    'Ticket' => {
      'Queue' => [
        'Postmaster',
        'Raw',
        'Junk'
      ]
    }
  },
  'Properties' => {
    'Frontend' => {
      'Action' => [
        'AgentTicketEmail'
      ]
    }
  },
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

# Created: 2018-06-05 10:41:06 (root@localhost)
# Changed: 2018-06-05 10:41:06 (root@localhost)
$Self->{TicketAcl}->{'AAA Default - New Phone-Ticket'} = {
  'Possible' => {},
  'PossibleAdd' => {},
  'PossibleNot' => {
    'Ticket' => {
      'Queue' => [
        'Postmaster',
        'Raw',
        'Junk'
      ]
    }
  },
  'Properties' => {
    'Frontend' => {
      'Action' => [
        'AgentTicketPhone'
      ]
    }
  },
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

# Created: 2018-06-05 10:41:05 (root@localhost)
# Changed: 2018-06-05 10:41:05 (root@localhost)
$Self->{TicketAcl}->{'AAA Hide Close, Pending (Closed Tickets)'} = {
  'Possible' => {},
  'PossibleAdd' => {},
  'PossibleNot' => {
    'Action' => [
      'AgentTicketClose',
      'AgentTicketPending',
      'AgentTicketCustomer',
      'AgentTicketPriority',
      'AgentTicketMove',
      'AgentTicketFreeText'
    ]
  },
  'Properties' => {
    'Ticket' => {
      'State' => [
        '[RegExp]closed'
      ]
    },
    'User' => {
      'Group_rw' => [
        '[Not]admin'
      ]
    }
  },
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

# Created: 2018-06-05 10:54:57 (root@localhost)
# Changed: 2018-06-05 10:54:57 (root@localhost)
$Self->{TicketAcl}->{'AAA Hide Unclassified'} = {
  'Possible' => {},
  'PossibleAdd' => {},
  'PossibleNot' => {
    'Ticket' => {
      'Type' => [
        'Unclassified'
      ]
    }
  },
  'Properties' => {},
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

    return;
}
1;
