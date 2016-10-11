require "test/unit" 

class RemoteHostTest < Test::Unit::TestCase 
  def setup 
    @session = RemoteHost.new("testserver.example.org") 
  end 

  def teardown 
    @session.close 
  end 

  def test_echo 
    assert_equal("ping", @session.echo("ping").stdout) 
  end 
end 
