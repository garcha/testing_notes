class Homepage
	def initialize
		@browser = Watir::Browser.new
		@browser.goto 'data:text/html,<h1 id="welcome">Welcome BNE Testers!</h1>'
	end

	def self.visit
		new
	end

	def welcome
		@browser.h1(id: 'welcome')
	end

	def close
		@browser.close
	end
end
