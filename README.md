# mark85-robot-express

Projeto de automação de testes para cadastro de usuários utilizando Robot Framework e Browser Library.

## Tecnologias

- Robot Framework  
- Browser Library (para testes em navegador Chromium)  
- Python (scripts auxiliares para banco de dados)  
- MongoDB (banco de dados para usuários)  

## Como rodar os testes

1. Clone o repositório:  
   \`\`\`bash  
   git clone <url-do-repositório>  
   cd mark85-robot-express  
   \`\`\`

2. Configure seu ambiente Python (recomendado criar um virtualenv):  
   \`\`\`bash  
   python -m venv venv  
   # No Linux/Mac  
   source venv/bin/activate  
   # No Windows  
   venv\\Scripts\\activate  
   \`\`\`

3. Instale as dependências:  
   \`\`\`bash  
   pip install -r requirements.txt  
   \`\`\`

4. Garanta que o MongoDB esteja rodando localmente (padrão localhost:27017).

5. Execute os testes com Robot Framework:  
   \`\`\`bash  
   robot -d ./logs tests/signup.robot  
   \`\`\`

## Estrutura do projeto

- \`tests/\`: arquivos de teste Robot Framework  
- \`resources/\`: keywords e páginas para os testes  
- \`libs/\`: bibliotecas Python auxiliares para banco de dados  
- \`logs/\`: logs gerados após execução dos testes  

## Contato

https://www.linkedin.com/in/cintialvesss/
