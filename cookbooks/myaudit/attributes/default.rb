default['audit']['fetcher'] = 'chef-server-automate'
default['audit']['reporter'] = 'chef-server-automate'
default['audit']['token'] = 'Rsl82sXVPrgGV9_QrhWRxnUQ9iQ='
case node['os']
# rubocop:disable Style/TrailingCommaInHashLiteral, Style/TrailingCommaInArrayLiteral
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
# rubocop:enable Style/TrailingCommaInHashLiteral, Style/TrailingCommaInArrayLiteral