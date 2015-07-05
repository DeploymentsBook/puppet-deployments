class deployments::profile::cinder
{
  include ::cinder
  include ::cinder::api
  include ::cinder::config
  include ::cinder::volume
  include ::cinder::keystone::auth
  include ::cinder::db::mysql
}
