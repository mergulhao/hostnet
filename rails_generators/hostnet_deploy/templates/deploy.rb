# ------------------------------------------------------------------------------
# Receita oficial da Hostnet para deploy de aplicações Rails sem uso de 
# controle de versão (v1.0)
# ------------------------------------------------------------------------------
# Compatível com Capistrano 2.5.0
# ------------------------------------------------------------------------------
# Autor: Sylvestre Mergulhão, http://mergulhao.info
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# Defina seu usuário e domínio na Hostnet
# ------------------------------------------------------------------------------
set :user, "<%= username %>"
set :domain, "<%= domain %>"

# ------------------------------------------------------------------------------
# Defina o nome da aplicação. Deve ser deixado como está caso seja sua primeira.
# ------------------------------------------------------------------------------
set :application, "www"

# ------------------------------------------------------------------------------
# Não alterar daqui pra baixo!
# ------------------------------------------------------------------------------
set :scm, :none 
set :deploy_via, :copy 
set :repository, File.expand_path( File.join(File.dirname(__FILE__), "/..") )

set :use_sudo, false
set :deploy_to, "/home/#{user}/#{application}"

set :copy_exclude, %w(log tmp)
set :keep_releases, 10

role :app, domain
role :web, domain
role :db,  domain, :primary => true

task :before_symlink do
  run "cd #{release_path} && rake db:migrate RAILS_ENV=production"
end

namespace :deploy do
  task :restart, :roles => :app do
    run "touch #{deploy_to}/current/tmp/restart.txt"
  end
end

namespace :db do
  task :backup, :roles => :db do
    require 'yaml'
    cfg = YAML::load_file('config/database.yml')
    db = cfg['production']
    mysql_opts = "-u #{db['username']} -p#{db['password']} -h #{db['host']} #{db['database']}"
    filename = "dump-#{application}-#{Time.now.utc.strftime("%Y%m%d%H%M%S")}.sql"
    filename_path = "~/#{filename}"
    run "mysqldump #{mysql_opts} > #{filename_path}"
    get filename_path, filename
    run "rm #{filename_path}"
  end
end
