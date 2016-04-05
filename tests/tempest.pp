class deployments::tests::tempest(
  $control_node,
  $admin_username,
  $admin_tenant_name,
  $admin_password,
)
{

  $keystone_public_endpoint = hiera('keystone::public_endpoint')

  include ::openstacklib::openstackclient

  class { '::tempest':
    debug                  => true,
    use_stderr             => false,
    log_file               => 'tempest.log',
    tempest_clone_owner    => $::id,
    git_clone              => true,
    tempest_clone_path     => '/tmp/tempest',
    lock_path              => '/tmp/tempest',
    configure_images       => true,
    configure_networks     => true,
    identity_uri           => "${keystone_public_endpoint}/v2.0",
    identity_uri_v3        => "${keystone_public_endpoint}/v3",
    admin_username         => $admin_username,
    admin_tenant_name      => $admin_tenant_name,
    admin_password         => $admin_password,
    admin_domain_name      => 'Default',
    auth_version           => 'v3',
    image_name             => 'Cirros 0.3.4',
    image_name_alt         => 'Cirros 0.3.4',
    cinder_available       => true,
    glance_available       => true,
    horizon_available      => true,
    ironic_available       => true,
    nova_available         => true,
    neutron_available      => true,
    ceilometer_available   => true,
    swift_available        => true,
    public_network_name    => 'ext-net',
    dashboard_url          => "http://${control_node}",
    flavor_ref             => '42',
    flavor_ref_alt         => '84',
    image_ssh_user         => 'cirros',
    image_alt_ssh_user     => 'cirros',
    img_file               => 'cirros-0.3.4-x86_64-disk.img',
    compute_build_interval => 10,
    img_dir                => '/tmp/tempest',
  }
}

include deployments::tests::tempest
