# Spendo App

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Supabase](https://img.shields.io/badge/Supabase-3ECF8E?style=for-the-badge&logo=supabase&logoColor=white)

**Spendo App** é uma aplicação móvel intuitiva e eficiente desenvolvida com Flutter para controle de despesas pessoais. O app oferece uma experiência completa de gestão financeira, permitindo o registro de gastos, categorização inteligente e visualização de dados através de gráficos dinâmicos, tudo sincronizado em tempo real.

---
<div align="center">
  <img src="https://github.com/user-attachments/assets/9010356d-eae6-48e6-bcab-23353eb32101" alt="Spendo App Interface" width="80%">
  <br><br>

  <a href="https://player.cloudinary.com/embed/?cloud_name=dzkjdll3l&public_id=Spendo_App" target="_blank">
    <img src="https://img.shields.io/badge/ASSISTIR-DEMO%20VÍDEO-red?style=for-the-badge&logo=youtube" alt="Assistir Demonstração do Spendo App">
  </a>
</div>


## 🚀 Funcionalidades Principais

* **Gestão de Despesas:** Adição e remoção de gastos com interface simplificada e intuitiva.
* **Sincronização Cloud:** Integração total com **Supabase** para armazenamento seguro e persistência de dados na nuvem.
* **Análise Visual:** Gráficos de barras interativos que mostram o resumo de gastos por categoria.
* **Categorização Dinâmica:** Suporte para diferentes tipos de despesas (Alimentação, Lazer, Trabalho e Viagens) com ícones correspondentes.
* **Feedback de Usuário:** Sistema de exclusão com funcionalidade "swipe-to-delete" e opção de desfazer a ação.
* **Design Moderno:** Interface limpa seguindo os padrões do Material Design 3 com suporte a temas adaptáveis.
* **Foco em Performance:** Lógica de estado otimizada para garantir transições fluidas e respostas rápidas.

---

## 🛠️ Tecnologias Utilizadas

* **Framework:** [Flutter](https://flutter.dev/) para desenvolvimento cross-platform.
* **Linguagem:** [Dart](https://dart.dev/).
* **Banco de Dados:** [Supabase](https://supabase.com/) como Backend-as-a-Service (PostgreSQL).
* **Estilização:** Customização de temas e componentes Material 3.
* **Gerenciamento de Estado:** Uso de `StatefulWidget` e serviços desacoplados para controle de fluxo e dados.

---

## 📂 Estrutura do Projeto

* **`lib/main.dart`**: Ponto de entrada e configuração do tema do aplicativo.
* **`lib/services/`**: Contém o `expense_service.dart` para integração com a API do Supabase.
* **`lib/models/`**: Define a estrutura de dados central (`Expense`).
* **`lib/models/widgets/`**: Componentes modulares como `NewExpense`, `Chart` e `ExpensesList`.
* **`lib/models/widgets/expenses.dart`**: Tela principal que coordena o estado das despesas.

---

## ⚙️ Configuração Local

1.  Clone o repositório.
2.  Certifique-se de ter o Flutter SDK instalado.
3.  Configure suas credenciais do Supabase no arquivo de inicialização.
4.  Instale as dependências: `flutter pub get`.
5.  Execute o projeto: `flutter run`.

---

## 👨‍💻 Autor

Projeto desenvolvido com foco em integração de serviços backend no Flutter e criação de interfaces financeiras dinâmicas, explorando o poder do Supabase como banco de dados.

---

# Spendo App

**Spendo App** is an intuitive and efficient mobile application built with Flutter for personal expense tracking. The app offers a complete financial management experience, allowing users to record spending, use smart categorization, and visualize data through dynamic charts, all synced in real-time.

---

## 🚀 Key Features

* **Expense Management:** Add and remove expenses with a simplified and intuitive interface.
* **Cloud Synchronization:** Full integration with **Supabase** for secure storage and cloud data persistence.
* **Visual Analysis:** Interactive bar charts showing spending summaries by category.
* **Dynamic Categorization:** Support for various expense types (Food, Leisure, Work, and Travel) with corresponding icons.
* **User Feedback:** Deletion system with "swipe-to-delete" functionality and an undo option.
* **Modern Design:** Clean UI following Material Design 3 standards with adaptive theme support.
* **Performance Focused:** Optimized state logic to ensure fluid transitions and fast responses.

---

## 🛠️ Tech Stack

* **Framework:** [Flutter](https://flutter.dev/) for cross-platform development.
* **Language:** [Dart](https://dart.dev/).
* **Database:** [Supabase](https://supabase.com/) as Backend-as-a-Service (PostgreSQL).
* **Styling:** Custom themes and Material 3 components.
* **State Management:** Native `StatefulWidget` and decoupled services for flow and data control.

---

## 📂 Project Structure

* **`lib/main.dart`**: Entry point and application theme configuration.
* **`lib/services/`**: Contains `expense_service.dart` for Supabase API integration.
* **`lib/models/`**: Defines the core data structure (`Expense`).
* **`lib/models/widgets/`**: Modular components such as `NewExpense`, `Chart`, and `ExpensesList`.
* **`lib/models/widgets/expenses.dart`**: Main screen coordinating the expense state.

---

## ⚙️ Local Setup

1.  Clone the repository.
2.  Ensure Flutter SDK is installed.
3.  Configure your Supabase credentials in the initialization file.
4.  Install dependencies: `flutter pub get`.
5.  Run the project: `flutter run`.

---

## 👨‍💻 Author

Project developed with a focus on backend service integration in Flutter and creating dynamic financial interfaces, exploring the power of Supabase as a database.
