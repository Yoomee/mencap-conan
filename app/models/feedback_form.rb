module FeedbackForm
  
  include YmEnquiries::EnquiryForm
  
  title "Get in touch"
  
  intro "To find out more about any of our services or how you could get involved, please get in touch by filling out the details below and click 'Send'"
  
  fields :name, :phone_number, :address, :postcode, :email, :request
  
  validates :name, :presence => true
  validates :email, :email => true, :allow_blank => true, :presence => true
  
  email_from Settings.site_email
  email_subject "New enquiry on #{Settings.site_name}"
  email_to Settings.admin_email

  response_message "Thanks for your enquiry. We will be in touch shortly."
  
end