class CreateMonsters < ActiveRecord::Migration[5.1]
  def change
    create_table :monsters do |t|
      t.integer :user_id
      t.string :status, default: 'active'

      t.string :name

      t.integer :remaining_life
      t.integer :lifespan
#      t.integer :growth_type

      t.integer :lif
      t.integer :pow
      t.integer :int
      t.integer :ski
      t.integer :spd
      t.integer :def
      t.string :img

      t.integer :fatigue, default: 0
      t.integer :stress, default: 0

      t.integer :spoil, default: 0
      t.integer :fear, default: 0

#      t.integer :form, default:

      t.timestamps
    end
  end
end
