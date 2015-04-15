class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.text :body
      t.integer :user_id
      t.text :title
      t.string :cat

      t.timestamps
    end
  end
end
