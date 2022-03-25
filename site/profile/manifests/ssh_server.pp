class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCcmY0O7E3APKq9KtKYelX1hb9P5+qdQiKadhbU2Fp6s0ZlD1NMAH7PAA40lgYdhI7DCNYrQjl1InfQv1cbqclkRepYybO7JRtRETSVETjdmOqmeE2mPLoZYkGmPXbxDkWneQwFQauNqGbbjqIJD3nM5y+LlrCXTID/o6m987OC2nUMxzPrWA/mk2Ftwt4rEK875FF8kn6B0fna7ldroB0p8uqxXpL67v/k0CEKWZ0UdrKqhM8cLoBYTlkcpAicTzU8z/e/4GaYarH4gG0hUf4Ntff2YVkxKw75NBabIuBf+XlHoLByiOr6o+WSo3WLEs6JflU64CXB5Vakoo0GkURn',
	}  
}
