default_run_options[:pty] = true
set :user, "johlstei"
#set :password, "raiders2008_Vero"
#set :use_sudo, false
set :application, "tutorial"
set :deploy_to, "/home/johlstei/src/deployed/#{application}"

#set :repository,  "https://vborges@github.com/vborges/tutorial.git"
ssh_options[:paranoid] = false
set :scm, :git
set :repository, "/home/johlstei/src/tutorial"
#set :scm_username, "vborges"
#set :scm_password, "raiders2008_Vero"
set :branch, "master"

#ssh_options[:keys] = %w(/usr2/vborges/.ssh/id_rsa)
ssh_options[:verbose] = :debug
#ssh_options[:forward_agent] = true
#set :password, "raiders2008_Vero"
#set :deploy_via, :copy        # if you server does NOT have direct access to the repository (default)
#set :git_shallow_clone, 1
set :deploy_via, :remote_cache

role :web, "localhost"     # Your HTTP server, Apache/etc
role :app, "localhost"             # This may be the same as your `Web` server
role :db,  "localhost", :primary => true # This is where Rails migrations will run
#role :web, "adharmap-linux"              # Your HTTP server, Apache/etc
#role :app, "adharmap-linux"             # This may be the same as your `Web` server
#role :db,  "adharmap-linux", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

# namespace :deploy do
#   task :start do ; end
#  task :stop do ; end
# task :restart, :roles => :app, :except => { :no_release => true } do
#  run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#  end
# end

#namespace :deploy do
#  %w(start stop restart).each do |action|
#     desc "#{action} the Thin processes"
#     task action.to_sym do
#       find_and_execute_task("thin:#{action}")
#    end
#  end
#end
#
#namespace :thin do
#  %w(start stop restart).each do |action|
#  desc "#{action} the app's Thin Cluster"
#    task action.to_sym, :roles => :app do
#      run "thin #{action} -c #{deploy_to}/current -C #{deploy_to}/current/config/thin.yml"
#    end
#  end
#end
