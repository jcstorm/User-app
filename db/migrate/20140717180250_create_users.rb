class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :image_url
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
