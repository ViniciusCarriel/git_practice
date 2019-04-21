re "rubygems"
require "bundler/setup"
require "mailman"

class Listener

	def listen()

		# Mailman.config.logger = Logger.new("log/mailman.log")  
		Mailman.config.poll_interval = 3  # Default is 60 seconds
		Mailman.config.pop3 = {
		  server: 'pop.gmail.com', port: 995, ssl: true,
		  username: "emailrubytest",
		  password: "senhaemail.01"
		}
		  Mailman::Application.run do
		  default do
		    begin
		    p "Found a new message"
		    p message.from.first # message.from is an array
		    p message.to.first # message.to is an array again..
		    p message.subject
		    print message.body.decoded
		    rescue Exception => e
		      Mailman.logger.error "Exception occurred while receiving message:n#{message}"
		      Mailman.logger.error [e, *e.backtrace].join("n")
		    end
	  end
end

end

class Parser

end

class Persist

end

class APIout

end
