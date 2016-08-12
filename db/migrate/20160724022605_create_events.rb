class CreateEvents < ActiveRecord::Migration[5.0]
  def up
    create_table :events do |t|
      t.string  "event_name" , :limit => 64 , :null => false
      t.string  "event_type" , :limit => 10
      t.date    "event_date" ,  :null => false
      t.string  "venue" , :null => false
      t.string  "event_start_time" , limit: 8 , :null => false
      t.string  "event_end_time" ,  limit: 8 , :null => false
      t.string  "description"
      t.string  "instructions"
      t.timestamps
    end
  end

  def down
    drop_table :events
  end

end
