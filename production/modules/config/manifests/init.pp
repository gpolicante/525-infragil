class config {


file{"/etc/puppetlabs/puppet/puppet.conf":
	source => "puppet:///modules/config/puppet.conf",
	ensure => present
    }

file {"/etc/resolv.conf":
	source => "puppet:///modules/config/resolv.conf",
	ensure => present
     }

file {"/etc/hosts":
	source => "puppet:///modules/config/hosts",
	ensure => present
     }


}
