#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

require 'resque/tasks'
task 'resque:setup' => :environment


Myapp::Application.load_tasks

task :load_jobs => :environment do
  require 'sidekiq/api'
  Sidekiq::Queue.new.clear

  50_000.times do |x|
    EmptyWorker.perform_async
  end
end
