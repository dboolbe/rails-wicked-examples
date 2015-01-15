class CreateMyModels < ActiveRecord::Migration
  def change
    create_table :my_models do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :suffix
      t.string :twitter_username
      t.string :github_username
      t.string :website
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :street
      t.integer :car_year
      t.string :car_maker
      t.string :car_model
      t.string :car_type

      t.timestamps
    end
  end
end
