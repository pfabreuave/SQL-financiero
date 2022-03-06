---******************los 5 cuentas con menos transacciones******************---


select
transacao.id_cliente_conta,
    	COUNT(*) AS Quantidade
        
FROM transacao

 join cliente_conta
	on (transacao.id_cliente_conta = cliente_conta.id_conta)
        
    GROUP BY cliente_conta.id_conta 
    ORDER BY Quantidade ASC
    LIMIT 5; 