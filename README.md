<div align="center">

<img src="https://img.shields.io/badge/Portfólio-SQL-blue?style=for-the-badge&logo=mysql" />
<img src="https://img.shields.io/badge/PostgreSQL-Compatible-blue?style=for-the-badge&logo=postgresql" />
<img src="https://img.shields.io/badge/MySQL-Compatible-orange?style=for-the-badge&logo=mysql" />
<img src="https://img.shields.io/badge/Status-Ativo-success?style=for-the-badge" />

# 📊 Portfólio SQL  
### Consultas para Análise de Negócios, KPIs, ETL e Funções Avançadas

</div>

Este repositório reúne consultas SQL desenvolvidas para **cenários reais de análise de dados**, com foco em:

- Modelagem e exploração de dados  
- KPIs de negócio (receita, ticket médio, churn)  
- Segmentação de clientes  
- Análises temporais  
- Funções analíticas (window functions)  
- CTEs para pipelines limpos e organizados  
- Checks de qualidade e consistência de dados  

Compatível com **PostgreSQL** e **MySQL**.

---

<div align="center">

## 📁 Estrutura do Repositório
</div>


---

<div align="center">

# 🔍 Descrição dos Arquivos  
</div>

## 🔹 `clientes_segmentacao.sql`
Consulta para segmentar clientes por:

- Receita total  
- Número de pedidos  
- Região  
- Período de compra  

Utiliza:

- JOINs  
- Agregações  
- Lógica de negócio  

Ideal para análises de performance comercial e comportamento do cliente.

---

## 🔹 `vendas_window_functions.sql`
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

Demonstra domínio de **window functions**, essenciais em análise avançada.

---

## 🔹 `kpis_negocio_cte.sql`
KPIs calculados usando CTEs:

- Receita mensal  
- Pedidos mensais  
- Ticket médio  

Mostra boa prática de organização usando **WITH (CTE)**.

---

## 🔹 `qualidade_dados.sql`
Checks essenciais de DataOps:

- Campos obrigatórios nulos  
- Valores inconsistentes (quantidade negativa etc.)  
- Integridade referencial (pedidos sem cliente)  
- Duplicidades  
- Datas fora do padrão  

Demonstra foco em **qualidade de dados**, importante em pipelines ETL/ELT.

---

<div align="center">

# 🛠️ Tecnologias Utilizadas
</div>

| Categoria | Ferramentas |
|----------|-------------|
| **Banco de Dados** | PostgreSQL · MySQL |
| **Consultas** | SQL Avançado |
| **Técnicas** | JOINs · Window Functions · CTEs · Agregações |
| **Boas Práticas** | Query modular · Organização · Qualidade de dados |

---

<div align="center">

# 👩‍💻 Autora  
<b>Cibelly Viegas</b>  
Cientista de Dados & Analista de BI  
📧 cibelly.viegas@gmail.com  
🔗 <a href="https://www.linkedin.com/in/cibelly-viegas-de-souza-0584a8160/">LinkedIn</a>

<br><br>
<i>“SQL é a linguagem que transforma dados em respostas — e respostas em ação.”</i>

</div>
