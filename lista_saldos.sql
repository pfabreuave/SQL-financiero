---******************lista los saldos en contas******************--
		
select conta.numero as "NUMERO CONTA", cliente.nome,
                 conta.saldo as "SALDO CONTA"
        
FROM conta
join cliente on conta.id = cliente.id
ORDER BY numero;