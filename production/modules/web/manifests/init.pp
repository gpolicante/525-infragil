
class web {

	package {'apache2':
		ensure => present
		}

	service {'apache2':
		ensure => stopped,
		enable => true
		}

} 
