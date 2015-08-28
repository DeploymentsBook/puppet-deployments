class deployments::profile::compute
{
  include ::nova
  include ::nova::compute
  include ::nova::compute::libvirt
}
