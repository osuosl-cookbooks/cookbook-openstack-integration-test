name             'openstack-integration-test'
maintainer       'openstack-chef'
maintainer_email 'openstack-discuss@lists.openstack.org'
license          'Apache-2.0'
description      'Installs and configures the Tempest Integration Test Suite'
version          '18.0.0'

recipe 'openstack-integration-test::create_network', 'Create a test network and subnet for use in kitchen tests'
recipe 'openstack-integration-test::run_tempest', 'Run tempest for use in kitchen tests'
recipe 'openstack-integration-test::setup', 'Installs and configures Tempest'
recipe 'openstack-integration-test::orchestration', 'Setup environment for testing heat'

%w(ubuntu redhat centos).each do |os|
  supports os
end

depends 'openstackclient'
depends 'openstack-common', '>= 18.0.0'
depends 'openstack-image', '>= 18.0.0'

issues_url 'https://launchpad.net/openstack-chef'
source_url 'https://opendev.org/openstack/cookbook-openstack-integration-test'
chef_version '>= 14.0'
