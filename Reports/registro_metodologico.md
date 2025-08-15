<h2> Registro Metodológico </h2>

***29/05/2025*** – Realizei uma busca no portal e-MEC (https://emec.mec.gov.br/) com o objetivo de identificar as instituições que ofertam o curso de Licenciatura em Computação. Para isso, apliquei os seguintes filtros:

- Buscar por: Curso de Graduação
- Curso: Computação
- Gratuidade do curso: Sim
- Grau: Licenciatura
- Situação: Em atividade

A busca retornou 73 cursos ativos, com denominações variadas, como: Computação, Ciências da Computação, Ciência da Computação, Computação e Informática, Computação e Robótica Educativa, Ciências Agrárias e do Ambiente e Interdisciplinar em Matemática e Computação e suas Tecnologias. Desses 73 cursos, 24 são ofertados por instituições privadas; 52 são presenciais e 21, a distância.

Seguindo a orientação do professor Jonathan Rosa, optamos por delimitar a análise apenas aos cursos com os nomes: Computação, Ciências da Computação e Ciência da Computação.

------------------------------------------------------------------------------------------------------------------------

***04/06/2025*** – A pesquisa foi delimitada para considerar apenas os cursos com as denominações “Computação”, “Ciências da Computação” e “Ciência da Computação”. Com esse recorte, foram identificadas 35 instituições ofertando esses cursos. Algumas instituições apresentam mais de um curso (por exemplo, “Computação” e “Ciências da Computação” na mesma instituição), enquanto outras oferecem o mesmo curso em diferentes modalidades (presencial e a distância) ou com mais de uma turma no mesmo semestre.

Após essa delimitação, realizei uma verificação individual nos sites/editais de cada instituição, com o objetivo de confirmar se os cursos informados no e-MEC estão realmente ativos. Como resultado, foi possível confirmar a existência do curso em 27 instituições. Em 8 casos, não foi possível localizar informações suficientes que comprovassem a oferta do curso conforme indicado no site do e-MEC.

------------------------------------------------------------------------------------------------------------------------

***23/07/2025*** – Iniciei o processo de tratamento dos dados, especificamente a coleta de informações sobre os Trabalhos de Conclusão de Curso (TCCs) e seus respectivos autores. Por ser estudante da Universidade de Brasília (UnB), optei por começar por ela. Para isso, acessei o Repositório Institucional da UnB (https://repositorio.unb.br/).

No entanto, encontrei algumas dificuldades para localizar exclusivamente os TCCs dos alunos da Licenciatura em Computação. O filtro mais próximo do meu objetivo era o de “Unidade Acadêmica”, onde é possível selecionar o Departamento de Ciência da Computação. Embora isso ajudasse a restringir a busca, os resultados ainda incluíam diversos tipos de documentos vinculados ao departamento, como trabalhos de graduação e pós-graduação, tanto do Bacharelado quanto da Licenciatura, além de produções relacionadas a eventos acadêmicos.

Para tentar resolver essa questão, entrei em contato com o e-mail disponível no site do repositório (repositorio@unb.br), explicando minha demanda e os dados que eu buscava. Em resposta, fui orientado a acessar o site da Biblioteca Digital da Produção Intelectual Discente da Universidade de Brasília (https://bdm.unb.br/), onde os dados dos TCCs estão organizados de forma mais acessível, com filtros adequados e as informações necessárias para minha pesquisa.

------------------------------------------------------------------------------------------------------------------------

***24/07/2025*** - Na etapa de coleta de dados, acessei a seção "Comunidades na BDM" no site (https://bdm.unb.br/), que é organizada em duas categorias principais: "Trabalhos de Conclusão de Curso de Graduação" e "Trabalhos de Conclusão de Curso de Especialização". Obviamente, selecionei a opção da graduação.

Ao acessar essa categoria, os TCCs são apresentados em diversos grupos. Escolhi o grupo "Coleções nesta comunidade", onde os trabalhos estão organizados por cursos da UnB. Dentro dessa organização, selecionei a coleção do curso de Computação, que contava com 156 documentos no momento da coleta.

A plataforma oferece diversas formas de navegação. Como meu recorte temporal abrange os anos de 2015 a 2025, utilizei o filtro "Data de Publicação", ordenando os trabalhos de forma decrescente.

Por ser praticamente meu primeiro contato mais aprofundado com o sistema da BDM, e também devido a problemas técnicos com meu monitor, não consegui avançar muito nesse momento. Consegui inserir apenas 10 registros na tabela TCC. No entanto, durante esse processo, percebi a necessidade de reorganizar o formato de armazenamento dos dados e incluir dois novos atributos no banco de dados: o link do arquivo PDF e o assunto do TCC.

Apesar da visualização ainda superficial, foi possível identificar que 36 TCCs estavam fora do recorte temporal, o que significa que 120 registros da UnB ficaram dentro dos critérios definidos para a pesquisa.

------------------------------------------------------------------------------------------------------------------------

***25/07/2025*** – Com o avanço na coleta e análise dos primeiros registros dos TCCs da UnB, percebi a necessidade de adicionar duas novas informações ao banco de dados: *assunto* e *palavras-chave*, que inicalmente adicionei como atibutos simples, porém deveria ser atributos multivalorados, considerando tbm que esses campos aparecem com frequência nos registros dos TCCs e são importantes para analisar os temas mais recorrentes nas pesquisas.

Como um TCC pode ter vários assuntos e várias palavras-chave, esses campos foram tratados como atributos multivalorados, como já mencionado antes, criando assim duas tabelas auxiliares **"Assunto"** e **"Palavra_Chave"**.

Essas tabelas evitam repetições e facilitam futuras análises, como os assuntos mais frequentes por ano ou por instituição.

------------------------------------------------------------------------------------------------------------------------

***26/07/2025*** - Concluí hoje as 19:37 o processo de coleta e tratamento dos dados referentes aos Trabalhos de Conclusão de Curso (TCCs) da Universidade de Brasília (UnB). Todos os dados foram obtidos a partir do site da Biblioteca Digital da Produção Intelectual Discente da UnB (https://bdm.unb.br/), conforme a orientação recebida anteriormente da equipe responsável pelo repositório institucional.

Após a extração, os dados passaram por um processo de tratamento e padronização, utilizando as ferramentas do próprio Excel e, especialmente, do Power Query, para realizar a limpeza e estruturação das informações.

As principais ações realizadas durante o tratamento foram:
- Remoção de espaços desnecessários (antes ou depois dos textos);
- Padronização das letras (maiúsculas/minúsculas/título);
- Separação de atributos multivalorados (como assuntos e palavras-chave) em linhas distintas para facilitar a análise;
- Reorganização de colunas e tipos de dados para manter consistência com a estrutura relacional do banco de dados.

Com isso, os dados dos TCCs da UnB estão agora completamente coletados e devidamente tratados, prontos para serem integrados à base geral da pesquisa.

------------------------------------------------------------------------------------------------------------------------

***28/07/2025*** – Hoje, finalizei a etapa de criação visual e estruturação inicial do dashboard da pesquisa. Utilizei o Figma para desenvolver as telas-modelo (templates), incluindo o plano de fundo e os elementos visuais principais. Após a finalização do layout, passei à montagem do dashboard no Power BI, estruturando os dados tratados anteriormente da UnB.

Concluída essa fase, publiquei o dashboard no meu workspace pessoal. O link para acesso público ao painel é: https://app.powerbi.com/view?r=eyJrIjoiZWUyMTU4NTMtNjY1OC00YjllLTk2MzUtZDU5MTA2YTNlZGYxIiwidCI6ImVjMzU5YmExLTYzMGItNGQyYi1iODMzLWM4ZTZkNDhmODA1OSJ9

Esse painel inicial apresenta os dados da Universidade de Brasília (UnB), incluindo visualizações voltadas para o panorama geral da produção científica e as tendências temáticas observadas nos TCCs.

------------------------------------------------------------------------------------------------------------------------

**29/07/2025*** - Link para apresentação https://www.canva.com/design/DAGuj9JxmlI/Yz8hE7vKcrNFLNtX3nJTSA/edit?utm_content=DAGuj9JxmlI&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton

------------------------------------------------------------------------------------------------------------------------

**14/08/2025** - Enviei e-mails para as instituições solicitando a confirmação do repositório utilizado como base de dados, a fim de garantir maior credibilidade e respaldo às informações utilizadas.

------------------------------------------------------------------------------------------------------------------------
