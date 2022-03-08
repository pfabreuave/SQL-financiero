create view view_dependente as
 select distinct  id_conta from cliente_conta
 where cliente_conta.dependente = true;