class apache {
case $::osfamily {

"Debian": {
	$web = ['apache2']
	exec{'atualizando_repo':
		command => "/usr/bin/apt update"
	    }
	    }
"RedHat": {
	$web = ['httpd']
	service {'firewalld':
		ensure => stopped,
		enable => false
		}

	  }


	  }

package {$web:
	ensure => present
	}

service {$web:
	ensure => running
	}

file{'/var/www/html/index.html':
	source => "puppet:///modules/apache/index",
	ensure => present
    }

}















