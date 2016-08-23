#!/bin/bash
wget https://packages.chef.io/stable/el/7/chef-server-core-12.8.0-1.el7.x86_64.rpm
rpm -Uvh chef-server-core-12.*
chef-server-ctl reconfigure
echo "Give a user name "
read USER_NAME
echo "Givethe First name"
read FIRST_NAME
echo " Give Last Name"
read LAST_NAME
echo "Please Give Email ID"
read EMAIL
echo "please enter password"
read PASSWORD
echo "please provide filename"
echo "An RSA private key is generated automatically. This is the user’s private key and should be saved to a safe location. The --filename option will save the RSA private key to a specified path."
read FILE_NAME
# An RSA private key is generated automatically. This is the user’s private key and should be saved to a safe location. The --filename option will save the RSA private key to a specified path.
# example chef-server-ctl user-create stevedanno Steve Danno steved@chef.io 'abc123' --filename /path/to/stevedanno.pem 
chef-server-ctl user-create $USER_NAME $FIRST_NAME $LAST_NAME $EMAIL '$PASSWORD' --filename $FILE_NAME
echo " enter organization_name"
read full_organization_name
echo "enter associate user name"
read user_name
echo "file name"
read path
chef-server-ctl org-create short_name '$full_organization_name' --association_user $user_name --filename $path
