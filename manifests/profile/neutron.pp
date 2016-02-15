class deployments::profile::neutron
{
  include ::neutron
  include ::neutron::client
  include ::neutron::server
  include ::neutron::db::mysql
  include ::neutron::keystone::auth
  include ::neutron::plugins::ml2
  include ::neutron::agents::ml2::ovs
  include ::neutron::agents::metadata
  include ::neutron::agents::l3
  include ::neutron::agents::dhcp
  include ::neutron::server::notifications

  $network_hash = hiera_hash('neutron_network', false)
  if $network_hash {
    create_resources('neutron_network', $network_hash)
  }

  $subnet_hash = hiera_hash('neutron_subnet', false)
  if $subnet_hash {
    create_resources('neutron_subnet', $subnet_hash)
  }

  $router_hash = hiera_hash('neutron_router', false)
  if $router_hash {
    create_resources('neutron_router', $router_hash)
  }

  $router_interface_hash = hiera_hash('neutron_router_interface', false)
  if $router_interface_hash {
    create_resources('neutron_router_interface', $router_interface_hash)
  }
}
