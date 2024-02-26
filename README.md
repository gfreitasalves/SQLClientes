# Modele uma estrutura de dados do seguinte caso:

- Um cliente possui os seguintes campos: Nome, CPF, UF, Celular;
- Um cliente possui N financiamentos;
- Um financiamento possui os seguintes campos: CPF, Tipo Financiamento, Valor Total, Data
do Último Vencimento;
- Um financiamento possui N parcelas;
- Uma parcela possui os seguintes campos: Id Financiamento, Número da Parcela, Valor
Parcela, Data Vencimento, Data Pagamento;

Crie as tabelas que julgar necessárias e insira alguns registros de teste nas mesmas. Na sequência,
elabore as seguintes querys:
- Listar todos os clientes do estado de SP que possuem mais de 60% das parcelas pagas;
- Listar os primeiros quatro clientes que possuem alguma parcela com mais de cinco dia sem
atraso (Data Vencimento maior que data atual E data pagamento nula).
