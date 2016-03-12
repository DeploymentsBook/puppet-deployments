define deployments::profile::openrc(
  $path,
  $tenant,
  $user,
  $password,
) {
  file { $path:
    owner   => 'root',
    group   => 'sudo',
    mode    => '0660',
    content => template("${module_name}/openrc.erb")
  }
}
