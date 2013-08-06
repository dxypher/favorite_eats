class Favorite < ActiveRecord::Migration
  def change
    create_table(:favorites) do |t|
      t.string :name
      t.string :category
      t.string :address
      t.string :phone_number
      t.references :user
    end
  end
end
