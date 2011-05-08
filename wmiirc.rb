#!/usr/bin/env ruby

require 'rubygems'
require 'bundler'

Dir.chdir(File.dirname(__FILE__)) { Bundler.setup }

# Bundler seems to change your yaml processor to Psych -- which doesn't work that well...
# http://stackoverflow.com/questions/4980877/rails-error-couldnt-parse-yaml
require 'yaml'
YAML::ENGINE.yamler= 'syck'

$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'wmiirc/loader'
Wmiirc::Loader.run
