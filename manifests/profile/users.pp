# creates users/roles/tenant for a normal user
class deployments::profile::users(
  $project,
  $username,
  $password,
  $roles,
) {

  keystone_role { $roles:
    ensure => present,
  }

  keystone_tenant { $project:
    ensure      => present,
    enabled     => true,
    description => 'OpenStack Deployments Book Test Project',
  }

  keystone_user { $username:
    ensure   => 'present',
    enabled  => true,
    email    => 'root@localhost',
    password => $password,
  }

  keystone_user_role { "${username}@${project}":
    ensure => present,
    roles  => $roles,
  }
}
