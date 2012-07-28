class uwsgi {
    package {
        'uwsgi':               ensure => latest;
        'uwsgi-plugin-python': ensure => latest;
    }
}

class { 'uwsgi': }