class AddShortTitleToPages < ActiveRecord::Migration
  
  def change
    add_column :pages, :short_title, :string, :after => :title
  end
  
end