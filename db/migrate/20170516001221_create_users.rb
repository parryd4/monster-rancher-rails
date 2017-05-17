class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      
      t.integer :game_time, default: 48000
      t.integer :money, default: 4000

      t.timestamps
    end
  end
end
