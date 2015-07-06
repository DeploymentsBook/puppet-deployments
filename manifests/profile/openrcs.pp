class deployments::profile::openrcs(
  $openrcs = {},
) {

  validate_hash($openrcs)

  create_resources(deployments::profile::openrc, $openrcs)
}
