# 1. Escolha uma imagem Node.js
FROM node:18

# 2. Defina o diretório de trabalho
WORKDIR /app

# 3. Copie os arquivos do projeto
COPY . .

# 4. Instale as dependências
RUN npm install

# 5. Build do projeto
RUN npm run build

# 6. Exponha a porta que o Next.js usa
EXPOSE 3000

# 7. Comando para rodar a aplicação
CMD ["npm", "run", "start"]
