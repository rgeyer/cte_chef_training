#
# Cookbook Name:: rjg_chef
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

rs_utils_marker :begin

log "Hello there to the CTE dev team"

package_name = value_for_platform(
  ["centos", "redhat"] => { "default" => "httpd" },
  ["ubuntu", "debian"] => { "default" => "apache2" }
)

log "The package that will be installed is #{package_name}"

package package_name do
  action :install
end

log "The input from the dashboard is #{node[:rjg_chef][:custom_input]}"

rs_utils_marker :end
