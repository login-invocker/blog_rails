class ChangingBodyFromPost < ActiveRecord::Migration[6.1]
  def change
    change_column :comments, :body, :string, :default => "body has default"
  end
end