# coding: utf-8
require 'rubygems'
require 'rake'
require 'rake/rdoctask'

begin
  require 'spec/rake/spectask'
rescue LoadError
  begin
    gem 'rspec-rails', '>= 1.0.0'
    require 'spec/rake/spectask'
  rescue LoadError
    puts "RSpec - or one of it's dependencies - is not available. Install it with: sudo gem install rspec-rails"
  end
end

NAME = "rspec_tag_matchers"
SUMMARY = %Q{Implementation of have_tag() RSpec matcher using Nokogiri.}
DESCRIPTION = <<-END
  rspec_tag_matchers provides an implementation of rspec_on_rails'
  have_tag() matcher which does not depend on Rails' assert_select().
  Using Nokogiri instead, the matcher is available to non-Rails projects,
  and enjoys the full flexibility of Nokogiri's advanced and blazing fast 
  CSS and XPath selector support. Forked from rspec_hpricot_matchers.
END
HOMEPAGE = "http://github.com/grimen/#{NAME}"
AUTHOR = "Kyle Hargraves"
EMAIL = "pd@krh.me"
SUPPORT_FILES = %w(README.textile)

begin
  gem 'jeweler', '>= 1.0.0'
  require 'jeweler'
  
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = NAME
    gemspec.summary = SUMMARY
    gemspec.description = DESCRIPTION
    gemspec.homepage = HOMEPAGE
    gemspec.author = AUTHOR
    gemspec.email = EMAIL
    
    gemspec.require_paths = %w{lib}
    gemspec.files = SUPPORT_FILES << %w(MIT-LICENSE Rakefile) << Dir.glob(File.join(*%w[{generators,lib,test} ** *]).to_s)
    gemspec.extra_rdoc_files = SUPPORT_FILES
    
    gemspec.add_dependency 'nokogiri', '>= 1.4.0'
    gemspec.add_dependency 'rspec-rails', '>= 1.2.6'
  end
  
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler - or one of it's dependencies - is not available. Install it with: sudo gem install jeweler -s http://gemcutter.org"
end

desc 'Default: Run specs.'
task :default => :spec

desc %Q{Generate documentation.}
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = NAME
  rdoc.options << '--line-numbers' << '--inline-source' << '--charset=UTF-8'
  rdoc.rdoc_files.include(SUPPORT_FILES)
  rdoc.rdoc_files.include(File.join(*%w[lib ** *.rb]))
end

#if defined?(Spec)
  desc 'Run specs.'
  Spec::Rake::SpecTask.new('spec') do |t|
    t.spec_files = FileList['spec/**/*_spec.rb']
    t.spec_opts = ['-c']
  end
#end
