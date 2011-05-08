#!/usr/bin/env ruby

require 'rubygems'
require 'bundler'

Dir.chdir(File.dirname(__FILE__)) { Bundler.setup }

$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'wmiirc/loader'
Wmiirc::Loader.run
