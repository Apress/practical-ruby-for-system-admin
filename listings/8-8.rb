class MegaFishCannon < WebSession 
  def initialize(url, uname, pass) 
    super(url, 5000) 
    post("/", "login" => uname, "password" => pass) 
  end 
end 
