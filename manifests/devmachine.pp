$homedir = $id ? {
  root    => '',
  default => '/home'
}

include vim_config
include zsh_config