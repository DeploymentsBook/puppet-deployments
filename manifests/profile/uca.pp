# Ubuntu Cloud Archive
class deployments::profile::uca (
  $release,
) {
  include ::apt

  class { '::openstack_extras::repo::debian::ubuntu':
    release         => $release,
    package_require => true,
  }

  Apt::Source<||> -> Package <||>
}
