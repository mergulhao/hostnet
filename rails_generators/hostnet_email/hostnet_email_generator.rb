class HostnetEmailGenerator < Rails::Generator::NamedBase
  attr_reader :username, :password, :domain

  def initialize(runtime_args, runtime_options = {})
    super
    usage if runtime_args.size != 3
    @username = runtime_args.shift
    @password = runtime_args.shift
    @domain = runtime_args.shift
  end

  def manifest
    record do |m|
      m.template "mail.rb", "config/initializers/mail.rb"
    end
  end

  protected
    def banner
      "Usage: script/generate hostnet_email mailer_username mailer_password domain"
    end
end
