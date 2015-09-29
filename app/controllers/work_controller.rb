class WorkController < ApplicationController
  def index
    puts "Adding 100 Resque jobs"
    resque = Resque.new
    100.times do |x|
      resque << ResqueJob.new
    end
  end
end
