class AddCustom3ToPages < ActiveRecord::Migration
  def change
    add_column :pages, :custom3, :text
  end
end
