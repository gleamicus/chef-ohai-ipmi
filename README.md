# ohai-ipmi cookbook

Install an ipmi Ohai plugin for detecting if an IPMI device is available.

# Requirements

`dmidecode` is required for detecting IPMI. For further attributes to be
detected, you must install the `ipmitool` package.

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

# Recipes

- `ohai-ipmi::default`: Install the ipmi plugin to make the basic `available`
  attribute populated.
- `ohai-ipmi::extra`: If ipmi is available, install the `ipmitool` package via
  your package manager.

# To-Do

 - Populate additional attributes like network interfaces and user lists.

# Author

Author:: ZippyKid Inc (<support@zippykid.com>)
