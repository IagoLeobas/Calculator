# Usando uma imagem do Node.js como base
FROM node:14

# Definindo o diretório de trabalho para /app
WORKDIR /app

# Copiando o arquivo package.json e package-lock.json para o diretório de trabalho
COPY package*.json ./

# Instalando as dependências da aplicação
RUN npm install

# Copiando todo o código-fonte da aplicação para o diretório de trabalho
COPY . .

# Construindo a versão de produção da aplicação React.js
RUN npm run build

# Definindo o comando padrão para executar a aplicação
CMD ["npm", "start"]
