class BWHost 
  attr_reader :ip 

  def initialize(ip) 
    @ip = ip 
    @received, @sent = [], [] 
  end 

  def received(bytes, from, at = Time.now) 
    @received << [bytes, from, at] 
  end 

  def sent(bytes, to, at = Time.now) 
    @sent << [bytes, from, at] 
  end 

  def total_received(options = {}) 
    total(@received, options[:earliest], options[:latest]) 
  end 

  def total_sent(options = {}) 
    total(@sent, options[:earliest], options[:latest]) 
  end 

  private 

  def total(events, earliest, latest) 
    events.inject(0) do |sum, event| 
      if ((earliest and event[2] >= earliest) or not earliest) and 
         ((latest and event[2] <= latest) or not latest) 
        sum + event 
      else sum 
      end 
    end 
  end 
end 
