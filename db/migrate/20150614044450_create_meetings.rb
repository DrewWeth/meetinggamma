class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :identifier
      t.string :filename
      t.string :logFilename
      t.string :time
      t.string :cost
      t.string :name
      t.string :email
      t.boolean :worth
      t.integer :people
      t.integer :user_id

      t.timestamps
    end
  end
end
