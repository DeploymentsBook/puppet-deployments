class deployments::role::singlenode {
  include deployments::role::foundations_block_storage
  include deployments::role::foundations_compute
  include deployments::role::foundations_object_storage
  include deployments::role::foundations_public_cloud
}

include deployments::role::singlenode
