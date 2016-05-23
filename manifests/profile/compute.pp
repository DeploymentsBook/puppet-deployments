class deployments::profile::compute
{
  include ::nova
  include ::nova::compute
  include ::nova::compute::libvirt
  include ::nova::compute::neutron
  include ::nova::network::neutron
  include ::neutron

  class { '::neutron::agents::ml2::ovs':
    bridge_uplinks   => undef,
    bridge_mappings  => undef,
    enable_tunneling => hiera('neutron::agents::ml2::ovs::enable_tunneling'),
    tunnel_types     => hiera('neutron::agents::ml2::ovs::tunnel_types'),
    local_ip         => hiera('neutron::agents::ml2::ovs::local_ip'),
  }
}
