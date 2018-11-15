#
# Cookbook:: mypatch
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

execute "apt-get upgrade" do
    command "apt-get upgrade -y"
  end