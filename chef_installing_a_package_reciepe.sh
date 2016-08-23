#!/bin/bash
#Here this script can create a recepi to install any package as menctioned
echo "please enter the cookbook name"
read name
cd
cd chef-repo
cd cookbooks
chef generate cookbook $name
cd $name
cd recipes
echo "please enter the name of the package to be installed"
read $package
echo "We are ready to build your recipe"
echo "package "$package" do
        action :install
end" >> default.rb
echo "your recipe is created"


