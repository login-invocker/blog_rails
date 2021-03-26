class CreateJoinTableAb < ActiveRecord::Migration[6.1]
  def change
    create_join_table :A, :B, column_options: { null: true}
  end
end
