class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :event_id
      t.string :comment
      t.integer :rating

      t.timestamps
    end
  end
end
