class vim_config {

  file { "$homedir/$id/.vim":
    owner => "$id",
    #group => "$id",
    mode => 755,
    ensure => directory,
    recurse => true,
    source => "puppet:///modules/vim_config/.vim",
  }

  file { "$homedir/$id/.vimrc":
    owner => "$id",
    #group => "$id",
    mode => 644,
    source => "puppet:///modules/vim_config/.vimrc",
  }

  file { "$homedir/$id/.local.vimrc":
    owner => "$id",
    #group => "$id",
    mode => 644,
    source => "puppet:///modules/vim_config/.local.vimrc.using_spaces",
  }

}
