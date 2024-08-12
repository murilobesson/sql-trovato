--LTRIM (remove espaço a esquerda)
select ltrim('          Murilo');

declare @varTexto varchar(50)
set @varTexto = '             Ola me chamo murilo';
select ltrim (@varTexto) as Teste

--RTRIM
select rtrim('Murilo          ');

declare @varTexto2 varchar(50)
set @varTexto2 = 'Me chamo murilo            '
select rtrim(@varTexto2);

--PATINDEX (retorna a posição inicial da primeira ocorrencia de um padrao)
select PATINDEX('%mur%', 'Ola, prazer me chamo murilo');
select patindex('%a', 'Sabado');
select patindex('%a', 'Terça');

select posicao = patindex('%lo_be%', 'Meu nome é murilo besson');

declare @varTexto3 varchar(100)
set @varTexto3 = 'Criação de frase para teste de substring';

--SUBSTRING
select substring(@varTexto3, 1, 12);
select patindex('&Trovato', @varTexto3)

--REPLACE
select replace('Murilo Besson', 'o', 'x')
select replace(replace('Murilo Besson', 'o', 'x'), 'm', '?')

select a.nome, a.data_nascimento, replace(a.sexo, 'M', 'Masculino') sexo
from alunos a

declare @cpf varchar(15)
set @cpf = '111.222.333-44'

select replace(replace(@cpf, '.', ''),'-', '')

--REPLICATE
select replicate('x', 20)

--tamanho de coluna fixa em 50 posições
--passo 1
select len(nome) from alunos

--passo 2
select nome+replicate('x', 50 - len(nome))
from alunos

--passo 3
select len(nome + replicate('x', 50 - len(nome))) as tamanho
from alunos

select len(nome + replicate('', 50 - len(nome)))
from alunos

--REVERSE
select reverse('Murilo Besson')
select reverse(nome) from alunos