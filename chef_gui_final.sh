#!/bin/bash
wget https://packages.chef.io/stable/el/7/chef-manage-2.4.2-1.el7.x86_64.rpm
rpm -Uvh cef-manage-*
chef-server-ctl install chef-manage

