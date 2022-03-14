---******************operaciones en cuenta******************---


select
transacao.id_cliente_conta, cliente.nome, tipo_transacao.descricao,
    	COUNT(*) AS "Quant Operaciones", sum(valor) as total
        
FROM transacao
join tipo_transacao
	on (id_tipo_transacao = tipo_transacao.id) 

join cliente 
	on (transacao.id_cliente_conta = cliente.id)
        
    GROUP BY transacao.id_cliente_conta, id_tipo_transacao 
    ORDER BY transacao.id_cliente_conta ASC;
    