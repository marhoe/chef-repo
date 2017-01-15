#
# Cookbook Name:: own_cookbook
# Recipe:: own_yum_repos
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

# Loeschen aller nicht benoetigten Repo
['/etc/yum.repos.d/CentOS-Base.repo',
 '/etc/yum.repos.d/CentOS-CR.repo',
 '/etc/yum.repos.d/CentOS-Debuginfo.repo',
 '/etc/yum.repos.d/CentOS-fasttrack.repo',
 '/etc/yum.repos.d/CentOS-Media.repo',
 '/etc/yum.repos.d/CentOS-Sources.repo',
 '/etc/yum.repos.d/CentOS-Vault.repo'].each do |repo_file|
	file repo_file do
		action :delete
	end
end


### Anlegen der Repos
yum_repository 'my_centos_repo_updates' do
  description 'Dies ist mein CentOS Repo Updates'
  baseurl 'http://192.168.220.6/CentOS/7.3.1611/updates/x86_64'
  gpgcheck false
  enabled true
  make_cache false
  action :create
end

yum_repository 'my_centos_repo_release' do
  description 'Dies ist mein CentOS Repo Release'
  baseurl 'http://192.168.220.6/CentOS/7.3.1611/os/x86_64'
  gpgcheck false
  enabled true
  make_cache false
  action :create
end

yum_repository 'my_centos_repo_extras' do
  description 'Dies ist mein CentOS Repo Extras'
  baseurl 'http://192.168.220.6/CentOS/7.3.1611/extras/x86_64'
  gpgcheck false
  enabled true
  make_cache false
  action :create
end

yum_repository 'my_epel_7_repo' do
  description 'Dies ist mein EPEL 7 Repo'
  baseurl 'http://192.168.220.6/epel/7/x86_64'
  gpgcheck false
  enabled true
  make_cache false
  action :create
end
