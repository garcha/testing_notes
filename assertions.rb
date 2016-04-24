require 'colorize'

def assert message, &block
	begin
		if (block.call)
			puts "Assertion PASSED for #{message}".green
		else
			puts "Assertion FAILED for #{message}".red
		end
	rescue => e
		puts "Assertion FAILED for #{message} with exception '#{e}'".red
	end
end
