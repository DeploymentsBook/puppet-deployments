class deployments::control {
    include ::keystone
    include ::keystone::roles::admin

    $keystone_deps = ['python-pbr', 'python-tz']
    package { $keystone_deps:
        ensure => 'latest',
        before => Service['keystone']
    }
}

include ::deployments::control
