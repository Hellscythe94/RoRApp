class RoRWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(anArgument)
    puts "Worker doing worker stuff using its very special #{anArgument}"
  end
end
