class ssh_keys_config {

  ssh_authorized_key { 'simon-pub-key':
    user => $id,
    type => 'rsa',
    key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDMdgjQ/jeWwQTaPyy7G5JJAkM+QPNPFkzMldPHJzOxEBzt/M5zAooj0XgbRIDIztolhXhmj8N5QSG5n3Wn9T9e2KpoxrLaVhMV5WGTgMrXMmyT8oXLV3gLxGNHMWFvplSbHLK78EsZQQ1/kBQMyPXB1+FpIuSHVOxaospOQObJ08lvQfvlO7AUUV4ecpFj3PpV5vkKPRS+KfiRm84BeGIu51BL1BClZcOyHZPBQT+DUBjm8y4Nd7pVZRjsiBzZBvUotCbn5+RqWJnu4kyoGoRNmk8pvCx7jGL1G9rE8NNsKlCUWedvyNkDeoWKvleJuzkj3ggfuCj/iTtDoXFR95e3',
  }
  
}