class mail::config {
	file {
		'postfix main.cf':
			ensure => present,
			path => '/etc/postfix/main.cf',
			owner => root,
			group => root,
			mode => 0644,
			content => template('mail/main.cf.erb');

		'postfix master.cf':
			ensure => present,
			path => '/etc/postfix/master.cf',
			owner => root,
			group => root,
			mode => 0644,
			content => template('mail/master.cf.erb');
	}
}
