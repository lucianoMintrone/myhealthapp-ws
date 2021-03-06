set :application,     'myhealthapp'
set :repo_url,        'git@github.com:lucianoMintrone/myhealthapp-ws.git'
set :deploy_to, '/srv/rails/my_health_app'
set :keep_releases, 2
set :linked_dirs, fetch( :linked_dirs, [] ).push( 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system', 'public/uploads' )
set :linked_files, fetch( :linked_files, [] ).push( 'config/database.yml')
set :tmp_dir, "/home/deploy"