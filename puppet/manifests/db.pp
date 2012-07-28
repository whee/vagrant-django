class { 'postgresql': }

class { 'postgresql::server':
    listen => '*',
    port => 5432
}

pg_user { 'vagrant':
    ensure   => present,
    password => 'vagrant',
    createdb => true,
}