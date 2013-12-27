class zsh_config {

  # exec { 'download-ohmyzsh':
  #   command  => "wget --no-check-certificate https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh",
  #   path     => ['/usr/local/bin', '/bin', '/usr/bin']
  # }
  
  vcsrepo { 'oh-my-zsh':
    ensure   => present,
    provider => git,
    source   => 'git://github.com/robbyrussell/oh-my-zsh.git',
    path     => "${homedir}/${id}/.oh-my-zsh"
  }
  
  exec { 'copy-default-zshrc':
    command  => "cp ${homedir}/${id}/.oh-my-zsh/templates/zshrc.zsh-template ${homedir}/${id}/.zshrc",
    provider => 'shell',
    require  => Vcsrepo['oh-my-zsh']
  }
  
  augeas { 'zshrc':
    context => "${homedir}/${id}/.zshrc",
    require  => Exec['copy-default-zshrc'],
    changes => [
      "set ZSH_THEME blinks",
    ],
  }
}