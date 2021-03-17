/*
Programa:ProcReportEX6.sas
Autor: Juan Ormelli de Medeiros
Data:11/03/2021 
Versao:1.00

Descrição: Realizar o output en pdf da tabela de resultados EX5


*/


ods pdf file="SDC – Smart Decision Consulting";
title "SDC – Smart Decision Consulting" justify=center;
  proc report data=cgdexcel.atttestetable headskip
    style(header)=[backgroundcolor=lightblue];
    column CodDepto CodGrupo DataVenda Descricao QtdeVendida PrecoUnitario totalvendas AcumuladoGrupo AcumuladoDepto;
    define CodDepto / center "Depto";
    define CodGrupo / center "Grupo";
    define totalvendas/ format=comma15.2;
    define AcumuladoGrupo / format=comma15.2;
    define AcumuladoDepto / format=comma15.2;
    title2 "Vendas do período, com quebras por grupo e departamento." justify=center;
  run;
ods pdf close;
ods pdf file="SDC – Smart Decision Consulting 2";
title "SDC – Smart Decision Consulting" justify=center;
  proc report data=cgdexcel.atttestetable headskip
    style(header)=[backgroundcolor=lightblue];
    column CodDepto CodGrupo DataVenda Descricao QtdeVendida PrecoUnitario totalvendas AcumuladoGrupo AcumuladoDepto;
    define CodDepto / order center "Depto";
    define CodGrupo / order center "Grupo";
    
    title2 "Vendas do período, com quebras por grupo e departamento." justify=center;
    title3 "Tabela para facilitar visualização das quebras de grupo e departamento";
  run;
ods pdf close;