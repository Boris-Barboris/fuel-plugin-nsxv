#!/usr/bin/env ruby
#^syntax detection
# See https://github.com/bodepd/librarian-puppet-simple for additional docs
#
# Important information for fuel-library:
# With librarian-puppet-simple you *must* remove the existing folder from the
# repo prior to trying to run librarian-puppet as it will not remove the folder
# for you and you may run into some errors.

# Pull in puppetlabs-stdlib
mod 'stdlib',
    :git => 'https://github.com/fuel-infra/puppetlabs-stdlib.git',
    :ref => '4.9.0'

# Pull in puppetlabs-inifile
mod 'inifile',
    :git => 'https://github.com/fuel-infra/puppetlabs-inifile.git',
    :ref => '1.4.2'

# Pull in puppet-neutron
mod 'openstack-neutron',
    :git => 'https://github.com/fuel-infra/puppet-neutron.git',
    :ref => 'stable/mitaka'

# Pull in puppet-nova
mod 'openstack-nova',
    :git => 'https://github.com/fuel-infra/puppet-nova.git',
    :ref => 'stable/mitaka'

# Pull in puppet-openstacklib
mod 'openstack-openstacklib',
    :git => 'https://github.com/fuel-infra/puppet-openstacklib.git',
    :ref => 'stable/mitaka'

# Pull in puppet-keystone
mod 'openstack-keystone',
    :git => 'https://github.com/fuel-infra/puppet-keystone.git',
    :ref => 'stable/mitaka'

mod 'openstack-vswitch',
    :git => 'https://github.com/openstack/puppet-vswitch.git',
    :ref => 'mitaka-eol'

mod 'openstack-cinder',
    :git => 'https://github.com/openstack/puppet-cinder.git',
    :ref => 'mitaka-eol'

mod 'openstack-glance',
    :git => 'https://github.com/openstack/puppet-glance.git',
    :ref => 'mitaka-eol'

mod 'puppetlabs-concat',
    :git => 'https://github.com/puppetlabs/puppetlabs-concat.git',
    :ref => '2.2.1'

mod 'puppet-staging',
    :git => 'https://github.com/voxpupuli/puppet-staging.git',
    :ref => 'dbea7c12454166fd316040930dc6401ec9f377d6'

mod 'puppetlabs-apt',
    :git => 'https://github.com/puppetlabs/puppetlabs-apt.git',
    :ref => '2.2.1'
