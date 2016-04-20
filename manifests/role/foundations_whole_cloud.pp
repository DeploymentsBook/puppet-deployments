class deployments::role::foundations_whole_cloud {
  include deployments::role::foundations_block_storage
  include deployments::role::foundations_object_storage
  include deployments::role::foundations_public_cloud
}

include deployments::role::foundations_whole_cloud
