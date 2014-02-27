#
# Cookbook Name:: anim_encoder
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# config

username = node["username"]
checkout_path = "/home/#{username}/anim_encoder"

# install packages

%w{
  pngcrush
  python-opencv
  python-numpy
  python-scipy
}.each do |pkg|
  package pkg do 
    action :install
  end
end


# checkout anim_encodeer

git checkout_path do
  repository "git://github.com/nobii/anim_encoder.git"
  reference "master"
  action :sync
end
