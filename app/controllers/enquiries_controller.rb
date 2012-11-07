class EnquiriesController < ApplicationController
  
  include YmEnquiries::EnquiriesController
  load_and_authorize_resource
  
  def new
    if params[:id].nil?
      render_404
    else
      attrs = {:form_name => params[:id].to_s}
      @enquiry = Enquiry.new(attrs)
    end
  end
  
end