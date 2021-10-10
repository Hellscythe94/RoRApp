class RorappController < ApplicationController
    def index
    end
  
    def ror
      RoRWorker.perform_async("very important argument")
      render text: "JOB ADDED TO THE QUEUE"
    end
  
end
  