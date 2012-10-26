class AddIntroToPages < ActiveRecord::Migration
  def change
    add_column :pages, :intro, :text
  end
end
