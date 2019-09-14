set :rails_env, 'development'
set :branch, 'development'
 
server '3.82.194.73',
user: 'deploy',
roles: %w{app db web}