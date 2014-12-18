class AddColsToImakokos < ActiveRecord::Migration
  def change
    add_column :imakokos, :ido, :decimal,precision:11,scale:8
    add_column :imakokos, :keido, :decimail,precision:11,scale:8
  end
end
