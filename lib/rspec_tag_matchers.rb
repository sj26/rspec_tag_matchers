# coding: utf-8
require 'rubygems'
require 'nokogiri'

require 'rspec_tag_matchers/have_tag'

class Nokogiri::XML::Element
  alias body inner_html
end
