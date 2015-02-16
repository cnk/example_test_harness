require 'rake/testtask'
require 'rspec'
require 'rspec/core/rake_task'
#To invoke rake task
# BROWSER=safari rake spec:livewire             You can choose what browser you want to use, if you use the launch_browser method
# rake spec:FolderName                          This will run all the files in the folder
# rake spec:FileNameInSandBox                   This runs a specific file in the sandbox folder (only works for the sandbox)namespace :sandbox do
#Special constructor rule for the sandbox

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
