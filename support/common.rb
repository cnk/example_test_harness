def launch_browser
	argument = ENV["BROWSER"] || "phantomjs"
	# puts "--------------------------------------"
	# puts "\nI am trying to launch: #{argument}\n"
	# puts "--------------------------------------"
	driver = argument.to_sym
	puts "Browser Driver: #{driver}"
	switches = [ '--ignore-ssl-errors=yes' ]
    @browser ||= Watir::Browser.new driver, :args => switches 
end

def wait_browsertext(text, timeout)
	Watir::Wait.until(timeout){@browser.text.include? text }
end