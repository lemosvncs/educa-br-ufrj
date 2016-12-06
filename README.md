# educa-o-br-ufrj

#Três bancos de dados foram usados, um referente aos microdados do ENEM e outros dois referentes aos microdados do Censo Escolas de 2014
i. ENEM: MICRODADOS_ENEM_2014.csv -- http://download.inep.gov.br/microdados/microdados_enem2014.zip
ii. Censo Escolas: Dados das Escolas -- ESCOLAS.csv --  http://download.inep.gov.br/microdados/micro_censo_escolar_2014.zip
iii. Censo Escolas: Dados das Turmas -- TURMAS.csv --  http://download.inep.gov.br/microdados/micro_censo_escolar_2014.zip

#OBJETIVO: o objetivo do código é ler os dados brutos, selecionar casos e agrupá-los por município.
Como os dados vêm de bases diferentes, não dá pra fazer análises caso a caso, então agrupamos por municpípio.

#OBJETIVO DO CÓDIGO EM CADA ETAPA:
Os códigos estão separados por etapas, cada uma gerando um novo banco de dados que será usado na etapa seguinte.
[1] -- Limpeza dos dados
i. Selecionar casos que são referentes ao Ensino Médio regular;
ii. Selecionar casos no ENEM onde a pessoa concluirá o EM em 2014 ou já concluiu;
iii. Selecionar casos onde a pessoa esteve presente em todas as provas do ENEM e com redação válida;
vi. Selecionar variáveis que serão utilizadas;
v. Separar os dados em bancos de escolas públicas* e privadas.

[2] -- Agrupar dados por municípios
O objetivo desta etapa é i. pegar os dados da etapa anterior e agrupá-los por municpípio;
ii. Gerar média e desvio padrão em variáveis contínuas, e criar um índice média/desvio padrão.

[3.a] -- Juntar os bancos
Junta os bancos de dados, onde cada caso é um município (um banco pra escolas privadas e outro pra escolas públicas*

[3.b] 
O objetivo é i. criar uma porcentagem pras variáveis discretas (i.e. porcentagens de escolas num dado município que tem aula x)
ii. Normalizar as variáveis contínuas com desvio padrão 1 e média 0.

O arquivo "relacoes.r" são as correlações de pearson destes dados usadaos no resumo

*Escolas públicas = Federal + Municipal + Estadual
