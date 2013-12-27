$homedir = $id ? {
  root    => '',
  default => '/home'
}

include vim_config
include zsh_config
include ssh_keys_config