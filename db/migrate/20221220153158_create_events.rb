class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :event_image
      t.string :description
      t.integer :time
      t.string :location
      t.integer :date

      t.timestamps
    end
  end
end
