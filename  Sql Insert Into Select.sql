-- Atividade 1: Transferir dados de uma tabela temporária para uma tabela principal
INSERT INTO Students (id, nome, idade, turma)
SELECT id_temp, nome, idade, turma FROM TempStudents;

-- Atividade 2: Copiar dados de uma tabela de produtos ativos para uma tabela de backup
INSERT INTO Backup_Produtos (id_produto, nome, preco, categoria)
SELECT id_produto, nome, preco, categoria FROM Produtos WHERE status = 'Ativo';

-- Atividade 3: Migrar dados de um departamento para outro
INSERT INTO Empregados_Treinamento (id_empregado, nome, salario)
SELECT id_empregado, nome, salario FROM Empregados WHERE departamento = 'Vendas';

-- Atividade 4: Inserir clientes inativos na tabela de marketing
INSERT INTO Clientes_Marketing (id_cliente, nome, email)
SELECT id_cliente, nome, email FROM Clientes WHERE status = 'Inativo';

-- Atividade 5: Transferir vendas de um determinado período para análise histórica
INSERT INTO Historico_Vendas (id_venda, produto, valor, data_venda)
SELECT id_venda, produto, valor, data_venda FROM Vendas WHERE YEAR(data_venda) = 2023;