case $::osfamily {
  'FreeBSD': { 
    include pkgng
    Package { provider => pkgng}
  }
}

class { '::ntp':
  servers => [ '0.europe.pool.ntp.org', '2.europe.pool.ntp.org', '0.freebsd.pool.ntp.org' ],
}

# $mainUser = "simon"
$mainUser = $id

$desiredPackages = [
  'git',
  'atop',
  'mtr',
  'mc',
  'zsh',
  'vim'
]

# $undesiredPackages = [
#   'dummypackage'
# ]

package { $desiredPackages:
  ensure => installed
}

# package { $undesiredPackages:
#   ensure => purged
# }

# class { 'vagrant':
#   version => '1.2.7'
# }
