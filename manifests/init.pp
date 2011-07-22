import 'packages.pp'
import 'config.pp'

class mail {
	include 'mail::packages'
	include 'mail::config'

	Class['mail::packages'] -> Class['mail::config']
}
