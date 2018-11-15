#
# Cookbook:: myhardening
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe 'myhardening::entropy'
include_recipe 'myhardening::auditd'