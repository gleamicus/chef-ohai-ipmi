default['ipmi']['available'] = false

default['ohai-ipmi']['packages']['ipmitool'] = {name: 'ipmitool'}

if platform_family?('rhel')
  default['ohai-ipmi']['packages']['freeipmi-tools'] = {name: 'freeipmi'}
else
  default['ohai-ipmi']['packages']['freeipmi-tools'] = {name: 'freeipmi-tools'}
end
