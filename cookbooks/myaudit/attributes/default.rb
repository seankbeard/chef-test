default['audit']['fetcher'] = 'chef-server-automate'
default['audit']['reporter'] = 'chef-server-automate'

case node['os']
when 'linux'
  default['audit']['profiles'] = [
    {
        name: 'Linux Baseline',
        compliance: 'admin/linux-baseline',
    },
    {
      name:       'DevSec Linux Patch Benchmark',
      compliance: 'admin/linux-patch-baseline',
    },
  ]
end
