class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :content
      t.string :user, null:false, foreign_key: true
      t.string :room, null:false, foreign_key: true
      t.timestamps
    end
  end
end