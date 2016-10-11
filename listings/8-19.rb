require "pcaplet" 

sniffer = Pcap::Pcaplet.new 
sniffer.each_packet { |pkt| p pkt } 
sniffer.close 
