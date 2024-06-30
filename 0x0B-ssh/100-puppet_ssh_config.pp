#!/usr/bin/env bash
# make changes to config file using poppet

file {'/etc/ssh/ssh_config':
  ensure => 'present',
}

file_line {'Turn off passwd auth':
  path	  => '/etc/ssh/ssh_config',
  line    => 'PasswordAuthentication no',
  match	  => 'passwordAuthentication yes',
  replace => 'true',
}

file_line {'Use a Identity file':
  path    => '/etc/ssh/ssh_config',
  line    => 'IdentityFile ~/.ssh/config',
  match   => 'Identityfile',
  ensure  => 'present',
}
