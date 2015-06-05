
class CreateStudent < ActiveRecord::Migration

  def change
    create_table :students do |t|
      t.string :name
      t.string :twitter_handle
      t.integer :group_id

      t.timestamps
    end
  end
end
