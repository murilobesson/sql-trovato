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