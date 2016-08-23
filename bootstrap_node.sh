#!/bin/bash
echo "please enter the node ip"
read ip
echo "please enter the user"
read user
echo "please enter the password"
read password 
knife bootstrap $ip -x $user -P $password
