class Page < ActiveRecord::Base
  include YmCms::Page
  
  def intro
    if read_attribute(:intro).blank?      
        text.truncate 100 if text.present?
    else
      read_attribute(:intro)
    end
  end
  
end