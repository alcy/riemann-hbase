require 'rubygems'
require 'rubygems/package_task'
require 'find'
 
# Don't include resource forks in tarballs on Mac OS X.
ENV['COPY_EXTENDED_ATTRIBUTES_DISABLE'] = 'true'
ENV['COPYFILE_DISABLE'] = 'true'
 
# Gemspec
gemspec = Gem::Specification.new do |s|
  s.rubyforge_project = 'riemann-hbase'
 
  s.name = 'riemann-hbase'
  s.version = '0.0.2'
  s.author = 'Mohit Chawla'
  s.email = 'mohit.chawla.binary@gmail.com'
  s.homepage = 'https://github.com/alcy/riemann-hbase'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Utility to submit hbase metrics to Riemann'

  s.add_dependency 'jmx4r'
  s.add_dependency 'riemann-tools'

  s.files = FileList['bin/*', 'LICENSE'].to_a
  s.executables |= Dir.entries('bin/')
 
  s.required_ruby_version = '>= 1.8.7'
end

Gem::PackageTask.new gemspec do |p|
end
 
