#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Karmaville::Application.load_tasks

namespace :db do
  desc "Drop and create the current database"
  task :sum_karma => :environment do
    User.all.each do |user|
      user.update_attribute(:karma_sum, user.total_karma) # this doesn't run validations
      # user.karma_sum = user.total_karma
      p "User #{user.id}, karma #{user.total_karma}" if user.id%1000 == 0
      # user.save
    end
  end
end
