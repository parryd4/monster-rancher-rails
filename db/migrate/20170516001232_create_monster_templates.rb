class CreateMonsterTemplates < ActiveRecord::Migration[5.1]
  def change
    create_table :monster_templates do |t|
      t.string :name
      t.integer :lifespan
      t.integer :lif
      t.integer :pow
      t.integer :int
      t.integer :ski
      t.integer :spd
      t.integer :def
      t.string :img

    end
  end
end
