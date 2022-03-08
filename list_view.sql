
select cliente_conta.id_conta,
        cliente.nome,
        cliente.id,
 		CASE WHEN cliente_conta.dependente = false THEN 'REPRESENTANTE' else '' END AS GERARQUIA   
 from cliente_conta
 join view_dependente on (cliente_conta.id_conta = view_dependente.id_conta)
 join cliente on (cliente.id = cliente_conta.id_cliente)
 ORDER BY cliente_conta.id_conta, cliente_conta.dependente;

 
 
 
 
 
 