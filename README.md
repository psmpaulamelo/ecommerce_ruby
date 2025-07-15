# 🧪 Projeto de Automação de Testes – Ruby + Cucumber + Capybara 

Este projeto tem como objetivo automatizar testes funcionais de uma aplicação web, utilizando as ferramentas **Cucumber**, **Capybara**, **Cypress** e a linguagem **Ruby**. A automação segue o padrão BDD (Behavior Driven Development), o que facilita a escrita e leitura dos testes por todas as partes envolvidas no projeto.

---

## 📚 Tecnologias Utilizadas

* **Ruby** – Linguagem principal do projeto
* **Cucumber** – Framework para escrita de testes em formato BDD
* **Capybara** – DSL para simular interações de usuário com páginas web
* **Cypress** – Ferramenta adicional moderna para testes E2E rápidos
* **SitePrism** – Implementação do Page Object Model (POM) com Capybara

---

## 📁 Estrutura do Projeto

O projeto está organizado da seguinte forma:

* `features/modules/` – Contém todos os **métodos** desenvolvidos para a automação (fluxos e ações dos testes).
* `features/pages/` – Armazena todos os **elementos mapeados do HTML** da aplicação, seguindo o padrão Page Object Model.
* `features/specs/` – Contém os arquivos `.feature`, escritos em Gherkin, representando os **cenários BDD** da automação.
* `features/step_definitions/` – Concentra todos os **steps** definidos para atender aos cenários `.feature`.
* `features/support/` – Pasta de configuração, carregamento de páginas, hooks de execução e arquivos auxiliares.
* `report/` – Diretório reservado para os **relatórios de execução** dos testes.

---

## ✅ Como Executar

1. Instale as dependências do projeto:

```bash
bundle install
```

2. Execute **todos os testes** da suíte:

```bash
bundle exec cucumber
```

3. Execute **cenários específicos** com o uso de tags:

```bash
bundle exec cucumber --tags @nome_da_tag
```

---

## 📊 Relatórios

Os relatórios são gerados automaticamente na pasta `/report`, podendo ser integrados com ferramentas como Allure ou ReportBuilder para visualização mais rica dos resultados.

---

## 🧾 Observações Finais

Este projeto é voltado para fins educacionais ou uso interno em times de QA, com o intuito de facilitar a validação automatizada de fluxos web. Ele segue boas práticas de organização e reutilização de código com base em Page Objects e separação de responsabilidades entre métodos, elementos e cenários.

Contribuições são bem-vindas e devem seguir a estrutura atual do projeto.


✍️ Autor
Paula Silva de Melo
