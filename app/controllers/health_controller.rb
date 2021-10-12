class HealthController < ActionController::Metal
 
    def index
      return build_response("draining", 503) if draining?
      build_response("OK", 200)
    end
    
    private
    
    def build_response(text, status)
      self.response_body = text
      self.status = status
    end
    
    def draining?
      File.exists?(Rails.root.join("drain"))
    end
end