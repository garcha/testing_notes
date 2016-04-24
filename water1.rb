require 'watir-webdriver'

b = Watir::Browser.new
b.goto 'data:text/html,<h1 id="welcome">Welcome BNE Testers!</h1>'
puts b.h1(id: 'welcome').exists?
puts b.h1(id: 'welcome').visible?
puts b.h1(id: 'welcome').text

