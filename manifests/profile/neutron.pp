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
}
