require_relative '../../require'


puts "-------------------------------------------------------------------------------\n"
puts "Running: #{File.expand_path(__FILE__)}"

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

  it "Check the page title is 'Google'" do
    puts "The website is #{@browser.title}"
    expect(@browser.title).to eq("Google")
  end

end
