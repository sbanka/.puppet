class zsh_config {

  # exec { 'download-ohmyzsh':
  #   command  => "wget --no-check-certificate https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh",
  #   path     => ['/usr/local/bin', '/bin', '/usr/bin']
  # }
  
  vcsrepo { 'oh-my-zsh':
    ensure   => present,
    provider => git,
    source   => 'git://github.com/robbyrussell/oh-my-zsh.git',
    path     => '~/.oh-my-zsh'
  }
  
}