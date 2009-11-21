# coding: utf-8
$: << File.join(File.dirname(__FILE__), *%w[.. lib])
require 'rspec_tag_matchers'

Spec::Runner.configure do |config|
  config.include(RspecTagMatchers)
end

unless defined?(SpecFailed)
  SpecFailed = Spec::Expectations::ExpectationNotMetError
end
