class CreateUsers < ActiveRecord::Migration[5.0]
  def up
    #make it "create_table :users , {:id => false} do |t|" if you dont want implicit id column in your table
    create_table :users do |t|
      t.string "its_id" , :limit => 8 ,:null => false
      t.string  "first_name" , :limit => 25 , :null => false
      t.string  "last_name" , :limit => 50 , :null => false
      t.string  "email" , :null => false
      t.string  "password_digest"
      t.string  "user_type" , :limit => 1 , :null => false
      # t.datetime  "created_at"
      # t.datetime  "updated_at"
      t.timestamps
    end
    #execute ('database specific SQL string')
    #add_index ("users" , "its_id")
  end

  def down
    drop_table :users
  end
end
