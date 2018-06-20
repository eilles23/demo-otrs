# OTRS config file (automatically generated)
# VERSION:1.1
package Kernel::Config::Files::ZZZProcessManagement;
use strict;
use warnings;
no warnings 'redefine'; ## no critic
use utf8;
sub Load {
    my ($File, $Self) = @_;
$Self->{'Process'} = {
  'Process-017c5c15fd14835979e1fb206e840796' => {
    'ChangeTime' => '2018-06-16 05:22:26',
    'CreateTime' => '2018-06-16 05:22:26',
    'Name' => 'IntelliEyes :: Incident',
    'Path' => {
      'Activity-169261b8d7fba5c1c76ac8a47d28532a' => {
        'Transition-b2f2c80df7ed1c01ba0e5185c846cb31' => {
          'ActivityEntityID' => 'Activity-61b2b9d8c601c7e4f3cc6faa53a5233c'
        },
        'Transition-efce41201952c0c0b5778d1ab13ea1f1' => {
          'ActivityEntityID' => 'Activity-7f9becb231d6423ff413fde0850fe400'
        }
      },
      'Activity-61b2b9d8c601c7e4f3cc6faa53a5233c' => {
        'Transition-b2f2c80df7ed1c01ba0e5185c846cb31' => {
          'ActivityEntityID' => 'Activity-b0b36e2a264e07526abb2aec5e5de254'
        },
        'Transition-efce41201952c0c0b5778d1ab13ea1f1' => {
          'ActivityEntityID' => 'Activity-7f9becb231d6423ff413fde0850fe400'
        }
      },
      'Activity-7f9becb231d6423ff413fde0850fe400' => {},
      'Activity-952208a7db912c4e9514904e2d7a1d9c' => {
        'Transition-2b1089ad532ca8712045640ce30749ec' => {
          'ActivityEntityID' => 'Activity-169261b8d7fba5c1c76ac8a47d28532a'
        }
      },
      'Activity-b0b36e2a264e07526abb2aec5e5de254' => {
        'Transition-efce41201952c0c0b5778d1ab13ea1f1' => {
          'ActivityEntityID' => 'Activity-7f9becb231d6423ff413fde0850fe400'
        }
      }
    },
    'StartActivity' => 'Activity-952208a7db912c4e9514904e2d7a1d9c',
    'StartActivityDialog' => 'ActivityDialog-972cabf35cb7d75e089718b1d7a0c3d2',
    'State' => 'Active',
    'StateEntityID' => 'S1'
  },
  'Process-0a713cc388c4410806049e4c87975add' => {
    'ChangeTime' => '2018-06-16 05:22:23',
    'CreateTime' => '2018-06-16 05:22:23',
    'Name' => 'Medoptics :: Purchase Order',
    'Path' => {
      'Activity-01a97a7f98a7265f0a3e89469620ba0b' => {
        'Transition-2b1089ad532ca8712045640ce30749ec' => {
          'ActivityEntityID' => 'Activity-914938394795d43d008781923e244d50'
        }
      },
      'Activity-7f9becb231d6423ff413fde0850fe400' => {},
      'Activity-914938394795d43d008781923e244d50' => {
        'Transition-efce41201952c0c0b5778d1ab13ea1f1' => {
          'ActivityEntityID' => 'Activity-7f9becb231d6423ff413fde0850fe400'
        }
      }
    },
    'StartActivity' => 'Activity-01a97a7f98a7265f0a3e89469620ba0b',
    'StartActivityDialog' => 'ActivityDialog-a87f3bc852d6bc9c35f80b999af4e223',
    'State' => 'Active',
    'StateEntityID' => 'S1'
  },
  'Process-2ac7d5962f79cbc36b1f3777d2d3b80d' => {
    'ChangeTime' => '2018-06-16 05:22:24',
    'CreateTime' => '2018-06-16 05:22:24',
    'Name' => 'IntelliEyes :: Renewal of a Service',
    'Path' => {
      'Activity-66bf74a0c0015efe542f2bece71fe2a1' => {
        'Transition-efce41201952c0c0b5778d1ab13ea1f1' => {
          'ActivityEntityID' => 'Activity-7f9becb231d6423ff413fde0850fe400',
          'TransitionAction' => [
            'TransitionAction-6eae0ba8fd49ce0ef14f06e4c7ec1193'
          ]
        }
      },
      'Activity-7f9becb231d6423ff413fde0850fe400' => {},
      'Activity-96ef2c1c634c9ae57aca4617b636d3a0' => {
        'Transition-2b1089ad532ca8712045640ce30749ec' => {
          'ActivityEntityID' => 'Activity-66bf74a0c0015efe542f2bece71fe2a1'
        }
      }
    },
    'StartActivity' => 'Activity-96ef2c1c634c9ae57aca4617b636d3a0',
    'StartActivityDialog' => 'ActivityDialog-ecdf799f815895ab268e52778e70b87e',
    'State' => 'Active',
    'StateEntityID' => 'S1'
  },
  'Process-3e624fc75145d4696569f0d54c07cb67' => {
    'ChangeTime' => '2018-06-16 05:22:29',
    'CreateTime' => '2018-06-16 05:22:29',
    'Name' => 'Digicam :: Hardware Order',
    'Path' => {
      'Activity-5584d84b10ca0f779fce263789f59196' => {
        'Transition-9c2e7a0bc6fb94d26e310eb1817b478c' => {
          'ActivityEntityID' => 'Activity-7f9becb231d6423ff413fde0850fe400',
          'TransitionAction' => [
            'TransitionAction-680a39e47dd8327943de20dc8498e34a'
          ]
        },
        'Transition-b94dd4d420b01214eabc4a1224cd3828' => {
          'ActivityEntityID' => 'Activity-c56063b1265f5e014a1c235e3db3464c',
          'TransitionAction' => [
            'TransitionAction-3ec358befc37c68eb0dd463d6382df47'
          ]
        }
      },
      'Activity-60ea13d38683f81b0afe1e26acc9f10c' => {
        'Transition-2b1089ad532ca8712045640ce30749ec' => {
          'ActivityEntityID' => 'Activity-cb04bc78166babd2c2a28cb10413cf3f',
          'TransitionAction' => [
            'TransitionAction-3ec358befc37c68eb0dd463d6382df47',
            'TransitionAction-7b3028f075c6e8c6e52efed183c1470d'
          ]
        }
      },
      'Activity-7f9becb231d6423ff413fde0850fe400' => {},
      'Activity-c56063b1265f5e014a1c235e3db3464c' => {
        'Transition-bbe2363e064615326c8683d97cb10da4' => {
          'ActivityEntityID' => 'Activity-7f9becb231d6423ff413fde0850fe400',
          'TransitionAction' => [
            'TransitionAction-6eae0ba8fd49ce0ef14f06e4c7ec1193'
          ]
        }
      },
      'Activity-cb04bc78166babd2c2a28cb10413cf3f' => {
        'Transition-07803975a9d21552a1875829e60709b4' => {
          'ActivityEntityID' => 'Activity-5584d84b10ca0f779fce263789f59196',
          'TransitionAction' => [
            'TransitionAction-7b3028f075c6e8c6e52efed183c1470d'
          ]
        },
        'Transition-24de3342986ebd964058f8bd9dd2bf35' => {
          'ActivityEntityID' => 'Activity-5584d84b10ca0f779fce263789f59196',
          'TransitionAction' => [
            'TransitionAction-a0bc31792ae23f62df1ad85ffb69434f'
          ]
        },
        'Transition-9c2e7a0bc6fb94d26e310eb1817b478c' => {
          'ActivityEntityID' => 'Activity-7f9becb231d6423ff413fde0850fe400',
          'TransitionAction' => [
            'TransitionAction-680a39e47dd8327943de20dc8498e34a'
          ]
        }
      }
    },
    'StartActivity' => 'Activity-60ea13d38683f81b0afe1e26acc9f10c',
    'StartActivityDialog' => 'ActivityDialog-10eb27c46a100249f964313da4ff7c6d',
    'State' => 'Active',
    'StateEntityID' => 'S1'
  },
  'Process-4fa625b40b7f7c7a52ed4f40b9b56dc8' => {
    'ChangeTime' => '2018-06-16 05:22:27',
    'CreateTime' => '2018-06-16 05:22:27',
    'Name' => 'IntelliEyes :: Request for Information',
    'Path' => {
      'Activity-169261b8d7fba5c1c76ac8a47d28532a' => {
        'Transition-b2f2c80df7ed1c01ba0e5185c846cb31' => {
          'ActivityEntityID' => 'Activity-61b2b9d8c601c7e4f3cc6faa53a5233c'
        },
        'Transition-efce41201952c0c0b5778d1ab13ea1f1' => {
          'ActivityEntityID' => 'Activity-7f9becb231d6423ff413fde0850fe400'
        }
      },
      'Activity-61b2b9d8c601c7e4f3cc6faa53a5233c' => {
        'Transition-b2f2c80df7ed1c01ba0e5185c846cb31' => {
          'ActivityEntityID' => 'Activity-b0b36e2a264e07526abb2aec5e5de254'
        },
        'Transition-efce41201952c0c0b5778d1ab13ea1f1' => {
          'ActivityEntityID' => 'Activity-7f9becb231d6423ff413fde0850fe400'
        }
      },
      'Activity-7f9becb231d6423ff413fde0850fe400' => {},
      'Activity-93305e8b382d091f5c184de43f6c277f' => {
        'Transition-2b1089ad532ca8712045640ce30749ec' => {
          'ActivityEntityID' => 'Activity-169261b8d7fba5c1c76ac8a47d28532a',
          'TransitionAction' => []
        }
      },
      'Activity-b0b36e2a264e07526abb2aec5e5de254' => {
        'Transition-efce41201952c0c0b5778d1ab13ea1f1' => {
          'ActivityEntityID' => 'Activity-7f9becb231d6423ff413fde0850fe400'
        }
      }
    },
    'StartActivity' => 'Activity-93305e8b382d091f5c184de43f6c277f',
    'StartActivityDialog' => 'ActivityDialog-f51d5073b14f2b08e2473a1c4c7dec55',
    'State' => 'Active',
    'StateEntityID' => 'S1'
  },
  'Process-58ad44a52828e35ef1883e5d553094b7' => {
    'ChangeTime' => '2018-06-16 05:22:25',
    'CreateTime' => '2018-06-16 05:22:25',
    'Name' => 'IntelliEyes :: New Service',
    'Path' => {
      'Activity-0d702419cf4285ac041f314d672dec49' => {
        'Transition-2b1089ad532ca8712045640ce30749ec' => {
          'ActivityEntityID' => 'Activity-66bf74a0c0015efe542f2bece71fe2a1',
          'TransitionAction' => [
            'TransitionAction-890c5a21acd1b24b05fe71114895e7e3'
          ]
        }
      },
      'Activity-66bf74a0c0015efe542f2bece71fe2a1' => {
        'Transition-efce41201952c0c0b5778d1ab13ea1f1' => {
          'ActivityEntityID' => 'Activity-7f9becb231d6423ff413fde0850fe400',
          'TransitionAction' => [
            'TransitionAction-6eae0ba8fd49ce0ef14f06e4c7ec1193'
          ]
        }
      },
      'Activity-7f9becb231d6423ff413fde0850fe400' => {}
    },
    'StartActivity' => 'Activity-0d702419cf4285ac041f314d672dec49',
    'StartActivityDialog' => 'ActivityDialog-589e9b65f7f28e38a2b3a324dc7a8db8',
    'State' => 'Active',
    'StateEntityID' => 'S1'
  },
  'Process-71ae297e4933ab772f5e1eafa421c0f5' => {
    'ChangeTime' => '2018-06-16 05:22:25',
    'CreateTime' => '2018-06-16 05:22:25',
    'Name' => 'IntelliEyes :: Termination of a Service',
    'Path' => {
      'Activity-2e6f9234b3aac745239385d9b9c7dacb' => {
        'Transition-efce41201952c0c0b5778d1ab13ea1f1' => {
          'ActivityEntityID' => 'Activity-7f9becb231d6423ff413fde0850fe400',
          'TransitionAction' => [
            'TransitionAction-6eae0ba8fd49ce0ef14f06e4c7ec1193'
          ]
        }
      },
      'Activity-7f9becb231d6423ff413fde0850fe400' => {},
      'Activity-cb5872d1a24495c7be4e5df260a80c0b' => {
        'Transition-2b1089ad532ca8712045640ce30749ec' => {
          'ActivityEntityID' => 'Activity-2e6f9234b3aac745239385d9b9c7dacb',
          'TransitionAction' => [
            'TransitionAction-890c5a21acd1b24b05fe71114895e7e3'
          ]
        }
      }
    },
    'StartActivity' => 'Activity-cb5872d1a24495c7be4e5df260a80c0b',
    'StartActivityDialog' => 'ActivityDialog-419513a51a8176ca38e9f61f92c06cbc',
    'State' => 'Active',
    'StateEntityID' => 'S1'
  },
  'Process-a00f457ce85c119e75b5edf2b37fdf6b' => {
    'ChangeTime' => '2018-06-16 05:22:23',
    'CreateTime' => '2018-06-16 05:22:23',
    'Name' => 'Medoptics :: Incident',
    'Path' => {
      'Activity-169261b8d7fba5c1c76ac8a47d28532a' => {
        'Transition-b2f2c80df7ed1c01ba0e5185c846cb31' => {
          'ActivityEntityID' => 'Activity-61b2b9d8c601c7e4f3cc6faa53a5233c'
        },
        'Transition-efce41201952c0c0b5778d1ab13ea1f1' => {
          'ActivityEntityID' => 'Activity-7f9becb231d6423ff413fde0850fe400'
        }
      },
      'Activity-3fef22e0add552140d2b90d1a4389776' => {
        'Transition-2b1089ad532ca8712045640ce30749ec' => {
          'ActivityEntityID' => 'Activity-169261b8d7fba5c1c76ac8a47d28532a'
        }
      },
      'Activity-61b2b9d8c601c7e4f3cc6faa53a5233c' => {
        'Transition-b2f2c80df7ed1c01ba0e5185c846cb31' => {
          'ActivityEntityID' => 'Activity-b0b36e2a264e07526abb2aec5e5de254'
        },
        'Transition-efce41201952c0c0b5778d1ab13ea1f1' => {
          'ActivityEntityID' => 'Activity-7f9becb231d6423ff413fde0850fe400'
        }
      },
      'Activity-7f9becb231d6423ff413fde0850fe400' => {},
      'Activity-b0b36e2a264e07526abb2aec5e5de254' => {
        'Transition-efce41201952c0c0b5778d1ab13ea1f1' => {
          'ActivityEntityID' => 'Activity-7f9becb231d6423ff413fde0850fe400'
        }
      }
    },
    'StartActivity' => 'Activity-3fef22e0add552140d2b90d1a4389776',
    'StartActivityDialog' => 'ActivityDialog-c42225a401e9bd99ea7309bf33b7d946',
    'State' => 'Active',
    'StateEntityID' => 'S1'
  },
  'Process-a7217d2c38a7737f65255d0e152e3e2b' => {
    'ChangeTime' => '2018-06-16 05:22:24',
    'CreateTime' => '2018-06-16 05:22:24',
    'Name' => 'Medoptics :: Request for Information',
    'Path' => {
      'Activity-02c5fb19033e9a196471a5108ec7c8c2' => {
        'Transition-2b1089ad532ca8712045640ce30749ec' => {
          'ActivityEntityID' => 'Activity-169261b8d7fba5c1c76ac8a47d28532a'
        }
      },
      'Activity-169261b8d7fba5c1c76ac8a47d28532a' => {
        'Transition-b2f2c80df7ed1c01ba0e5185c846cb31' => {
          'ActivityEntityID' => 'Activity-61b2b9d8c601c7e4f3cc6faa53a5233c'
        },
        'Transition-efce41201952c0c0b5778d1ab13ea1f1' => {
          'ActivityEntityID' => 'Activity-7f9becb231d6423ff413fde0850fe400'
        }
      },
      'Activity-61b2b9d8c601c7e4f3cc6faa53a5233c' => {
        'Transition-b2f2c80df7ed1c01ba0e5185c846cb31' => {
          'ActivityEntityID' => 'Activity-b0b36e2a264e07526abb2aec5e5de254'
        },
        'Transition-efce41201952c0c0b5778d1ab13ea1f1' => {
          'ActivityEntityID' => 'Activity-7f9becb231d6423ff413fde0850fe400'
        }
      },
      'Activity-7f9becb231d6423ff413fde0850fe400' => {},
      'Activity-b0b36e2a264e07526abb2aec5e5de254' => {
        'Transition-efce41201952c0c0b5778d1ab13ea1f1' => {
          'ActivityEntityID' => 'Activity-7f9becb231d6423ff413fde0850fe400'
        }
      }
    },
    'StartActivity' => 'Activity-02c5fb19033e9a196471a5108ec7c8c2',
    'StartActivityDialog' => 'ActivityDialog-d618f797b777e494ca8de8ee997d1e50',
    'State' => 'Active',
    'StateEntityID' => 'S1'
  },
  'Process-dd22d29815efb5c33315c7433049ebdc' => {
    'ChangeTime' => '2018-06-16 05:22:28',
    'CreateTime' => '2018-06-16 05:22:28',
    'Name' => 'Digicam :: Request for Information',
    'Path' => {
      'Activity-169261b8d7fba5c1c76ac8a47d28532a' => {
        'Transition-b2f2c80df7ed1c01ba0e5185c846cb31' => {
          'ActivityEntityID' => 'Activity-61b2b9d8c601c7e4f3cc6faa53a5233c',
          'TransitionAction' => [
            'TransitionAction-95ab9b458a9b8ba8e6067e706f2b282a'
          ]
        },
        'Transition-efce41201952c0c0b5778d1ab13ea1f1' => {
          'ActivityEntityID' => 'Activity-7f9becb231d6423ff413fde0850fe400',
          'TransitionAction' => []
        }
      },
      'Activity-61b2b9d8c601c7e4f3cc6faa53a5233c' => {
        'Transition-b2f2c80df7ed1c01ba0e5185c846cb31' => {
          'ActivityEntityID' => 'Activity-b0b36e2a264e07526abb2aec5e5de254',
          'TransitionAction' => [
            'TransitionAction-95ab9b458a9b8ba8e6067e706f2b282a'
          ]
        },
        'Transition-efce41201952c0c0b5778d1ab13ea1f1' => {
          'ActivityEntityID' => 'Activity-7f9becb231d6423ff413fde0850fe400'
        }
      },
      'Activity-7f9becb231d6423ff413fde0850fe400' => {},
      'Activity-b0b36e2a264e07526abb2aec5e5de254' => {
        'Transition-efce41201952c0c0b5778d1ab13ea1f1' => {
          'ActivityEntityID' => 'Activity-7f9becb231d6423ff413fde0850fe400'
        }
      },
      'Activity-f68e0ef84a4c445df2bb1c8480904540' => {
        'Transition-2b1089ad532ca8712045640ce30749ec' => {
          'ActivityEntityID' => 'Activity-169261b8d7fba5c1c76ac8a47d28532a',
          'TransitionAction' => [
            'TransitionAction-3ec358befc37c68eb0dd463d6382df47'
          ]
        }
      }
    },
    'StartActivity' => 'Activity-f68e0ef84a4c445df2bb1c8480904540',
    'StartActivityDialog' => 'ActivityDialog-13b13f405accaa0e61b9022fbb8cf68d',
    'State' => 'Active',
    'StateEntityID' => 'S1'
  },
  'Process-f728bbb6b15ea140b77319ee7962c6db' => {
    'ChangeTime' => '2018-06-16 05:22:28',
    'CreateTime' => '2018-06-16 05:22:28',
    'Name' => 'Digicam :: Incident',
    'Path' => {
      'Activity-169261b8d7fba5c1c76ac8a47d28532a' => {
        'Transition-b2f2c80df7ed1c01ba0e5185c846cb31' => {
          'ActivityEntityID' => 'Activity-61b2b9d8c601c7e4f3cc6faa53a5233c'
        },
        'Transition-efce41201952c0c0b5778d1ab13ea1f1' => {
          'ActivityEntityID' => 'Activity-7f9becb231d6423ff413fde0850fe400'
        }
      },
      'Activity-3ce971f82fd1602d983a5f32cc3c3c8e' => {
        'Transition-2b1089ad532ca8712045640ce30749ec' => {
          'ActivityEntityID' => 'Activity-169261b8d7fba5c1c76ac8a47d28532a',
          'TransitionAction' => [
            'TransitionAction-3ec358befc37c68eb0dd463d6382df47'
          ]
        }
      },
      'Activity-61b2b9d8c601c7e4f3cc6faa53a5233c' => {
        'Transition-b2f2c80df7ed1c01ba0e5185c846cb31' => {
          'ActivityEntityID' => 'Activity-b0b36e2a264e07526abb2aec5e5de254'
        },
        'Transition-efce41201952c0c0b5778d1ab13ea1f1' => {
          'ActivityEntityID' => 'Activity-7f9becb231d6423ff413fde0850fe400'
        }
      },
      'Activity-7f9becb231d6423ff413fde0850fe400' => {},
      'Activity-b0b36e2a264e07526abb2aec5e5de254' => {
        'Transition-efce41201952c0c0b5778d1ab13ea1f1' => {
          'ActivityEntityID' => 'Activity-7f9becb231d6423ff413fde0850fe400'
        }
      }
    },
    'StartActivity' => 'Activity-3ce971f82fd1602d983a5f32cc3c3c8e',
    'StartActivityDialog' => 'ActivityDialog-fdc1878fe58e7bd59e69a327ce2d54f5',
    'State' => 'Active',
    'StateEntityID' => 'S1'
  }
};

$Self->{'Process::State'} = {
  'S1' => 'Active',
  'S2' => 'Inactive',
  'S3' => 'FadeAway'
};

$Self->{'Process::Activity'} = {
  'Activity-01a97a7f98a7265f0a3e89469620ba0b' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-a87f3bc852d6bc9c35f80b999af4e223'
    },
    'ChangeTime' => '2018-06-16 05:22:23',
    'CreateTime' => '2018-06-16 05:22:23',
    'ID' => '1',
    'Name' => 'Medoptics :: Purchase Order'
  },
  'Activity-02c5fb19033e9a196471a5108ec7c8c2' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-d618f797b777e494ca8de8ee997d1e50'
    },
    'ChangeTime' => '2018-06-16 05:22:24',
    'CreateTime' => '2018-06-16 05:22:24',
    'ID' => '8',
    'Name' => 'Medoptics :: Request for Information'
  },
  'Activity-0d702419cf4285ac041f314d672dec49' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-589e9b65f7f28e38a2b3a324dc7a8db8'
    },
    'ChangeTime' => '2018-06-16 05:22:25',
    'CreateTime' => '2018-06-16 05:22:25',
    'ID' => '11',
    'Name' => 'IntelliEyes :: New Service'
  },
  'Activity-169261b8d7fba5c1c76ac8a47d28532a' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-fd2204c0d3197c1af116ae4873f08f6f',
      '2' => 'ActivityDialog-1d379346f36166a17220f346d7c6f189'
    },
    'ChangeTime' => '2018-06-16 05:22:23',
    'CreateTime' => '2018-06-16 05:22:23',
    'ID' => '4',
    'Name' => ':: Provide Solution (1st-Lvl)'
  },
  'Activity-2e6f9234b3aac745239385d9b9c7dacb' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-f715c4ebaabc46ba58f320062f5d00b5'
    },
    'ChangeTime' => '2018-06-16 05:22:25',
    'CreateTime' => '2018-06-16 05:22:25',
    'ID' => '12',
    'Name' => 'IntelliEyes :: Stop Service'
  },
  'Activity-3ce971f82fd1602d983a5f32cc3c3c8e' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-fdc1878fe58e7bd59e69a327ce2d54f5'
    },
    'ChangeTime' => '2018-06-16 05:22:28',
    'CreateTime' => '2018-06-16 05:22:28',
    'ID' => '17',
    'Name' => 'Digicam :: Incident'
  },
  'Activity-3fef22e0add552140d2b90d1a4389776' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-c42225a401e9bd99ea7309bf33b7d946'
    },
    'ChangeTime' => '2018-06-16 05:22:23',
    'CreateTime' => '2018-06-16 05:22:23',
    'ID' => '5',
    'Name' => 'Medoptics :: Incident'
  },
  'Activity-5584d84b10ca0f779fce263789f59196' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-2c231bf683304ad0d6825ab962bd3d71',
      '2' => 'ActivityDialog-ae0510244f5606099f06c184380b9b40'
    },
    'ChangeTime' => '2018-06-16 05:22:29',
    'CreateTime' => '2018-06-16 05:22:29',
    'ID' => '18',
    'Name' => 'Digicam :: Accounting'
  },
  'Activity-60ea13d38683f81b0afe1e26acc9f10c' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-10eb27c46a100249f964313da4ff7c6d'
    },
    'ChangeTime' => '2018-06-16 05:22:29',
    'CreateTime' => '2018-06-16 05:22:29',
    'ID' => '19',
    'Name' => 'Digicam :: Hardware Order'
  },
  'Activity-61b2b9d8c601c7e4f3cc6faa53a5233c' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-fd2204c0d3197c1af116ae4873f08f6f',
      '2' => 'ActivityDialog-1d379346f36166a17220f346d7c6f189'
    },
    'ChangeTime' => '2018-06-16 05:22:23',
    'CreateTime' => '2018-06-16 05:22:23',
    'ID' => '6',
    'Name' => ':: Provide Solution (2nd-Lvl)'
  },
  'Activity-66bf74a0c0015efe542f2bece71fe2a1' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-6ecba786773ac6fa6c5886f90e4e9930'
    },
    'ChangeTime' => '2018-06-16 05:22:24',
    'CreateTime' => '2018-06-16 05:22:24',
    'ID' => '9',
    'Name' => 'IntelliEyes :: Service Activation'
  },
  'Activity-7f9becb231d6423ff413fde0850fe400' => {
    'ActivityDialog' => '',
    'ChangeTime' => '2018-06-16 05:22:23',
    'CreateTime' => '2018-06-16 05:22:23',
    'ID' => '2',
    'Name' => 'Completed'
  },
  'Activity-914938394795d43d008781923e244d50' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-d16cda92e181520218cddf1e913100b8'
    },
    'ChangeTime' => '2018-06-16 05:22:23',
    'CreateTime' => '2018-06-16 05:22:23',
    'ID' => '3',
    'Name' => 'Medoptics :: Order Desk'
  },
  'Activity-93305e8b382d091f5c184de43f6c277f' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-f51d5073b14f2b08e2473a1c4c7dec55'
    },
    'ChangeTime' => '2018-06-16 05:22:27',
    'CreateTime' => '2018-06-16 05:22:27',
    'ID' => '15',
    'Name' => 'IntelliEyes :: Request for Information'
  },
  'Activity-952208a7db912c4e9514904e2d7a1d9c' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-972cabf35cb7d75e089718b1d7a0c3d2'
    },
    'ChangeTime' => '2018-06-16 05:22:26',
    'CreateTime' => '2018-06-16 05:22:26',
    'ID' => '14',
    'Name' => 'InteliEyes :: Incident'
  },
  'Activity-96ef2c1c634c9ae57aca4617b636d3a0' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-ecdf799f815895ab268e52778e70b87e'
    },
    'ChangeTime' => '2018-06-16 05:22:24',
    'CreateTime' => '2018-06-16 05:22:24',
    'ID' => '10',
    'Name' => 'IntelliEyes :: Renewal of a Service'
  },
  'Activity-b0b36e2a264e07526abb2aec5e5de254' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-fd2204c0d3197c1af116ae4873f08f6f'
    },
    'ChangeTime' => '2018-06-16 05:22:23',
    'CreateTime' => '2018-06-16 05:22:23',
    'ID' => '7',
    'Name' => ':: Provide Solution (3rd-Lvl)'
  },
  'Activity-c56063b1265f5e014a1c235e3db3464c' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-e6b2eb119300123794709a54a44b7d28',
      '2' => 'ActivityDialog-33428d1d211895a5de7408495e7dd7df',
      '3' => 'ActivityDialog-2ffa0f30cfd77beaa37508cbdeb926ee'
    },
    'ChangeTime' => '2018-06-16 05:22:29',
    'CreateTime' => '2018-06-16 05:22:29',
    'ID' => '20',
    'Name' => 'Digicam :: Delivery'
  },
  'Activity-cb04bc78166babd2c2a28cb10413cf3f' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-7f0197b4e79885c587531d591f767377'
    },
    'ChangeTime' => '2018-06-16 05:22:29',
    'CreateTime' => '2018-06-16 05:22:29',
    'ID' => '21',
    'Name' => 'Digicam :: Order Desk'
  },
  'Activity-cb5872d1a24495c7be4e5df260a80c0b' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-419513a51a8176ca38e9f61f92c06cbc'
    },
    'ChangeTime' => '2018-06-16 05:22:25',
    'CreateTime' => '2018-06-16 05:22:25',
    'ID' => '13',
    'Name' => 'IntelliEyes :: Termination of a Service'
  },
  'Activity-f68e0ef84a4c445df2bb1c8480904540' => {
    'ActivityDialog' => {
      '1' => 'ActivityDialog-13b13f405accaa0e61b9022fbb8cf68d'
    },
    'ChangeTime' => '2018-06-16 05:22:28',
    'CreateTime' => '2018-06-16 05:22:28',
    'ID' => '16',
    'Name' => 'Digicam :: Request for Information'
  }
};

