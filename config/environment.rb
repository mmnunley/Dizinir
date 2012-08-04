# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Dizinir::Application.initialize!

Dizinir::Application.configure do
	config.action_mailer.delivery_method = :smtp
	config.action_mailer.smtp_settings = {
		:address => "smtp.gmail.com",
		:port => 587,
		#:domain => "localhost:3000",
		:authentication => :plain,
		:user_name => "mnunley3",
		:password => "Iwbos6@1988",
		:enable_starttls_auto => true
	}
end

