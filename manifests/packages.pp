class mail::packages {
	@package {
		'sendmail':
			ensure => present;

		'postfix':
			ensure => present;
	}

	realize(Package["$mail::mta"])
}
