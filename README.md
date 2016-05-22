Common OpenStack Deployments book deployments module

This module is to be used in collaboration with puppet-data used to configure 
your environment and the in book exercises.

Learn more about "Common OpenStack Deployments: Real World Examples for Systems
Administrators and Engineers" at http://deploymentsbook.com/

#### Known Issues & Work-Arounds

 * Sometimes Openvswitch (ovs) isn't properly running after it is either freshly 
 installed or the node is rebooted. Restarting ovs resolves this.
 
   service openvswitch-switch restart
 
 This issue is covered here: https://bugs.launchpad.net/ubuntu/+source/openvswitch/+bug/1453062
 
 * puppet-glance gives errors if puppet is run after sourcing an openrc file. 
 If you source an openrc file then attempt to run puppet on a node that has glance
 setup, you will get an error when it tries to pull the CirrOS image. If the
 CirrOS image is already pulled down, this error can be ignored. To resolve this problem,
 clear your environment or logout and log back in.
 
 This issue is covered here: https://bugs.launchpad.net/puppet-glance/+bug/1524599

 * If sudo isn't working properly then you will have issues, specifically with ovs.
 ovs will be unable to create interfaces and building VMs will fail because of it.
 The telltale sign is something like this in the ovs logs in /var/log/openvswitch:

   2015-12-27 05:11:35.814 710 ERROR neutron.agent.linux.async_process [-] Error received from [ovsdb-client monitor Interface name,ofport,external_ids --format=json]: sudo: unable to resolve host compute1
 
 The solution to this is to ensure that sudo works without warnings or errors.
 This specific issue shown in the logs simply requires a hosts entry for the node in
 /etc/hosts.
 
 * If running in an OpenStack VM (not-recommended) and using a floating-up, 
 swift-proxy and nova-novncserver will both fail to run because they will be unable
 to assign the floating IP upon start-up.

 * The eth1 interface on your controller node does not have an address, but must be in
 the UP state for floating IP assignment to work. The Puppet configuration sets it
 to up and Upstart brings it up when you boot up, but if you ever find it DOWN
 run: ip link set dev eth1 up

 * We depend upon the Ubuntu/Debian repositories hosted by rabbitmq.com for the
 installation of the RabbitMQ message queuing service. If their website is down, as
 some of our reviewers have encountered, your controller installation using Puppet
 will not succeed and will end with:

   Error: Could not find a suitable provider for rabbitmq_plugin
   
   Error: Could not find a suitable provider for mysql_user
   
   Error: Could not find a suitable provider for vs_bridge
   
   ...

 The only solution for this is to wait until the rabbitmq.com comes back on line
 and try running puppet apply again.
