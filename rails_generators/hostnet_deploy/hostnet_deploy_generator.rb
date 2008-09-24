class HostnetDeployGenerator < Rails::Generator::NamedBase
  attr_reader :username, :domain
  
  def initialize(runtime_args, runtime_options = {})
    super
    usage if runtime_args.size != 2
    @username = runtime_args.shift
    @domain = runtime_args.shift
    # extract_options
  end

  def manifest
    record do |m|
      # Ensure appropriate folder(s) exists
      # m.directory 'some_folder'

      # Create stubs
      # m.template "template.rb",  "some_file_after_erb.rb"
      # m.file     "file",         "some_file_copied"
     
      m.file     "Capfile"  , "Capfile"
      m.template "deploy.rb", "config/deploy.rb"
    end
  end

  protected
    def banner
      "Usage: script/generate hostnet_deploy username domain"
    end
end
