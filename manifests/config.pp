class mail::config {
	file {
		'postfix main.cf':
			ensure => present,
			owner => root,
			group => root,
			mode => 0644,
			content => Template('mail/main.cf.erb');

		'postfix master.cf':
			ensure => present,
			owner => root,
			group => root,
			mode => 0644,
			content => Template('mail/master.cf.erb');
	}
}
