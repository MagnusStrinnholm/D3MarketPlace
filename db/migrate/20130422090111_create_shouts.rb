class CreateShouts < ActiveRecord::Migration
  def change
    create_table :shouts do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
