Common OpenStack Deployments book deployments module

This module is to be used in collaboration with puppet-data used to configure 
your environment and the in book exercises.

Learn more about "Common OpenStack Deployments: Real World Examples for Systems
Administrators and Engineers" at http://deploymentsbook.com/

#### Known Issues

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
