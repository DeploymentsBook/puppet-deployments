class deployments::profile::base {
  include deployments::profile::openrcs
  include deployments::profile::uca
  include ::ntp
  include ::openstacklib::openstackclient

  # add an alias to /etc/hosts to ensure sudo works
  host { $hostname:
    ip => $ipaddress,
  }
}
