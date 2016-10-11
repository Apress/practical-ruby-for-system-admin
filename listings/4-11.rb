class Server 
  def initialize(hostname) 
    @hostname = hostname 
    @sharepoints = {} 
  end 

  def shares(path, params) 
    (params[:over] || []).each do |protocol| 
      proto_shares = (@sharepoints[protocol] ||= {}) 
      share_id = (params[:as] || "UNKNOWN") 
      proto_shares[share_id] = path 
    end 
  end 
end 
