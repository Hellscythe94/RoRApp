class RoRWorker
  include Sidekiq::Worker

  def perform(*args)
    puts "Worker doing worker stuff"
  end
end
