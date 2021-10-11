# app/jobs/test_job.rb
class TestJob < ActiveJob::Base
    def perform
        puts "CRONO JOB WORKING ITS THING"
    end
  end