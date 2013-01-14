class HomeController < ApplicationController
  
  def index
    @news_pages = Page.find_by_slug(:news).children.order(:position).limit(3)
  end

end