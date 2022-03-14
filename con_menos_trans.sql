---******************los 5 cuentas con menos transacciones******************---


select
transacao.id_cliente_conta, cliente.nome,
    	COUNT(*) AS Quantidade
        
FROM transacao

join cliente 
	on (transacao.id_cliente_conta = cliente.id)
        
    GROUP BY transacao.id_cliente_conta
    ORDER BY Quantidade ASC
    LIMIT 5; 