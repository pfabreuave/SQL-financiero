---******************lista los saldos en contas******************--
		
select conta.numero as "NUMERO CONTA", 
                 conta.saldo as "SALDO CONTA"
        
FROM conta
ORDER BY numero;