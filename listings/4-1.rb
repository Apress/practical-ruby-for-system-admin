class Schedule 
  def initialize(from, to) 
    @from, @to = from, to 
  end 

  def current?(time = Time.now) 
    @from <= time and time <= @to 
  end 
end 
