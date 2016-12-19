node default {
package {'mysql-server':
ensure => installed,
}
service {'mysql':
ensure => running,
}
file {'/etc/motd':
	content =>"This is my testing content",
}

package { 'httpd':
ensure => installed,
}
service {'httpd':
ensure => running,
enable => true,
}
}
