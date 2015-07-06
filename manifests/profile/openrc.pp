define deployments::profile::openrc(
  $path,
  $tenant,
  $user,
  $password,
) {
  file { $path:
    owner   => 'root',
    group   => 'root',
    mode    => '0700',
    content => template("${module_name}/openrc.erb")
  }
}
