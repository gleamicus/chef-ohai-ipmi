name             'ohai-ipmi'
maintainer       'ZippyKid Inc'
maintainer_email 'support@zippykid.com'
license          'MIT'
description      'Installs an IPMI ohai plugin for detecting IPMI information.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.8'

depends "build-essential"
depends "ohai"
depends "nagios"
depends "perl"

