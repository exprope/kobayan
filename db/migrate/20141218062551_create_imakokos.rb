class CreateImakokos < ActiveRecord::Migration
  def change
    create_table :imakokos do |t|
      t.string :name

      t.timestamps
    end
  end
end
