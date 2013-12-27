class zsh_config {

  exec { 'create-control-exec':
    command  => "wget --no-check-certificate https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh",
    path     => ['/usr/local/bin']
  }

}