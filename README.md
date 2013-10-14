# ohai-ipmi cookbook

Install an ipmi Ohai plugin for detecting if an IPMI device is available. Also
installs extra packages if desired, and potentially a nagios plugin.

# Requirements

`dmidecode` is required for detecting IPMI. For further attributes to be
detected, you must install the `ipmitool` package with the ipmitool recipe.

# Usage

Include the recipe you want to utilize.

# Attributes

Creates the `ipmi` attribute:

```javascript
{
  "ipmi": {
    "available": true
  }
}
```

 - `default['ohai-ipmi']['packages']['ipmitool']` - Set the version of ipmitool
   to install, Default: nil - install the latest version.

# Recipes

- `ohai-ipmi::default`: Install the ipmi plugin to make the basic `available`
  attribute populated.
- `ohai-ipmi::ipmitool`: If ipmi is available, install the `ipmitool` package via
  your package manager.
- `ohai-ipmi::freeipmi`: Install the freeipmi tool if ipmi is available.
- `ohai-ipmi::nagios`: Install a nagios check plugin for all IPMI sensors (basic.)

# To-Do

 - Populate additional attributes like network interfaces and user lists.

# Author

Author:: ZippyKid Inc (<support@zippykid.com>)

