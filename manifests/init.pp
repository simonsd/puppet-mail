import 'packages.pp'
import 'config.pp'

class mail (
	$mta = 'postfix'
) {
	include 'mail::packages'
	include 'mail::config'

	Class['mail::packages'] -> Class['mail::config']
}
