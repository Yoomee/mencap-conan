class Page < ActiveRecord::Base
  include YmCms::Page
  
  # Needed for Sphinx
  define_index do
    where "draft = 0 AND publication_date <= NOW()"
    indexes title, :sortable => true
    indexes text
    has parent_id, publication_date, view_name, created_at, updated_at
  end
  
  def intro
    if read_attribute(:intro).blank?      
        text.truncate 100 if text.present?
    else
      read_attribute(:intro)
    end
  end
  
end