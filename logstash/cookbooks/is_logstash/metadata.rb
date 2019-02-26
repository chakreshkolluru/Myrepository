name 'is_logstash'
maintainer 'Chakresh'
maintainer_email 'chakresh.kolluru@infostretch.com'
license 'Logstash'
description 'Installs/Configures logstash'
long_description 'Installs/Configures logstash'
version '0.1.0'
supports 'ubuntu'
issues_url 'https://github.com/learn-chef/custom_apache/issues'
source_url 'https://github.com/learn-chef/custom_apache'
chef_version '>= 13.0' if respond_to?(:chef_version)

depends 'stack-java'
# he `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/logstash/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/logstash'
