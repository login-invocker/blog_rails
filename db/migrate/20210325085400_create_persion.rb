class CreatePersion < ActiveRecord::Migration[6.1]
  def change
    create_table :persions do |t|
      t.string :name

      t.timestamps
    end
  end
end
