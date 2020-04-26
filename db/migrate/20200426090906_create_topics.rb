class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.integer :user_id
      t.string :title
      t.string :author
      t.string :kind
      t.text :description

      t.timestamps
    end
  end
end
