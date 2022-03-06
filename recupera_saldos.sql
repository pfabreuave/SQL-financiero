---******************Recuperação de saldos en contas******************---


update conta
set saldo = calculo_novo_saldo.NEW_SALDO
from

 (select conta.id,
 sum(case when transacao.id_tipo_transacao = 1 then transacao.valor
                      else (-1) * transacao.valor end) NEW_SALDO
  
FROM transacao
      
join cliente_conta
	 on (transacao.id_cliente_conta = cliente_conta.id_conta)
     
join conta 
	on (cliente_conta.id_conta = conta.id)
     
GROUP BY  
        conta.id,                          
        conta.saldo) AS calculo_novo_saldo
        WHERE calculo_novo_saldo.id = conta.id;