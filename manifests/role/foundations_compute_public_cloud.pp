class deployments::role::foundations_compute {
  include deployments::profile::base
  include deployments::profile::compute
  include ::ceilometer::agent::polling
  include ::ceilometer::agent::auth
}

include deployments::role::foundations_compute
