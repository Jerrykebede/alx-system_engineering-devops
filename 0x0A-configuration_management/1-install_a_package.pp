# 1-install_flask.pp

# Ensure Python 3.8.10 is installed (if not already managed separately)
package { 'python3':
  ensure => '3.8.10',
}

# Install Flask version 2.1.0 using pip3
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['python3'],  # Ensure Python is installed first
}
