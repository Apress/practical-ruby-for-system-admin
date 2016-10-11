require "cgi" 
require "net/http" 

class WebSession 
  def initialize(url, port = 80) 
    @session = Net::HTTP.new(host, port) 
    @cookies = {} 
  end 

  def get(path) 
    response = @session.get(path, retrieve_cookies(path)) 
    collect_cookies(response) 
    return response.body 
  end 

  def post(path, pairs) 
    header = retrieve_cookies(path) 
    header["content-type"] = "application/x-www-form-urlencoded" 
    data = pairs.map { |k, v| "#{k}=#{CGI.escape(v.to_s)}") }.join("&") 
    response = @session.post(path, data, header) 
    collect_cookies(response) 
    return response.body 
  end 

  private 

  def collect_cookies(response) 
    cookie = response["set-cookie"] 
    return unless cookie 
    fields, cookie_path = {}, nil 
    cookie.split(";").each do |f| 
      raise "Unable to parse cookie from #{path.inspect}" unless f =~ /^(.*?)=(.*?)$/ 
      if $1 == "path" then cookie_path = $2 
      else fields[$1] = $2 
      end 
    end 
    raise "Unable to parse cookie [no path]: #{cookie.inspect}" unless cookie_path 
    @cookies[cookie_path] = fields 
  end 

  def retrieve_cookies(path) 
    cookies = @cookies[path] || @cookies["/"] 
    return {} unless cookies 
    return {"cookie" => cookies.map { |k, v| "#{k}=#{v}" }.join(";")} 
  end 
end 
