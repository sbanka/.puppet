case $::osfamily {
  'FreeBSD': { 
    include pkgng
    Package { provider => pkgng}
  }
}

# $mainUser = "simon"
$mainUser = $id

$desiredPackages = [
  'git',
  'atop',
  'mtr',
  'mc'
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
