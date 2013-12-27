class zsh_config {

  # exec { 'download-ohmyzsh':
  #   command  => "wget --no-check-certificate https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh",
  #   path     => ['/usr/local/bin', '/bin', '/usr/bin']
  # }
  
  exec { 'download-ohmyzsh':
    command  => "git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh",
    path     => ['/usr/local/bin', '/bin', '/usr/bin']
  }
  
}