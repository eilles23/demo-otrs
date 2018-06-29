# OTRS config file (automatically generated)
# VERSION:1.1
package Kernel::Config::Files::ZZZACL;
use strict;
use warnings;
no warnings 'redefine'; ## no critic
use utf8;
sub Load {
    my ($File, $Self) = @_;

# Created: 2018-06-26 16:26:20 (root@localhost)
# Changed: 2018-06-26 16:26:20 (root@localhost)
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

# Created: 2018-06-26 16:26:20 (root@localhost)
# Changed: 2018-06-26 16:26:20 (root@localhost)
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

# Created: 2018-06-26 16:26:19 (root@localhost)
# Changed: 2018-06-26 16:26:19 (root@localhost)
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

# Created: 2018-06-28 20:25:50 (admin)
# Changed: 2018-06-28 20:39:38 (admin)
$Self->{TicketAcl}->{'AAA Hide New Ticket'} = {
  'Possible' => {},
  'PossibleAdd' => {},
  'PossibleNot' => {
    'Action' => [
      'CustomerTicketProcess'
    ]
  },
  'Properties' => {
    'CustomerUser' => {
      'UserCustomerID' => [
        '[RegExp]^([1-9][1-9][0-9]|\\d\\d)$'
      ]
    },
    'User' => {
      'Group_rw' => [
        '[Not]digicam',
        '[Not]medoptics',
        '[Not]intellieyes'
      ]
    }
  },
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

# Created: 2018-06-26 20:31:18 (root@localhost)
# Changed: 2018-06-26 20:31:18 (root@localhost)
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

# Created: 2018-06-26 22:51:15 (root@localhost)
# Changed: 2018-06-26 22:51:15 (root@localhost)
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

# Created: 2018-06-27 22:56:53 (root@localhost)
# Changed: 2018-06-27 22:56:53 (root@localhost)
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

# Created: 2018-06-26 22:51:14 (root@localhost)
# Changed: 2018-06-26 22:51:14 (root@localhost)
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

# Created: 2018-06-26 22:51:13 (root@localhost)
# Changed: 2018-06-27 22:30:53 (admin)
# Comment: Market DACH
$Self->{TicketAcl}->{'AAM Agent DACH'} = {
  'Possible' => {},
  'PossibleAdd' => {
    'Ticket' => {
      'DynamicField_Market' => [
        '102',
        'DACH',
        'AMERICA'
      ]
    }
  },
  'PossibleNot' => {},
  'Properties' => {
    'User' => {
      'Role' => [
        'Agent::1st-Lvl::DACH',
        'Agent::2ndLvl::DACH',
        'Agent::3rdLvl::DACH'
      ]
    }
  },
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

# Created: 2018-06-27 22:56:45 (root@localhost)
# Changed: 2018-06-27 22:56:45 (root@localhost)
# Comment: Digicam All Markets
$Self->{TicketAcl}->{'AAM Agent Digicam'} = {
  'Possible' => {},
  'PossibleAdd' => {
    'Ticket' => {
      'DynamicField_Market' => [
        'PRIVATE',
        'BUSINESS'
      ]
    }
  },
  'PossibleNot' => {},
  'Properties' => {
    'User' => {
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

# Created: 2018-06-27 22:56:47 (root@localhost)
# Changed: 2018-06-27 22:56:47 (root@localhost)
# Comment: IntelliEyes Market CHINA
$Self->{TicketAcl}->{'AAM Agent IntelliEyes CHINA'} = {
  'Possible' => {},
  'PossibleAdd' => {
    'Ticket' => {
      'DynamicField_Market' => [
        '132',
        'CHINA'
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

# Created: 2018-06-26 22:51:15 (root@localhost)
# Changed: 2018-06-26 22:51:15 (root@localhost)
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

# Created: 2018-06-27 22:56:46 (root@localhost)
# Changed: 2018-06-27 22:56:46 (root@localhost)
# Comment: Medoptics Market
$Self->{TicketAcl}->{'AAM Agent Medoptics'} = {
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

# Created: 2018-06-26 22:51:14 (root@localhost)
# Changed: 2018-06-26 22:51:14 (root@localhost)
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

# Created: 2018-06-26 22:51:12 (root@localhost)
# Changed: 2018-06-26 22:51:12 (root@localhost)
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

# Created: 2018-06-26 22:51:12 (root@localhost)
# Changed: 2018-06-26 22:51:12 (root@localhost)
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

# Created: 2018-06-26 22:51:13 (root@localhost)
# Changed: 2018-06-26 22:51:13 (root@localhost)
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

# Created: 2018-06-26 22:51:12 (root@localhost)
# Changed: 2018-06-26 22:51:12 (root@localhost)
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

# Created: 2018-06-27 22:56:46 (root@localhost)
# Changed: 2018-06-27 22:56:46 (root@localhost)
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

# Created: 2018-06-27 22:19:24 (root@localhost)
# Changed: 2018-06-27 22:19:24 (root@localhost)
$Self->{TicketAcl}->{'AAP Admin Markets'} = {
  'Possible' => {},
  'PossibleAdd' => {
    'Ticket' => {
      'DynamicField_Market' => [
        '[RegExp]^.'
      ]
    }
  },
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

# Created: 2018-06-27 22:56:53 (root@localhost)
# Changed: 2018-06-27 22:56:53 (root@localhost)
$Self->{TicketAcl}->{'AAP Admin Processes'} = {
  'Possible' => {},
  'PossibleAdd' => {
    'Process' => [
      '[RegExp]^.'
    ]
  },
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

# Created: 2018-06-27 22:56:48 (root@localhost)
# Changed: 2018-06-28 20:53:55 (admin)
$Self->{TicketAcl}->{'AAP Digicam Agent Processes'} = {
  'Possible' => {},
  'PossibleAdd' => {
    'Process' => [
      'Process-3e624fc75145d4696569f0d54c07cb67',
      'Process-f728bbb6b15ea140b77319ee7962c6db',
      'Process-dd22d29815efb5c33315c7433049ebdc'
    ]
  },
  'PossibleNot' => {},
  'Properties' => {
    'User' => {
      'Group_rw' => [
        'digicam'
      ]
    }
  },
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

# Created: 2018-06-27 22:56:51 (root@localhost)
# Changed: 2018-06-28 20:47:59 (admin)
$Self->{TicketAcl}->{'AAP Digicam Customer Processes'} = {
  'Possible' => {},
  'PossibleAdd' => {
    'Process' => [
      'Process-3e624fc75145d4696569f0d54c07cb67',
      'Process-f728bbb6b15ea140b77319ee7962c6db',
      'Process-dd22d29815efb5c33315c7433049ebdc'
    ]
  },
  'PossibleNot' => {},
  'Properties' => {
    'CustomerUser' => {
      'UserCustomerID' => [
        '110'
      ]
    }
  },
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

# Created: 2018-06-27 22:56:54 (root@localhost)
# Changed: 2018-06-27 22:56:54 (root@localhost)
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

# Created: 2018-06-27 22:56:49 (root@localhost)
# Changed: 2018-06-28 20:54:28 (admin)
$Self->{TicketAcl}->{'AAP Intelli Agent DACH Processes'} = {
  'Possible' => {},
  'PossibleAdd' => {
    'Process' => [
      'Process-017c5c15fd14835979e1fb206e840796',
      'Process-58ad44a52828e35ef1883e5d553094b7',
      'Process-2ac7d5962f79cbc36b1f3777d2d3b80d',
      'Process-4fa625b40b7f7c7a52ed4f40b9b56dc8',
      'Process-71ae297e4933ab772f5e1eafa421c0f5'
    ]
  },
  'PossibleNot' => {},
  'Properties' => {
    'User' => {
      'Group_rw' => [
        'intelliEyes::DACH'
      ]
    }
  },
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

# Created: 2018-06-27 22:56:52 (root@localhost)
# Changed: 2018-06-28 20:59:10 (admin)
$Self->{TicketAcl}->{'AAP Intelli Customer DACH Processes'} = {
  'Possible' => {},
  'PossibleAdd' => {
    'Process' => [
      'Process-017c5c15fd14835979e1fb206e840796',
      'Process-58ad44a52828e35ef1883e5d553094b7',
      'Process-2ac7d5962f79cbc36b1f3777d2d3b80d',
      'Process-4fa625b40b7f7c7a52ed4f40b9b56dc8',
      'Process-71ae297e4933ab772f5e1eafa421c0f5'
    ]
  },
  'PossibleNot' => {},
  'Properties' => {
    'CustomerUser' => {
      'UserCustomerID' => [
        '130',
        '131'
      ]
    }
  },
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

# Created: 2018-06-27 22:56:48 (root@localhost)
# Changed: 2018-06-27 22:56:48 (root@localhost)
$Self->{TicketAcl}->{'AAP Medoptics Agent Processes'} = {
  'Possible' => {},
  'PossibleAdd' => {
    'Process' => [
      'Process-a00f457ce85c119e75b5edf2b37fdf6b',
      'Process-0a713cc388c4410806049e4c87975add',
      'Process-a7217d2c38a7737f65255d0e152e3e2b'
    ]
  },
  'PossibleNot' => {},
  'Properties' => {
    'User' => {
      'Group_rw' => [
        'medoptics'
      ]
    }
  },
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

# Created: 2018-06-27 22:56:52 (root@localhost)
# Changed: 2018-06-28 20:57:57 (admin)
$Self->{TicketAcl}->{'AAP Medoptics Customer Processes'} = {
  'Possible' => {},
  'PossibleAdd' => {
    'Process' => [
      'Process-a00f457ce85c119e75b5edf2b37fdf6b',
      'Process-0a713cc388c4410806049e4c87975add',
      'Process-a7217d2c38a7737f65255d0e152e3e2b'
    ]
  },
  'PossibleNot' => {},
  'Properties' => {
    'CustomerUser' => {
      'UserCustomerID' => [
        '[RegExp]^([1-1][2-2][0-9])$'
      ]
    }
  },
  'PropertiesDatabase' => {},
  'StopAfterMatch' => 0
};

    return;
}
1;
