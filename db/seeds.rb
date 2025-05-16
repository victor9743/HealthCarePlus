
# -- Inserir médicos
# INSERT INTO medicos (nome, especialidade) VALUES
# ('Dr. João Almeida', 'Cardiologia'),
# ('Dra. Mariana Torres', 'Dermatologia'),
# ('Dr. Pedro Henrique', 'Ortopedia');

# -- Inserir agendamentos
# INSERT INTO agendamentos (paciente_id, medico_id, data_hora, status) VALUES
# (1, 1, '2025-05-07 09:00:00', 'agendado'),
# (2, 2, '2025-05-07 10:30:00', 'agendado'),
# (3, 1, '2025-05-07 11:00:00', 'agendado'),
# (1, 3, '2025-04-30 15:00:00', 'atendido');

ActiveRecord::Base.transaction do
    if Paciente.all.size == 0
        Paciente.create!('Ana Beatriz Silva', '1990-04-15', '123.456.789-00')
        Paciente.create!('Carlos Eduardo Lima', '1985-11-30', '987.654.321-00')
        Paciente.create!('Fernanda Costa', '2000-06-20', '456.789.123-00')
    end

    if Agendamento.all.size == 0

    end
end