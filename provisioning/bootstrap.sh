#!/usr/bin/env bash

echo 'solver.allowVendorChange = true' >> /etc/zypp/zypp.conf

# packages
zypper -q ar -f http://download.opensuse.org/repositories/devel:/languages:/ruby/openSUSE_Leap_42.2/devel:languages:ruby.repo
zypper -q --gpg-auto-import-keys --non-interactive ref
zypper -q -n in -t pattern devel_basis
zypper -q -n in libopenssl-devel readline-devel \
    libxml2-devel libxslt-devel ruby2.4-devel \
    python-matplotlib python-matplotlib-tk python-PyYAML

echo -e "\nsetting up ruby...\n"
su - vagrant -c "ln -sf /usr/bin/ruby.ruby2.4 /home/vagrant/bin/ruby"

echo -e "\ndisabling versioned gem binary names...\n"
echo 'install: --no-format-executable' >> /etc/gemrc

echo -e "\ninstalling your bundle...\n"
gem.ruby2.4 install bundler
gem.ruby2.4 install trollolo