$Self->{'Process::ActivityDialog'} = {
  'ActivityDialog-10eb27c46a100249f964313da4ff7c6d' => {
    'ChangeTime' => '2018-06-16 05:22:29',
    'CreateTime' => '2018-06-16 05:22:29',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Please fill in the purchase order from.',
    'FieldOrder' => [
      'DynamicField_Market',
      'DynamicField_DIGIproduct',
      'DynamicField_DIGIdeliveryAddress'
    ],
    'Fields' => {
      'DynamicField_DIGIdeliveryAddress' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      },
      'DynamicField_DIGIproduct' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      },
      'DynamicField_Market' => {
        'DefaultValue' => 'Digicam',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '0'
      }
    },
    'Interface' => [
      'AgentInterface',
      'CustomerInterface'
    ],
    'Name' => 'Digicam :: Hardware Order',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-13b13f405accaa0e61b9022fbb8cf68d' => {
    'ChangeTime' => '2018-06-16 05:22:28',
    'CreateTime' => '2018-06-16 05:22:28',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Please describe your problem.',
    'FieldOrder' => [
      'DynamicField_Market',
      'DynamicField_DIGIproduct',
      'DynamicField_DIGImodelnr',
      'Article'
    ],
    'Fields' => {
      'Article' => {
        'Config' => {
          'CommunicationChannel' => 'Internal',
          'IsVisibleForCustomer' => '0'
        },
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      },
      'DynamicField_DIGImodelnr' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_DIGIproduct' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_Market' => {
        'DefaultValue' => 'Digicam',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '0'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'Digicam :: Request for Information',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-1d379346f36166a17220f346d7c6f189' => {
    'ChangeTime' => '2018-06-16 05:22:28',
    'CreateTime' => '2018-06-16 05:22:23',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Escalate the ticket to the next level.',
    'FieldOrder' => [
      'DynamicField_Description',
      'DynamicField_Escalate'
    ],
    'Fields' => {
      'DynamicField_Description' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_Escalate' => {
        'DefaultValue' => '1',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '0'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => ':: Escalate',
    'Permission' => 'rw',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => 'level up'
  },
  'ActivityDialog-2c231bf683304ad0d6825ab962bd3d71' => {
    'ChangeTime' => '2018-06-16 05:22:29',
    'CreateTime' => '2018-06-16 05:22:29',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Please process the order.',
    'FieldOrder' => [
      'Article'
    ],
    'Fields' => {
      'Article' => {
        'Config' => {
          'CommunicationChannel' => 'Internal',
          'IsVisibleForCustomer' => '0',
          'TimeUnits' => '0'
        },
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'Digicam :: Consumer Accounting',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-2ffa0f30cfd77beaa37508cbdeb926ee' => {
    'ChangeTime' => '2018-06-16 05:22:29',
    'CreateTime' => '2018-06-16 05:22:29',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Please fill in the fields.',
    'FieldOrder' => [
      'DynamicField_DIGIdeliveryTime',
      'DynamicField_DIGIdeliveryAddress'
    ],
    'Fields' => {
      'DynamicField_DIGIdeliveryAddress' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_DIGIdeliveryTime' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'Digicam :: Delivery :: Sent',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-33428d1d211895a5de7408495e7dd7df' => {
    'ChangeTime' => '2018-06-16 05:22:29',
    'CreateTime' => '2018-06-16 05:22:29',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Please fill in the fields.',
    'FieldOrder' => [],
    'Fields' => {},
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'Digicam :: Delivery :: Packed',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-419513a51a8176ca38e9f61f92c06cbc' => {
    'ChangeTime' => '2018-06-16 05:22:25',
    'CreateTime' => '2018-06-16 05:22:25',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Please fill in the fields.',
    'FieldOrder' => [
      'DynamicField_Market',
      'Article'
    ],
    'Fields' => {
      'Article' => {
        'Config' => {
          'CommunicationChannel' => 'Internal',
          'IsVisibleForCustomer' => '0'
        },
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => 'Please describe the reason for cancellation',
        'Display' => '2'
      },
      'DynamicField_Market' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'IntelliEyes :: Termination of a Service',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-589e9b65f7f28e38a2b3a324dc7a8db8' => {
    'ChangeTime' => '2018-06-16 05:22:25',
    'CreateTime' => '2018-06-16 05:22:25',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Please upload the service order as attachment',
    'FieldOrder' => [
      'DynamicField_Market',
      'Article'
    ],
    'Fields' => {
      'Article' => {
        'Config' => {
          'CommunicationChannel' => 'Internal',
          'IsVisibleForCustomer' => '0'
        },
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      },
      'DynamicField_Market' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'IntelliEyes :: New Service',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => 'Don\'t forget to upload the serivce order as attachment!',
    'SubmitButtonText' => 'Submit & Upload'
  },
  'ActivityDialog-6ecba786773ac6fa6c5886f90e4e9930' => {
    'ChangeTime' => '2018-06-16 05:22:24',
    'CreateTime' => '2018-06-16 05:22:24',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Please activate the requested service for the customer.',
    'FieldOrder' => [
      'DynamicField_Solution',
      'DynamicField_INTELLIDuration'
    ],
    'Fields' => {
      'DynamicField_INTELLIDuration' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_Solution' => {
        'DefaultValue' => 'approved',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '0'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'IntelliEyes :: Service Activation',
    'Permission' => 'rw',
    'RequiredLock' => '1',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => 'Activate Service'
  },
  'ActivityDialog-7f0197b4e79885c587531d591f767377' => {
    'ChangeTime' => '2018-06-16 05:22:29',
    'CreateTime' => '2018-06-16 05:22:29',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Please review the customer provided data.',
    'FieldOrder' => [
      'DynamicField_DIGIorderApproval',
      'DynamicField_DIGIorderNumber',
      'DynamicField_DIGIinvoiceNumber'
    ],
    'Fields' => {
      'DynamicField_DIGIinvoiceNumber' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      },
      'DynamicField_DIGIorderApproval' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      },
      'DynamicField_DIGIorderNumber' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'Digicam :: Order Desk',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-972cabf35cb7d75e089718b1d7a0c3d2' => {
    'ChangeTime' => '2018-06-16 05:22:26',
    'CreateTime' => '2018-06-16 05:22:26',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Please describe your problem.',
    'FieldOrder' => [
      'DynamicField_Market',
      'Article',
      'Priority'
    ],
    'Fields' => {
      'Article' => {
        'Config' => {
          'CommunicationChannel' => 'Internal',
          'IsVisibleForCustomer' => '0',
          'TimeUnits' => '2'
        },
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_Market' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      },
      'Priority' => {
        'DefaultValue' => '2 low',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'InteliEyes :: Incident',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-a87f3bc852d6bc9c35f80b999af4e223' => {
    'ChangeTime' => '2018-06-16 05:22:23',
    'CreateTime' => '2018-06-16 05:22:23',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Please fill in the purchase order from.',
    'FieldOrder' => [
      'DynamicField_Market',
      'DynamicField_MEDproductid',
      'Article'
    ],
    'Fields' => {
      'Article' => {
        'Config' => {
          'CommunicationChannel' => 'Internal',
          'IsVisibleForCustomer' => '0',
          'TimeUnits' => '0'
        },
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_MEDproductid' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_Market' => {
        'DefaultValue' => 'Medoptics',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '0'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'Medoptics :: Purchase Order',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-ae0510244f5606099f06c184380b9b40' => {
    'ChangeTime' => '2018-06-16 05:22:29',
    'CreateTime' => '2018-06-16 05:22:29',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Please process the order.',
    'FieldOrder' => [],
    'Fields' => {},
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'Digicam :: Enterprise Accounting',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-c42225a401e9bd99ea7309bf33b7d946' => {
    'ChangeTime' => '2018-06-16 05:22:23',
    'CreateTime' => '2018-06-16 05:22:23',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Please describe your problem.',
    'FieldOrder' => [
      'DynamicField_Market',
      'DynamicField_MEDproductid',
      'Article',
      'Priority'
    ],
    'Fields' => {
      'Article' => {
        'Config' => {
          'CommunicationChannel' => 'Internal',
          'IsVisibleForCustomer' => '0'
        },
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      },
      'DynamicField_MEDproductid' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_Market' => {
        'DefaultValue' => 'Medoptics',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '0'
      },
      'Priority' => {
        'DefaultValue' => '3 normal',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'Medoptics :: Incident',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-d16cda92e181520218cddf1e913100b8' => {
    'ChangeTime' => '2018-06-16 05:22:23',
    'CreateTime' => '2018-06-16 05:22:23',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Verify the purchase order',
    'FieldOrder' => [
      'DynamicField_Solution',
      'DynamicField_MEDproductid',
      'Article'
    ],
    'Fields' => {
      'Article' => {
        'Config' => {
          'CommunicationChannel' => 'Internal',
          'IsVisibleForCustomer' => '0'
        },
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => 'Please note any additionaly information',
        'Display' => '1'
      },
      'DynamicField_MEDproductid' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_Solution' => {
        'DefaultValue' => 'approved',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '0'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'Medoptics :: Process Order',
    'Permission' => 'rw',
    'RequiredLock' => '1',
    'SubmitAdviceText' => 'Read carefully',
    'SubmitButtonText' => 'Verify'
  },
  'ActivityDialog-d618f797b777e494ca8de8ee997d1e50' => {
    'ChangeTime' => '2018-06-16 05:22:24',
    'CreateTime' => '2018-06-16 05:22:24',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Please describe your problem.',
    'FieldOrder' => [
      'DynamicField_Market',
      'Article'
    ],
    'Fields' => {
      'Article' => {
        'Config' => {
          'CommunicationChannel' => 'Internal',
          'IsVisibleForCustomer' => '0'
        },
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      },
      'DynamicField_Market' => {
        'DefaultValue' => 'Medoptics',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '0'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'Medoptics :: Request for Information',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-e6b2eb119300123794709a54a44b7d28' => {
    'ChangeTime' => '2018-06-16 05:22:29',
    'CreateTime' => '2018-06-16 05:22:29',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Please fill in the fields.',
    'FieldOrder' => [
      'Priority',
      'DynamicField_DIGIdeliveryDuration'
    ],
    'Fields' => {
      'DynamicField_DIGIdeliveryDuration' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      },
      'Priority' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'Digicam :: Delivery :: In Progress',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-ecdf799f815895ab268e52778e70b87e' => {
    'ChangeTime' => '2018-06-16 05:22:24',
    'CreateTime' => '2018-06-16 05:22:24',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Request the renewal of a service',
    'FieldOrder' => [
      'DynamicField_Market',
      'DynamicField_INTELLIDuration'
    ],
    'Fields' => {
      'DynamicField_INTELLIDuration' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      },
      'DynamicField_Market' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'IntelliEyes :: Renewal of a Service',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-f51d5073b14f2b08e2473a1c4c7dec55' => {
    'ChangeTime' => '2018-06-16 05:22:27',
    'CreateTime' => '2018-06-16 05:22:27',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Please describe your problem.',
    'FieldOrder' => [
      'DynamicField_Market',
      'Article'
    ],
    'Fields' => {
      'Article' => {
        'Config' => {
          'CommunicationChannel' => 'Internal',
          'IsVisibleForCustomer' => '1'
        },
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      },
      'DynamicField_Market' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'IntelliEyes :: Request for Information',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-f715c4ebaabc46ba58f320062f5d00b5' => {
    'ChangeTime' => '2018-06-16 05:22:25',
    'CreateTime' => '2018-06-16 05:22:25',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Stop the service immediately or remark the cancellation',
    'FieldOrder' => [
      'DynamicField_Solution'
    ],
    'Fields' => {
      'DynamicField_Solution' => {
        'DefaultValue' => 'approved',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '0'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'IntelliEyes :: Stop Service',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => 'Close'
  },
  'ActivityDialog-fd2204c0d3197c1af116ae4873f08f6f' => {
    'ChangeTime' => '2018-06-16 05:22:28',
    'CreateTime' => '2018-06-16 05:22:23',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Please describe your solution.',
    'FieldOrder' => [
      'State',
      'DynamicField_Description',
      'DynamicField_Solution'
    ],
    'Fields' => {
      'DynamicField_Description' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_Solution' => {
        'DefaultValue' => '1',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '0'
      },
      'State' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => 'completion status',
        'Display' => '2'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => ':: Provide Solution',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  },
  'ActivityDialog-fdc1878fe58e7bd59e69a327ce2d54f5' => {
    'ChangeTime' => '2018-06-16 05:22:28',
    'CreateTime' => '2018-06-16 05:22:28',
    'DescriptionLong' => '',
    'DescriptionShort' => 'Please describe your problem.',
    'FieldOrder' => [
      'DynamicField_Market',
      'DynamicField_DIGIproduct',
      'DynamicField_DIGImodelnr',
      'DynamicField_DIGIserialnr',
      'DynamicField_DIGIinvoiceNumber',
      'DynamicField_DIGIwarranty',
      'Article',
      'Priority'
    ],
    'Fields' => {
      'Article' => {
        'Config' => {
          'CommunicationChannel' => 'Internal',
          'IsVisibleForCustomer' => '0',
          'TimeUnits' => '2'
        },
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_DIGIinvoiceNumber' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '1'
      },
      'DynamicField_DIGImodelnr' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      },
      'DynamicField_DIGIproduct' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      },
      'DynamicField_DIGIserialnr' => {
        'DefaultValue' => '',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      },
      'DynamicField_DIGIwarranty' => {
        'Display' => '1'
      },
      'DynamicField_Market' => {
        'DefaultValue' => 'Digicam',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '0'
      },
      'Priority' => {
        'DefaultValue' => '3 normal',
        'DescriptionLong' => '',
        'DescriptionShort' => '',
        'Display' => '2'
      }
    },
    'Interface' => [
      'AgentInterface'
    ],
    'Name' => 'Digicam :: Incident',
    'Permission' => '',
    'RequiredLock' => '',
    'SubmitAdviceText' => '',
    'SubmitButtonText' => ''
  }
};

$Self->{'Process::Transition'} = {
  'Transition-07803975a9d21552a1875829e60709b4' => {
    'ChangeTime' => '2018-06-16 05:22:29',
    'Condition' => {
      '1' => {
        'Fields' => {
          'DynamicField_DIGIrequestApproval' => {
            'Match' => '1',
            'Type' => 'Module'
          }
        },
        'Type' => 'and'
      },
      '2' => {
        'Fields' => {
          'DynamicField_Market' => {
            'Match' => 'EUROPE',
            'Type' => 'Regexp'
          }
        },
        'Type' => 'and'
      }
    },
    'ConditionLinking' => 'and',
    'CreateTime' => '2018-06-16 05:22:29',
    'Name' => 'Digicam :: Order Request :: Europe'
  },
  'Transition-24de3342986ebd964058f8bd9dd2bf35' => {
    'ChangeTime' => '2018-06-16 05:22:29',
    'Condition' => {
      '1' => {
        'Fields' => {
          'DynamicField_DIGIrequestApproval' => {
            'Match' => '1',
            'Type' => 'String'
          }
        },
        'Type' => 'and'
      },
      '2' => {
        'Fields' => {
          'DynamicField_Market' => {
            'Match' => 'AMERICA',
            'Type' => 'Regexp'
          }
        },
        'Type' => 'and'
      }
    },
    'ConditionLinking' => 'and',
    'CreateTime' => '2018-06-16 05:22:29',
    'Name' => 'Digicam :: Order Request :: America'
  },
  'Transition-2b1089ad532ca8712045640ce30749ec' => {
    'ChangeTime' => '2018-06-16 05:22:23',
    'Condition' => {
      '1' => {
        'Fields' => {
          'DynamicField_ProcessManagementProcessID' => {
            'Match' => '^.',
            'Type' => 'Regexp'
          }
        },
        'Type' => 'and'
      }
    },
    'ConditionLinking' => 'and',
    'CreateTime' => '2018-06-16 05:22:23',
    'Name' => 'Always Move'
  },
  'Transition-9c2e7a0bc6fb94d26e310eb1817b478c' => {
    'ChangeTime' => '2018-06-16 05:22:29',
    'Condition' => {
      '1' => {
        'Fields' => {
          'DynamicField_DIGIorderApproval' => {
            'Match' => '2',
            'Type' => 'String'
          },
          'DynamicField_DIGIrequestApproval' => {
            'Match' => '2',
            'Type' => 'Regexp'
          }
        },
        'Type' => 'or'
      }
    },
    'ConditionLinking' => 'and',
    'CreateTime' => '2018-06-16 05:22:29',
    'Name' => 'Digicam :: Order Request :: Declined'
  },
  'Transition-b2f2c80df7ed1c01ba0e5185c846cb31' => {
    'ChangeTime' => '2018-06-16 05:22:23',
    'Condition' => {
      '1' => {
        'Fields' => {
          'DynamicField_Escalate' => {
            'Match' => '1',
            'Type' => 'Regexp'
          }
        },
        'Type' => 'and'
      }
    },
    'ConditionLinking' => 'and',
    'CreateTime' => '2018-06-16 05:22:23',
    'Name' => 'Escalation'
  },
  'Transition-b94dd4d420b01214eabc4a1224cd3828' => {
    'ChangeTime' => '2018-06-16 05:22:29',
    'Condition' => {
      '1' => {
        'Fields' => {
          'DynamicField_DIGIorderApproval' => {
            'Match' => '1',
            'Type' => 'Regexp'
          }
        },
        'Type' => 'and'
      }
    },
    'ConditionLinking' => 'and',
    'CreateTime' => '2018-06-16 05:22:29',
    'Name' => 'Digicam :: Order Request :: Payed'
  },
  'Transition-bbe2363e064615326c8683d97cb10da4' => {
    'ChangeTime' => '2018-06-16 05:22:29',
    'Condition' => {
      '1' => {
        'Fields' => {
          'DynamicField_DIGIorderSent' => {
            'Match' => '1',
            'Type' => 'String'
          }
        },
        'Type' => 'and'
      }
    },
    'ConditionLinking' => 'and',
    'CreateTime' => '2018-06-16 05:22:29',
    'Name' => 'Digicam :: Order Request :: Sent'
  },
  'Transition-efce41201952c0c0b5778d1ab13ea1f1' => {
    'ChangeTime' => '2018-06-16 05:22:23',
    'Condition' => {
      '1' => {
        'Fields' => {
          'DynamicField_Solution' => {
            'Match' => '1',
            'Type' => 'Regexp'
          }
        },
        'Type' => 'and'
      }
    },
    'ConditionLinking' => 'and',
    'CreateTime' => '2018-06-16 05:22:23',
    'Name' => 'Solution'
  }
};

$Self->{'Process::TransitionAction'} = {
  'TransitionAction-3ec358befc37c68eb0dd463d6382df47' => {
    'ChangeTime' => '2018-06-16 05:22:28',
    'Config' => {
      'Queue' => '<OTRS_TICKET_DynamicField_Market_Value>'
    },
    'CreateTime' => '2018-06-16 05:22:28',
    'Module' => 'Kernel::System::ProcessManagement::TransitionAction::TicketQueueSet',
    'Name' => 'Queue::Digicam::<Market>'
  },
  'TransitionAction-680a39e47dd8327943de20dc8498e34a' => {
    'ChangeTime' => '2018-06-16 05:22:29',
    'Config' => {
      'State' => 'close unsuccessful'
    },
    'CreateTime' => '2018-06-16 05:22:29',
    'Module' => 'Kernel::System::ProcessManagement::TransitionAction::TicketStateSet',
    'Name' => 'State::Close unsuccessful'
  },
  'TransitionAction-6eae0ba8fd49ce0ef14f06e4c7ec1193' => {
    'ChangeTime' => '2018-06-16 05:22:24',
    'Config' => {
      'State' => 'close successful'
    },
    'CreateTime' => '2018-06-16 05:22:24',
    'Module' => 'Kernel::System::ProcessManagement::TransitionAction::TicketStateSet',
    'Name' => 'State::Close successful'
  },
  'TransitionAction-7b3028f075c6e8c6e52efed183c1470d' => {
    'ChangeTime' => '2018-06-16 05:22:29',
    'Config' => {
      'Queue' => 'Digicam EUROPE'
    },
    'CreateTime' => '2018-06-16 05:22:29',
    'Module' => 'Kernel::System::ProcessManagement::TransitionAction::TicketQueueSet',
    'Name' => 'Queue::Digicam::EUROPE'
  },
  'TransitionAction-890c5a21acd1b24b05fe71114895e7e3' => {
    'ChangeTime' => '2018-06-16 05:22:25',
    'Config' => {
      'Queue' => '<OTRS_TICKET_DynamicField_Market> 1st Lvl'
    },
    'CreateTime' => '2018-06-16 05:22:25',
    'Module' => 'Kernel::System::ProcessManagement::TransitionAction::TicketQueueSet',
    'Name' => 'Queue::IntelliEyes::<Market>'
  },
  'TransitionAction-95ab9b458a9b8ba8e6067e706f2b282a' => {
    'ChangeTime' => '2018-06-16 05:22:28',
    'Config' => {
      'Escalate' => '0'
    },
    'CreateTime' => '2018-06-16 05:22:28',
    'Module' => 'Kernel::System::ProcessManagement::TransitionAction::DynamicFieldSet',
    'Name' => 'Escalation::Reset'
  },
  'TransitionAction-a0bc31792ae23f62df1ad85ffb69434f' => {
    'ChangeTime' => '2018-06-16 05:22:29',
    'Config' => {
      'Queue' => 'Digicam AMERICA'
    },
    'CreateTime' => '2018-06-16 05:22:29',
    'Module' => 'Kernel::System::ProcessManagement::TransitionAction::TicketQueueSet',
    'Name' => 'Queue::Digicam::AMERICA'
  }
};

    return;
}
1;
