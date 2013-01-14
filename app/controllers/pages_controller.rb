class PagesController < ApplicationController
  include YmCms::PagesController
  
    def show
      @page_children = @page.children.order(:position) || []
      render :action => "views/#{@page.view_name}"
    end
    
end