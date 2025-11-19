# 📊 Portfólio SQL — Consultas para Análise de Negócios

Repositório com consultas SQL escritas para **PostgreSQL/MySQL**, focadas em:

- Modelagem de dados para análise
- KPIs de negócio (receita, ticket médio, churn)
- Segmentação de clientes
- Uso de **JOINs**, **CTEs** e **window functions**

Os exemplos simulam um cenário de e-commerce com as tabelas:

- `customers` — cadastro de clientes  
- `orders` — pedidos  
- `order_items` — itens do pedido  
- `products` — catálogo  
- `regions` — regiões/UF

> As queries foram pensadas para bancos relacionais como PostgreSQL e MySQL e podem ser adaptadas conforme o dialeto SQL utilizado.

## 📁 Estrutura

- `queries/clientes_segmentacao.sql` — segmentação de clientes e receita
- `queries/vendas_window_functions.sql` — análises com funções de janela
- `queries/kpis_negocio_cte.sql` — KPIs usando CTEs
- `queries/qualidade_dados.sql` — consultas para monitorar qualidade dos dados

## 🧠 Conceitos demonstrados

- JOINs (INNER, LEFT)
- Agregações com `GROUP BY` e `HAVING`
- **CTEs (`WITH`)** para organizar consultas complexas
- **Window functions** (`ROW_NUMBER`, `RANK`, `SUM() OVER`)
- Checagens de qualidade de dados (nulos, duplicados, consistência)

---

Criado por **Cibelly Viegas** — Cientista de Dados & BI  
LinkedIn: https://www.linkedin.com/in/cibelly-viegas-de-souza-0584a8160/
