class deployments::profile::cinder
{
  include ::cinder
  include ::cinder::api
  include ::cinder::config
  include ::cinder::db::mysql
  include ::cinder::keystone::auth
  include ::cinder::scheduler
  include ::cinder::volume
  include ::cinder::setup_test_volume
}
