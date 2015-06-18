require 'rake'
require 'rspec/core/rake_task'
require_relative 'db/seeds'
require_relative 'config/application'

task :console do
	exec "irb -r./config/application.rb"
end

desc "create the database"
task "db:create" do
  touch 'db/chefs.sqlite3'
end

desc "drop the database"
task "db:drop" do
  rm_f 'db/chefs.sqlite3'
end

desc "migrate the database (options: VERSION=x, VERBOSE=false, SCOPE=blog)."
task "db:migrate" do
	ActiveRecord::Migrator.migrate('db/migrate', ENV["VERSION"] ? ENV["VERSION"].to_i : nil)
end

desc "seed the test database with sample data"
task "db:seed" do
  UserSeeds.import
end

desc 'Retrieves the current schema version number'
task "db:version" do
  puts "Current version: #{ActiveRecord::Migrator.current_version}"
end

desc "Run the specs"
RSpec::Core::RakeTask.new(:specs)

task :default  => :specs
