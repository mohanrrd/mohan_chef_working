#!/bin/bash
cd
cd chef-repo
cd cookbooks
echo "please enter the name of the cook book needed to be created"
read name
chef generate cookbook $name
