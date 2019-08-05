require 'rubygems'
require 'bundler'
require 'minitest/autorun'
require "minitest/reporters"
require 'websocket-client-simple'
require 'eventmachine'
require 'websocket-eventmachine-server'
require_relative 'echo_server'

$:.unshift File.expand_path '../lib', File.dirname(__FILE__)

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
