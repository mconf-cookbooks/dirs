#
# Cookbook Name:: dirs
# Recipe:: default
# Author:: Leonardo Crauss Daronco (<daronco@mconf.org>)
#
# This file is part of the Mconf project.
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
#

node.override['dirs']['create'] = [node['dirs']['create']] unless node['dirs']['create'].is_a?(Array)
node['dirs']['create'].each do |dir|
  directory dir['path'] do
    owner dir['user']
    group dir['group']
    mode dir['chmod']
    recursive true
    action :create
  end
end
