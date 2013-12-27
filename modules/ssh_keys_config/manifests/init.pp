class ssh_keys_config {

  # file { "${homedir}/${id}/.ssh":
  #   ensure => directory,
  #   mode   => '700',
  #   owner  => $id
  # }
  # 
  # file { "${homedir}/${id}/.ssh/authorized_keys":
  #   ensure  => present,
  #   mode    => '600',
  #   owner   => $id,
  #   require => File["${homedir}/${id}/.ssh"]
  # }
  # 
  # file_line { 'simon-pub-key':
  #   path    => "${homedir}/${id}/.ssh/authorized_keys",
  #   line    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDMdgjQ/jeWwQTaPyy7G5JJAkM+QPNPFkzMldPHJzOxEBzt/M5zAooj0XgbRIDIztolhXhmj8N5QSG5n3Wn9T9e2KpoxrLaVhMV5WGTgMrXMmyT8oXLV3gLxGNHMWFvplSbHLK78EsZQQ1/kBQMyPXB1+FpIuSHVOxaospOQObJ08lvQfvlO7AUUV4ecpFj3PpV5vkKPRS+KfiRm84BeGIu51BL1BClZcOyHZPBQT+DUBjm8y4Nd7pVZRjsiBzZBvUotCbn5+RqWJnu4kyoGoRNmk8pvCx7jGL1G9rE8NNsKlCUWedvyNkDeoWKvleJuzkj3ggfuCj/iTtDoXFR95e3',
  #   require => File["${homedir}/${id}/.ssh/authorized_keys"]
  # }
  
  ssh_authorized_key { 'simon-pub-key':
    user => $id,
    type => 'rsa',
    key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDMdgjQ/jeWwQTaPyy7G5JJAkM+QPNPFkzMldPHJzOxEBzt/M5zAooj0XgbRIDIztolhXhmj8N5QSG5n3Wn9T9e2KpoxrLaVhMV5WGTgMrXMmyT8oXLV3gLxGNHMWFvplSbHLK78EsZQQ1/kBQMyPXB1+FpIuSHVOxaospOQObJ08lvQfvlO7AUUV4ecpFj3PpV5vkKPRS+KfiRm84BeGIu51BL1BClZcOyHZPBQT+DUBjm8y4Nd7pVZRjsiBzZBvUotCbn5+RqWJnu4kyoGoRNmk8pvCx7jGL1G9rE8NNsKlCUWedvyNkDeoWKvleJuzkj3ggfuCj/iTtDoXFR95e3',
  }
}