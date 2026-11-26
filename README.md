# Comparison-of-Ada-and-C-
A comparative study of Ada and C++, exploring their syntax, programming paradigms, memory management, type systems, performance, and safety features. The repository highlights the main similarities and differences between the two languages through practical code examples and analysis.

## Estrutura do projeto

- `ADA/`: exemplos e análises organizados por escopo, tipos, memória, expressões e modularização.
- `C++/`: exemplos e análises organizados pelos mesmos temas.
- `comparacoes/`: comparações diretas entre as linguagens.
- `comparacoes/experimentos/`: experimentos práticos.
- `docs/referencias.md`: referências utilizadas no projeto.
- `LICENSE`: licença do projeto, ainda a definir.

# Como Executar o Projeto

Guia rápido para configurar o ambiente Docker, compilar e executar os códigos em **Ada** e **C++**.

## 1. Construir a imagem Docker

Execute o comando abaixo na raiz do repositório **apenas na primeira vez** (ou sempre que modificar o `Dockerfile`):

```bash
docker build -t lp-ada-cpp .
```

## 2. Acessar o terminal do container

Sempre que for programar ou testar códigos, inicie o container a partir da **raiz do repositório** usando o comando correspondente ao seu sistema:

* **Linux / WSL / macOS:**
  ```bash
  docker run --rm -it -v "$(pwd):/workspace" lp-ada-cpp
  ```

* **Windows (PowerShell):**
  ```powershell
  docker run --rm -it -v "${PWD}:/workspace" lp-ada-cpp
  ```

> **Nota:** A pasta do projeto é vinculada a `/workspace` dentro do container. Todas as alterações feitas nos arquivos permanecem salvas no seu computador mesmo após encerrar a sessão com `exit`.

## 3. Compilar e executar os códigos

Já dentro do terminal do container, acesse a pasta desejada e execute os comandos de compilação (substituindo `<subpasta>` e `arquivo` pelos nomes reais):

### Ada
```bash
cd /workspace/ADA/<subpasta>
gnatmake -gnat95 arquivo.adb && ./arquivo
```

### C++
```bash
cd /workspace/C++/<subpasta>
g++ -std=c++20 -Wall -Wextra arquivo.cpp -o arquivo && ./arquivo
```