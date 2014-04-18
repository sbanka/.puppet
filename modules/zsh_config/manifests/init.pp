class zsh_config {
  
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
  
  exec { 'set-default-shell-zsh':
    command  => "chsh -s zsh ${id}",
    path     => '/usr/bin',
    require  => Vcsrepo['oh-my-zsh']
  }
  
  file_line { 'zsh-theme':
    path    => "${homedir}/${id}/.zshrc",
    require => Exec['copy-default-zshrc'],
    line    => 'ZSH_THEME="kphoen"',
    match   => '^ZSH_THEME',
  }
  
  # file_line { 'zsh-theme-color':
  #   path    => "${homedir}/${id}/.zshrc",
  #   require => Exec['copy-default-zshrc'],
  #   line    => 'export SOLARIZED_THEME=dark',
  #   after   => '^ZSH_THEME',
  # }
  
}