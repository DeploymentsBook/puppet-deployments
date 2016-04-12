# Ubuntu Cloud Archive
class deployments::profile::uca (
  $release,
  $repo,
) {
  include ::apt

  class { '::openstack_extras::repo::debian::ubuntu':
    release         => $release,
    repo            => $repo,
    package_require => true,
  }

  Apt::Source<||> -> Package <||>
}
