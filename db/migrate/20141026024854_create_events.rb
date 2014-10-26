class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :Job_ID
      t.text :Employer
      t.text :Position
      t.string :Compensation
      t.text :Content
      t.boolean :is_public
      t.integer :capacity

      t.timestamps
    end
  end
end
