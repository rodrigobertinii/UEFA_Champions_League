# UEFA Champions League 2016 – 2022: Análise de Dados

![image](https://github.com/user-attachments/assets/5533ade2-4cc7-4e53-83c6-bbad0ac3cc8f)

Este projeto consiste em uma análise detalhada dos dados da **UEFA Champions League** das temporadas de **2016 a 2022**. O banco de dados utilizado foi obtido do Kaggle ([link do dataset](https://www.kaggle.com/datasets/cbxkgl/uefa-champions-league-2016-2022-data)) e contém informações sobre times, estádios, jogadores, treinadores, partidas e gols. Além disso, foi criada uma tabela adicional para armazenar os logos dos times.

## Estrutura do Banco de Dados

O banco de dados é composto por 7 tabelas, descritas abaixo:

### 1. **Teams (Times)**
- **TEAM_NAME**: Nome oficial do time. (Primary Key)
- **COUNTRY**: País de origem do time.
- **HOME_STADIUM**: Nome do estádio onde o time joga suas partidas em casa. (Foreign Key)

### 2. **Stadiums (Estádios)**
- **NAME**: Nome do estádio. (Primary Key)
- **CITY**: Cidade onde o estádio está localizado.
- **COUNTRY**: País onde o estádio se encontra.
- **CAPACITY**: Capacidade total do estádio (número máximo de espectadores).

### 3. **Players (Jogadores)**
- **PLAYER_ID**: Identificador único para cada jogador. (Primary Key)
- **FIRST_NAME**: Primeiro nome do jogador.
- **LAST_NAME**: Sobrenome do jogador.
- **NATIONALITY**: Nacionalidade do jogador.
- **DOB**: Data de nascimento do jogador (formato: dia/mês/ano).
- **TEAM**: Nome do time para o qual o jogador joga. (Foreign Key)
- **JERSEY_NUMBER**: Número da camisa do jogador.
- **POSITION**: Posição que o jogador ocupa em campo.
- **HEIGHT**: Altura do jogador (em centímetros).
- **WEIGHT**: Peso do jogador (em quilogramas).
- **FOOT**: Pé com maior habilidade do jogador.

### 4. **Managers (Treinadores)**
- **FIRST_NAME**: Primeiro nome do treinador.
- **LAST_NAME**: Sobrenome do treinador. (Primary Key)
- **NATIONALITY**: Nacionalidade do treinador.
- **DOB**: Data de nascimento do treinador (formato: dia/mês/ano).
- **TEAM**: Nome do time ao qual o treinador está associado. (Foreign Key)

### 5. **Matches (Partidas)**
- **MATCH_ID**: Identificador único para cada partida. (Primary Key)
- **SEASON**: Ano da temporada da UEFA Champions League.
- **DATE_TIME**: Data e hora em que o jogo ocorreu (formato: dia/mês/ano e hora).
- **HOME_TEAM**: Nome do time da casa. (Foreign Key)
- **AWAY_TEAM**: Nome do time visitante. (Foreign Key)
- **STADIUM**: Nome do estádio onde a partida foi realizada. (Foreign Key)
- **HOME_TEAM_SCORE**: Número de gols marcados pelo time da casa.
- **AWAY_TEAM_SCORE**: Número de gols marcados pelo time visitante.
- **PENALTY_SHOOT_OUT**: Indica se a partida foi decidida por disputa de pênaltis.
- **ATTENDANCE**: Número de espectadores presentes no estádio.

### 6. **Goals (Gols)**
- **GOAL_ID**: Identificador único para cada gol registrado. (Primary Key)
- **MATCH_ID**: Identificador único da partida associada ao gol. (Foreign Key)
- **PID**: Identificador do jogador que marcou o gol. (Foreign Key)
- **DURATION**: Momento do jogo (em minutos) em que o gol foi marcado.
- **ASSIST**: Jogador que deu a assistência para o gol. (Foreign Key)
- **GOAL_DESC**: Detalhes do gol.

### 7. **Team Logo (Logo dos Times)**
- **LOGO_ID**: Identificador único para cada logo. (Primary Key)
- **TEAM_NAME**: Nome do time ao qual o logo pertence. (Foreign Key)
- **URL**: Endereço online onde o logo pode ser visualizado.

## Processo de Análise

### 1. Tratamento dos Dados:
- As 6 tabelas originais foram importadas para o Google Colab, onde foram tratadas e limpas.
- Uma tabela adicional foi criada para armazenar os logos dos times, também tratada no Colab.
- Todos os dados foram exportados para arquivos CSV após o tratamento.
- Link para o [[Google Colab](https://colab.research.google.com/drive/1y4wti1w-rV7JWkYoowouueZPmhDvjNSH?usp=drive_link)] e disponivel neste repositório

### 2. Banco de Dados SQL:
- Os dados foram importados para o SQL Server, onde foram criadas as chaves primárias, estrangeiras e os relacionamentos entre as tabelas.
- Uma imagem do diagrama de relacionamento está disponível neste repositório.
- Arquivos das consultas SQL para criação das chaves primárias e estrangeiras disponíveis neste repositório.

### 3. Análise no Power BI:
- O Power BI foi utilizado para criar visualizações interativas.
- Os relacionamentos entre as tabelas foram ajustados para garantir a precisão das análises.
- Diversos gráficos, tabelas e filtros foram criados, e todos os cálculos foram validados com consultas SQL no SQL Server.
- O arquivo do Power BI e as consultas SQL estão disponíveis neste repositório.

### 4. Design da Dashboard:
- Utilizando o Figma, foi criado um plano de fundo personalizado para a dashboard do Power BI, tornando-a mais atraente e profissional.

## Ferramentas Utilizadas
- **Tratamento de Dados**: Google Colab  ![image](https://github.com/user-attachments/assets/df7125ff-6a10-46c5-b5c6-78d6deefd0db)

- **Banco de Dados**: SQL Server    ![image](https://github.com/user-attachments/assets/5450011b-88ac-40d6-8bc5-d04cef0e9fb3)

- **Visualização de Dados**: Power BI     ![image](https://github.com/user-attachments/assets/078e52d9-d5d7-4bdc-b706-d1e46d25378e)

- **Design**: Figma     ![image](https://github.com/user-attachments/assets/d277be37-d453-41b6-861f-63cb27fc7b23)

- **Fonte de Dados**: Kaggle     ![image](https://github.com/user-attachments/assets/aa7d841b-92d3-4ecd-888e-01ddd4f36e76)


---

**Observação**: Para uma experiência completa, confira os arquivos e imagens disponíveis neste repositório.

![image](https://github.com/user-attachments/assets/2ff915df-0afc-4b73-ba9f-4dab645b2d12)

