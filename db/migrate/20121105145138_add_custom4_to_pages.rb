class AddCustom4ToPages < ActiveRecord::Migration
  def change
    add_column :pages, :custom4, :text
  end
end
