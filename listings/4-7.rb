module Contactable 
  def send_email(subject, message, attachments = {}) 
    return unless respond_to?(:email_address) 
    address = email_address 
    raise "e-mail address not set" unless address 
    # build the e-mail and send it 
  end 

  def send_fax(message) 
    return unless respond_to?(:fax_number) 
    number = fax_number 
    raise "fax number not set" unless number 
    # build the fax and send it (beep beep) 
  end 
end 
