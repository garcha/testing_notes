require 'watir-webdriver'
require './assertions.rb'
require './homepage.rb'

homepage = Homepage.visit

assert('that the welcome message exists') { homepage.welcome.exists? }
assert('that the welcome message is visible') { homepage.welcome.visible? }
assert('that the welcome message text is correct') { homepage.welcome.text == 'Welcome BNE Testers!' }

homepage.close
