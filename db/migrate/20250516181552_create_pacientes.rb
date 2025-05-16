class CreatePacientes < ActiveRecord::Migration[7.2]
  def change
    create_table :pacientes do |t|
      t.string :nome, null: false
      t.date :data_nascimento, null: false
      t.string :cpf, null: false

      t.timestamps
    end
    add_index :pacientes, :cpf, unique: true
    add_index :pacientes, :nome, unique: true
  end
end
