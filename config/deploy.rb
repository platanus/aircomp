# Set server stages
set :stages, %w(production staging)
set :default_stage, "staging"
require 'capistrano/ext/multistage'

# Server-side information.
set :application, "aircomp"
set :user,        "deploy"
set :deploy_to,   "/home/#{user}/applications/#{application}"

# Repository (if any) configuration.
set :deploy_via, :remote_cache
set :repository, "https://github.com/platanus/aircomp.git"
# set :git_enable_submodules, 1

# Database
# set :migrate_env,    "migration"

# Unicorn
set :unicorn_workers, 1
