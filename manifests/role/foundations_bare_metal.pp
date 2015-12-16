class deployments::role::foundations_bare_metal {
  include deployments::role::foundations
  include deployments::profile::ironic
}

include deployments::role::foundations_bare_metal
