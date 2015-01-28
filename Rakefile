# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rake/dsl_definition'
require 'rake'

Airesis::Application.load_tasks

#see http://www.pervasivecode.com/blog/2007/09/22/making-rails-raketest-not-drop-your-pgsql-database/
Rake::TaskManager.class_eval do
  def delete_task(task_name)
    @tasks.delete(task_name.to_s)
  end
  Rake.application.delete_task("db:schema:load")
  Rake.application.delete_task("db:test:purge")
end

namespace :db do
  namespace :schema do
    task :load => [:environment] do
      ActiveRecord::Base.establish_connection(ActiveRecord::Base.configurations['test'])
    end
  end
  namespace :test do
    task :purge => [:environment] do
      ActiveRecord::Base.establish_connection(ActiveRecord::Base.configurations['test'])
    end

  end
end
