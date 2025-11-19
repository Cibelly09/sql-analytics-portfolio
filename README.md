<div align="center">

<img src="https://img.shields.io/badge/Portfólio-SQL-blue?style=for-the-badge&logo=mysql" />
<img src="https://img.shields.io/badge/PostgreSQL-Compatible-blue?style=for-the-badge&logo=postgresql" />
<img src="https://img.shields.io/badge/MySQL-Compatible-orange?style=for-the-badge&logo=mysql" />
<img src="https://img.shields.io/badge/Status-Ativo-success?style=for-the-badge" />

# 📊 Portfólio SQL  
### Consultas para Análise de Negócios, KPIs, ETL e Funções Avançadas

<br>

Este repositório reúne consultas SQL desenvolvidas para **cenários reais de análise de dados**, com foco em:

- Modelagem e exploração de dados  
- KPIs de negócio (receita, ticket médio, churn)  
- Segmentação de clientes  
- Análises temporais  
- Funções analíticas (window functions)  
- CTEs para pipelines limpos e organizados  
- Checks de qualidade e consistência de dados  

Compatível com **PostgreSQL** e **MySQL**.

</div>

---

<div align="center">

## 📁 Estrutura do Repositório


</div>

---

<div align="center">

# 🔍 Descrição dos Arquivos

<br>

## 🔹 clientes_segmentacao.sql

Consulta para segmentar clientes por:

- Receita total  
- Número de pedidos  
- Região  
- Período de compra  

Utiliza:

- JOINs  
- Agregações  
- Lógica de negócio  

---

## 🔹 vendas_window_functions.sql

Exemplos reais de funções analíticas:

- `ROW_NUMBER()`  
- `RANK()`  
- `SUM() OVER()`  
- `AVG() OVER()`  

Aplicações:

- Ranking de clientes  
- Receita acumulada  
- Análise temporal  
- Tendências  

Demonstra domínio de **window functions**.

---

## 🔹 kpis_negocio_cte.sql

KPIs calculados usando CTEs:

- Receita mensal  
- Pedidos mensais  
- Ticket médio  

Mostra boa prática de organização usando **WITH (CTE)**.

---

## 🔹 qualidade_dados.sql

Checks essenciais de DataOps:

- Campos obrigatórios nulos  
- Valores inconsistentes  
- Pedidos sem cliente (integridade referencial)  
- Duplicidades  
- Datas fora do padrão  

Demonstra foco em **qualidade de dados**, essencial em pipelines ETL/ELT.

</div>

---

<div align="center">

# 🛠️ Tecnologias Utilizadas

| Categoria | Ferramentas |
|----------|-------------|
| **Banco de Dados** | PostgreSQL · MySQL |
| **Consultas** | SQL Avançado |
| **Técnicas** | JOINs · Window Functions · CTEs · Agregações |
| **Boas Práticas** | Query modular · Organização · Qualidade de dados |

---

# 👩‍💻 Autora  
<b>Cibelly Viegas</b>  
Cientista de Dados & Analista de BI  
📧 cibelly.viegas@gmail.com  
🔗 <a href="https://www.linkedin.com/in/cibelly-viegas-de-souza-0584a8160/">LinkedIn</a>

<br><br>

<i>“SQL é a linguagem que transforma dados em respostas — e respostas em ação.”</i>

</div>
