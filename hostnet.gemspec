Gem::Specification.new do |s|
  s.name = %q{hostnet}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sylvestre Mergulhao"]
  s.date = %q{2008-09-30}
  s.description = %q{gem oficial para suporte a deploy de aplicações}
  s.email = ["contato@mergulhao.info"]
  s.executables = ["hostnet"]
  s.extra_rdoc_files = ["Manifest.txt", "README.txt"]
  s.files = ["CHANGELOG", "LICENSE", "Manifest.txt", "README.mkdn", "README.txt", "Rakefile", "TODO", "bin/hostnet", "bin/hostnet-", "config/hoe.rb", "config/requirements.rb", "hostnet.gemspec", "lib/hostnet.rb", "lib/hostnet/version.rb", "rails_generators/hostnet_deploy/USAGE", "rails_generators/hostnet_deploy/hostnet_deploy_generator.rb", "rails_generators/hostnet_deploy/templates/Capfile", "rails_generators/hostnet_deploy/templates/deploy.rb", "rails_generators/hostnet_email/USAGE", "rails_generators/hostnet_email/hostnet_email_generator.rb", "rails_generators/hostnet_email/templates/mail.rb", "script/console", "script/destroy", "script/generate", "setup.rb", "tasks/deployment.rake", "tasks/environment.rake", "tasks/website.rake", "test/test_generator_helper.rb", "test/test_helper.rb", "test/test_hostnet.rb", "test/test_hostnet_deploy_generator.rb", "test/test_hostnet_email_generator.rb", "tutoriais/001-meu-primeiro-deploy-de-aplicacao-rails-para-a-hostnet/tutorial.mkdn"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/mergulhao/hostnet}
  s.post_install_message = %q{}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{hostnet}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{gem oficial para suporte a deploy de aplicações}
  s.test_files = ["test/test_helper.rb", "test/test_generator_helper.rb", "test/test_hostnet.rb", "test/test_hostnet_deploy_generator.rb", "test/test_hostnet_email_generator.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_runtime_dependency(%q<rubigen>, [">= 1.3.2"])
      s.add_runtime_dependency(%q<capistrano>, [">= 2.5.0"])
      s.add_runtime_dependency(%q<archive-tar-minitar>, [">= 0.5.2"])
      s.add_development_dependency(%q<hoe>, [">= 1.7.0"])
    else
      s.add_dependency(%q<rubigen>, [">= 1.3.2"])
      s.add_dependency(%q<capistrano>, [">= 2.5.0"])
      s.add_dependency(%q<archive-tar-minitar>, [">= 0.5.2"])
      s.add_dependency(%q<hoe>, [">= 1.7.0"])
    end
  else
    s.add_dependency(%q<rubigen>, [">= 1.3.2"])
    s.add_dependency(%q<capistrano>, [">= 2.5.0"])
    s.add_dependency(%q<archive-tar-minitar>, [">= 0.5.2"])
    s.add_dependency(%q<hoe>, [">= 1.7.0"])
  end
end

