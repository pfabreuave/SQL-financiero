---******************lista los saldos en contas con nombres******************---
		
select conta.numero as "NUMERO CONTA", cliente.nome as NOME,
                 conta.saldo as "SALDO CONTA"
        
FROM conta
join cliente on conta.id = cliente.id
ORDER BY numero;