vcsrepo { 'dotfiles':
  path     => "/home/$id/.dotfiles",
  ensure   => present,
  provider => git,
  source   => 'https://github.com/alexishevia/.dotfiles.git'
}

# VIM
include vim_config

# GIT

file { '.gitconfig':
  path   => "/home/$id/.gitconfig",
  ensure => link,
  target => '.dotfiles/.gitconfig.personal',
  require => Vcsrepo['dotfiles']
}

# Ack / Grep

file { '.ackrc':
  path   => "/home/$id/.ackrc",
  ensure => link,
  target => '.dotfiles/.ackrc',
  require => Vcsrepo['dotfiles']
}

# Postgres

file { '.psqlrc':
  path   => "/home/$id/.psqlrc",
  ensure => link,
  target => '.dotfiles/.psqlrc',
  require => Vcsrepo['dotfiles']
}

# Terminator
include terminator_config

# GTK
include gtk_config

# Compiz
include compiz_config

# Unity
include unity_config

# Bash
include bash_config
