class DNSRecord 
  def value 
    return @ips.first unless @type == "A" and @ips.size > 1 
    @ips.find { |ip| TCPSocket.can_connect?(ip, 80) } || @ips.first 
  end 
end 
