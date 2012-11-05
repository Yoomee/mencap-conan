class AddCustom1ToPages < ActiveRecord::Migration
  def change
    add_column :pages, :custom1, :text
  end
end
