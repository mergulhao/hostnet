ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
  :address => "smtp.<%= domain %>",
  :domain => "<%= domain %>",
  :authentication => :plain,
  :user_name => "<%= username %>=<%= domain %>",
  :password => "<%= password %>"
}
