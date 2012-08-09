class puppetvcs::git($ssh_key = '') {
  file { "/usr/local/bin/refresh-puppet-manifests-and-modules":
    source => "puppet:///modules/puppetvcs/refresh-puppet-manifests-and-modules",
    mode => "0755",
    owner => "root"
  }

  cron { "refresh-puppet-manifests-and-modules":
    command => "ssh_key=${ssh_key} /usr/local/bin/refresh-puppet-manifests-and-modules"
  }
}
