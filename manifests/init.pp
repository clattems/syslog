class rsyslog {
package { 'rsyslog':
    ensure => 'installed',
}
file { "/etc/rsyslog.conf":
ensure => file,
mode => 755,
owner => root,
group => root,
source => "puppet:///modules/rsyslog/rsyslog.conf"
}
service { 'rsyslog':
    ensure => 'running',
}
}
