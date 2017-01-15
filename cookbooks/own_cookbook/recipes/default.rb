#
# Cookbook:: own_cookbook
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'own_cookbook::own_yum_repos'
include_recipe 'build-essential'
include_recipe 'chef-client'
include_recipe 'ntp'
