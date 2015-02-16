require_relative '../../require'


file_name = "/MySpiffyTest_rspec.rb\n"
puts "-------------------------------------------------------------------------------\n"
puts "Running: #{File.expand_path(File.dirname(__FILE__))}" + file_name

describe "MySpiffyTest" do
  before(:all) do
    launch_browser
  
    @url = "http:www.google.com"
    puts "Navigating to #{@url}"
    @browser.goto @url

  end
  after(:all) do
   @browser.close
  end

  it "We want to do some stuff" do
      assert @browser.title == "Google"
      puts "The website is #{@browser.title}"  
  end



end