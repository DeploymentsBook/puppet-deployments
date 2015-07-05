# Ubuntu Cloud Archive
class deployments::profile::uca (
  $ensure = 'present',
  $release = 'trusty-updates/kilo',
) {
  include ::apt

  apt::source { 'ubuntu_cloud_archive':
    ensure       => $ensure,
    location     => "http://ubuntu-cloud.archive.canonical.com/ubuntu/${version}",
    release      => $release,
    include      => { 'src' => false },
    architecture => $::architecture,
    key          => '391A9AA2147192839E9DB0315EDB1B62EC4926EA',
    notify       => Class['Apt::Update'],
  }

  Apt::Source<||> -> Package <||>
}
