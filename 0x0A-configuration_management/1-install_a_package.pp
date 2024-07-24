#!/usr/bin/pup
#Install a spacific version of flak (2.1.0)
#package {'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
