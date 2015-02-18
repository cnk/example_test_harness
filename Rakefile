require 'rake/testtask'
require 'rspec'
require 'rspec/core/rake_task'
# To invoke rake task     
# rake namespace:test_all                           runs all files in the folder associated with that namespace
# rake namespace:{fileName_leavingOff_rspec.rb}     runs a specific file in in the folder assiciated with that namespace

# Examples: 
# rake test:test_all    runs all files in spec/test
# rake test:mytestfile  runs spec/test/mytestfile_rspec.rb
# rake dev:mytestfile   runs spec/dev/mytestfile_rspec.rb

namespace :spec do
  RSpec::Core::RakeTask.new(:test_all) do |t|
    t.verbose = true
    t.pattern = FileList['spec/test/*_rspec.rb']
  end

  #Special constructor rule for the sandbox
  rule(/test:.+/) do |t|
    name = t.name.gsub("test:","")
    path = File.join( File.dirname(__FILE__),'spec/test','%s_rspec.rb'%name )
    if File.exist? path
      RSpec::Core::RakeTask.new(name) do |t|
        t.verbose = true
        t.pattern = FileList[path]
      end
      puts "\nRunning spec/%s_rspec.rb"%[name]
      Rake::Task[name].invoke
    else
      puts "File does not exist: %s"%path
    end
  end
end
