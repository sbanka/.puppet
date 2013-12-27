# $mainUser = "simon"
$mainUser = $id

$desiredPackages = [
  'git',
  'atop',
  'mtr',
  'mc'
]

# $undesiredPackages = [
#   'avahi-daemon'
# ]

package { $desiredPackages:
  ensure => installed
}

package { $undesiredPackages:
  ensure => purged
}

# class { 'vagrant':
#   version => '1.2.7'
# }

# include google-chrome
