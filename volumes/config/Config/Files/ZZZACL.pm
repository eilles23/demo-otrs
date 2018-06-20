# OTRS config file (automatically generated)
# VERSION:1.1
package Kernel::Config::Files::ZZZACL;
use strict;
use warnings;
no warnings 'redefine'; ## no critic
use utf8;
sub Load {
    my ($File, $Self) = @_;

# Created: 2018-06-07 10:17:30 (root@localhost)
# Changed: 2018-06-07 10:17:30 (root@localhost)
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

# Created: 2018-06-07 10:17:31 (root@localhost)
# Changed: 2018-06-07 10:17:31 (root@localhost)
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

# Created: 2018-06-07 10:17:30 (root@localhost)
# Changed: 2018-06-07 10:17:30 (root@localhost)
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

# Created: 2018-06-10 12:07:04 (root@localhost)
# Changed: 2018-06-10 12:07:04 (root@localhost)
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

# Created: 2018-06-16 03:42:48 (root@localhost)
# Changed: 2018-06-16 03:42:48 (root@localhost)
$Self->{TicketAcl}->{'AAA Hide all Markets'} = {
  'Possible' => {},
  'PossibleAdd' => {},
  'PossibleNot' => {
    'Ticket' => {
      'DynamicField_Market' => [
        '[RegExp]^.'
      ]
    }
  },
  'Properties' => {},
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

# Created: 2018-06-08 19:37:40 (root@localhost)
# Changed: 2018-06-20 18:54:24 (admin)
$Self->{TicketAcl}->{'AAA Hide all Processes'} = {
  'Possible' => {},
  'PossibleAdd' => {},
  'PossibleNot' => {
    'Process' => [
      '[RegExp]^.'
    ]
  },
  'Properties' => {},
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

# Created: 2018-06-16 03:42:46 (root@localhost)
# Changed: 2018-06-16 03:42:46 (root@localhost)
# Comment: Market BENELUX
$Self->{TicketAcl}->{'AAM Agent BENELUX'} = {
  'Possible' => {},
  'PossibleAdd' => {
    'Ticket' => {
      'DynamicField_Market' => [
        '103',
        'BENELUX'
      ]
    }
  },
  'PossibleNot' => {},
  'Properties' => {
    'User' => {
      'Role' => [
        'Agent::1stLvl::BENELUX',
        'Agent::2ndLvl::BENELUX',
        'Agent::3rdLvl::BENELUX'
      ]
    }
  },
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

# Created: 2018-06-16 03:42:46 (root@localhost)
# Changed: 2018-06-16 03:42:46 (root@localhost)
# Comment: Market DACH
$Self->{TicketAcl}->{'AAM Agent DACH'} = {
  'Possible' => {},
  'PossibleAdd' => {
    'Ticket' => {
      'DynamicField_Market' => [
        '102',
        'DACH'
      ]
    }
  },
  'PossibleNot' => {},
  'Properties' => {
    'User' => {
      'Role' => [
        'Agent::1stLvl::DACH',
        'Agent::2ndLvl::DACH',
        'Agent::3rdLvl::DACH'
      ]
    }
  },
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

# Created: 2018-06-08 19:37:34 (root@localhost)
# Changed: 2018-06-20 18:21:24 (admin)
# Comment: Digicam Market DACH
$Self->{TicketAcl}->{'AAM Agent Digicam DACH'} = {
  'Possible' => {},
  'PossibleAdd' => {
    'Ticket' => {
      'DynamicField_Market' => [
        '111',
        'DACH'
      ]
    }
  },
  'PossibleNot' => {},
  'Properties' => {
    'User' => {
      'Group:' => [
        'admin'
      ],
      'Role' => [
        'Digicam::1st-Lvl',
        'Digicam::2nd-Lvl',
        'Digicam::3rd-Lvl'
      ]
    }
  },
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

# Created: 2018-06-08 19:37:35 (root@localhost)
# Changed: 2018-06-08 19:37:35 (root@localhost)
# Comment: IntelliEyes Market BENELUX
$Self->{TicketAcl}->{'AAM Agent IntelliEyes BENELUX'} = {
  'Possible' => {},
  'PossibleAdd' => {
    'Ticket' => {
      'DynamicField_Market' => [
        '132',
        'BENELUX'
      ]
    }
  },
  'PossibleNot' => {},
  'Properties' => {
    'User' => {
      'Role' => [
        'IntelliEyes::CHINA::1st-Lvl',
        'IntelliEyes::CHINA::2nd-Lvl',
        'IntelliEyes::CHINA::3rd-Lvl'
      ]
    }
  },
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

# Created: 2018-06-16 03:42:47 (root@localhost)
# Changed: 2018-06-16 03:42:47 (root@localhost)
# Comment: Market LATAM
$Self->{TicketAcl}->{'AAM Agent LATAM'} = {
  'Possible' => {},
  'PossibleAdd' => {
    'Ticket' => {
      'DynamicField_Market' => [
        '105',
        'LATAM'
      ]
    }
  },
  'PossibleNot' => {},
  'Properties' => {
    'User' => {
      'Role' => [
        'Agent::1stLvl::LATAM',
        'Agent::2ndLvl::LATAM',
        'Agent::3rdLvl::LATAM'
      ]
    }
  },
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

# Created: 2018-06-16 03:42:47 (root@localhost)
# Changed: 2018-06-16 03:42:47 (root@localhost)
# Comment: Market NAM
$Self->{TicketAcl}->{'AAM Agent NAM'} = {
  'Possible' => {},
  'PossibleAdd' => {
    'Ticket' => {
      'DynamicField_Market' => [
        '104',
        'NAM'
      ]
    }
  },
  'PossibleNot' => {},
  'Properties' => {
    'User' => {
      'Role' => [
        'Agent::1stLvl::NAM',
        'Agent::2ndLvl::NAM',
        'Agent::3rdLvl::NAM'
      ]
    }
  },
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

# Created: 2018-06-16 03:42:44 (root@localhost)
# Changed: 2018-06-16 03:42:44 (root@localhost)
# Comment: Market BENELUX
$Self->{TicketAcl}->{'AAM Customer BENELUX'} = {
  'Possible' => {},
  'PossibleAdd' => {
    'Ticket' => {
      'DynamicField_Market' => [
        '103',
        'BENELUX'
      ]
    }
  },
  'PossibleNot' => {},
  'Properties' => {
    'CustomerUser' => {
      'UserCustomerID' => [
        'BENELUX',
        '103'
      ]
    }
  },
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

# Created: 2018-06-16 03:42:44 (root@localhost)
# Changed: 2018-06-16 03:42:44 (root@localhost)
# Comment: Market DACH
$Self->{TicketAcl}->{'AAM Customer DACH'} = {
  'Possible' => {},
  'PossibleAdd' => {
    'Ticket' => {
      'DynamicField_Market' => [
        '102',
        'DACH'
      ]
    }
  },
  'PossibleNot' => {},
  'Properties' => {
    'CustomerUser' => {
      'UserCustomerID' => [
        'DACH',
        '102'
      ]
    }
  },
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

# Created: 2018-06-16 03:42:45 (root@localhost)
# Changed: 2018-06-16 03:42:45 (root@localhost)
# Comment: Market LATAM
$Self->{TicketAcl}->{'AAM Customer LATAM'} = {
  'Possible' => {},
  'PossibleAdd' => {
    'Ticket' => {
      'DynamicField_Market' => [
        '105',
        'LATAM'
      ]
    }
  },
  'PossibleNot' => {},
  'Properties' => {
    'CustomerUser' => {
      'UserCustomerID' => [
        'LATAM',
        '105'
      ]
    }
  },
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

# Created: 2018-06-16 03:42:45 (root@localhost)
# Changed: 2018-06-16 03:42:45 (root@localhost)
# Comment: Market NAM
$Self->{TicketAcl}->{'AAM Customer NAM'} = {
  'Possible' => {},
  'PossibleAdd' => {
    'Ticket' => {
      'DynamicField_Market' => [
        '104',
        'NAM'
      ]
    }
  },
  'PossibleNot' => {},
  'Properties' => {
    'CustomerUser' => {
      'UserCustomerID' => [
        'NAM',
        '104'
      ]
    }
  },
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

# Created: 2018-06-08 19:37:35 (root@localhost)
# Changed: 2018-06-08 19:37:35 (root@localhost)
# Comment: IntelliEyes Market DACH
$Self->{TicketAcl}->{'AAM IntelliEyes DACH'} = {
  'Possible' => {},
  'PossibleAdd' => {
    'Ticket' => {
      'DynamicField_Market' => [
        '131',
        'DACH'
      ]
    }
  },
  'PossibleNot' => {},
  'Properties' => {
    'User' => {
      'Role' => [
        'IntelliEyes::DACH::1st-Lvl',
        'IntelliEyes::DACH::2nd-Lvl',
        'IntelliEyes::DACH::3rd-Lvl'
      ]
    }
  },
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

# Created: 2018-06-08 19:37:35 (root@localhost)
# Changed: 2018-06-08 19:37:35 (root@localhost)
# Comment: Medoptics Market
$Self->{TicketAcl}->{'AAM Medoptics'} = {
  'Possible' => {},
  'PossibleAdd' => {
    'Ticket' => {
      'DynamicField_Market' => [
        '120',
        'Medoptics'
      ]
    }
  },
  'PossibleNot' => {},
  'Properties' => {
    'User' => {
      'Role' => [
        '[RegExp]Medoptics'
      ]
    }
  },
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

# Created: 2018-06-08 19:37:36 (root@localhost)
# Changed: 2018-06-20 18:54:16 (admin)
$Self->{TicketAcl}->{'AAP Admin Processes'} = {
  'Possible' => {
    'Process' => [
      '[RegExp]^.'
    ]
  },
  'PossibleAdd' => {},
  'PossibleNot' => {},
  'Properties' => {
    'User' => {
      'Group_rw' => [
        'admin'
      ]
    }
  },
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

# Created: 2018-06-08 19:37:41 (root@localhost)
# Changed: 2018-06-08 19:37:41 (root@localhost)
$Self->{TicketAcl}->{'AAP General Processes'} = {
  'Possible' => {},
  'PossibleAdd' => {
    'Process' => [
      'Process-DIGIRfi'
    ]
  },
  'PossibleNot' => {},
  'Properties' => {
    'CustomerUser' => {
      'UserCustomerID' => [
        '[RegExp]^.'
      ]
    }
  },
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

    return;
}
1;
