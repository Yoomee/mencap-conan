class AddCustom2ToPages < ActiveRecord::Migration
  def change
    add_column :pages, :custom2, :text
  end
end
