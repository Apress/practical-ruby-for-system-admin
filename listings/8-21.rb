require "pcaplet" 

hosts = {} 

sniffer = Pcap::Pcaplet.new 
sniffer.each_packet do |pkt| 
  next unless pkt.ip? 
  src, dst, = pkt.ip_src, pkt.ip_dst 
  size, time = pkt.size, pkt.time 
  (hosts[src] ||= BWHost.new(src)).sent(size, dst, time) 
  (hosts[dst] ||= BWHost.new(dst)).received(size, src, time) 
end 
sniffer.close 

hosts.each do |ip, data| 
  puts "#{ip} sent #{data.total_sent}B and received #{data.total_received}B" 
end 
