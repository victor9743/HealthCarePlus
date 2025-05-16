class CreateMedicos < ActiveRecord::Migration[7.2]
  def change
    create_table :medicos do |t|
      t.string :nome, null: false
      t.string :especialidade, null: false

      t.timestamps
    end
    add_index :medicos, :nome, unique: true
  end
end
