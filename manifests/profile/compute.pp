class deployments::profile::compute
{
  include ::nova
  include ::nova::compute
  include ::nova::compute::libvirt
  include ::nova::compute::neutron
  include ::nova::network::neutron
  include ::neutron
  include ::neutron::agents::ml2::ovs
}
