class AddCustom5ToPages < ActiveRecord::Migration
  def change
    add_column :pages, :custom5, :text
  end
end
