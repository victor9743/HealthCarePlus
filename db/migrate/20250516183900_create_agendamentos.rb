class CreateAgendamentos < ActiveRecord::Migration[7.2]
  def change
    create_table :agendamentos do |t|
      t.references :paciente, null: false, foreign_key: true
      t.references :medico, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
