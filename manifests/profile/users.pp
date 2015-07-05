# creates users/roles/tenant for a normal user
class deployments::profile::users(
  $project  = "test_project",
  $username = "test",
  $password = "test",
) {

  keystone_tenant { $project:
    ensure      => present,
    enabled     => true,
    description => "OpenStack Deployments Book Test Project",
  }

  keystone_user { $username:
    ensure   => 'present',
    enabled  => true,
    email    => "root@localhost",
    password => $password,
    tenant   => $project,
  }

  keystone_user_role { "${username}@${project}":
    ensure => present,
    roles  => ['_member_'],
  }
}
