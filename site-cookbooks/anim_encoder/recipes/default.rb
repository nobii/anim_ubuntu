#
# Cookbook Name:: anim_encoder
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

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
