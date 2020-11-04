class AddTrainerNameToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :trainername, :string
  end
end
