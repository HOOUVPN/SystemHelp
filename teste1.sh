#######################################################

# Função para exibir um banner centralizado
exibir_banner() {
    clear
    echo -e "$green"
    echo -e "\e[32m▄████████ ▄██   ▄      ▄████████     ███        ▄████████   ▄▄▄▄███▄▄▄▄\e[0m"
    echo -e "\e[32m███    ███ ███   ██▄   ███    ███ ▀█████████▄   ███    ███ ▄██▀▀▀███▀▀▀██▄\e[0m"
    echo -e "\e[32m███    █▀  ███▄▄▄███   ███    █▀     ▀███▀▀██   ███    █▀  ███   ███   ██▄\e[0m"
    echo -e "\e[32m███        ▀▀▀▀▀▀███   ███            ███   ▀  ▄███▄▄▄     ███   ███   ██▄\e[0m"
    echo -e "\e[32m▀███████████ ▄██   ███ ▀███████████     ███     ▀▀███▀▀▀     ███   ███   ██▄\e[0m"
    echo -e "\e[32m         ███ ███   ███          ███     ███       ███    █▄  ███   ███   ██▄\e[0m"
    echo -e "\e[32m   ▄█    ███ ███   ███    ▄█    ███     ███       ███    ███ ███   ███   ██▄\e[0m"
    echo -e "\e[32m ▄████████▀   ▀█████▀   ▄████████▀     ▄████▀     ██████████  ▀█   ███   █▀\e[0m"
    echo -e "\e[32m           By SystemHelp MOD V. 0.0.1\e[0m"
    echo -e "\e[32m                          APOIA AQUI ESTA O PIX CNPJ: 48.590.314/0001-18 \e[0m"
    echo -e "\e[32m                          Telegram https://t.me/+FGzk0EiNths1N2Nh \e[0m"
    echo -e "\e[32m                          YOUTUBE https://www.youtube.com/@SYSTEMHELP\e[0m"
    echo -e "$reset"
    echo -e "\e[32m\e[0m"
    echo -e "\e[32m\e[0m"
    echo -e "\e[32m\e[0m"
    echo -e "\e[32m\e[0m"
}

# Exibir um banner inicial
exibir_banner

while true; do
    exibir_banner

    # Função para configurar o Evolution API
    configurar_evolution() {
        exibir_banner

        echo "Vamos Instalar o EvolutionApi"
        echo ""
        read -p "Digite seu domínio para acessar a EvolutionApi (ex: api.dominio.com): " dominio

        while [ -z "$dominio" ]; do
            echo "Resposta inválida. O domínio não pode ser vazio."
            read -p "Digite seu domínio para acessar a EvolutionApi (ex: api.dominio.com): " dominio
        done

        echo ""
        read -p "Digite a porta da EvolutionApi (padrão: 8080): " porta

        while [ -z "$porta" ]; do
            echo "Resposta inválida. A porta não pode ser vazia."
            read -p "Digite a porta da EvolutionApi (padrão: 8080): " porta
        done

        read -p "Digite o nome para sua API (ex: system): " client

        while [ -z "$client" ]; do
            echo "Resposta inválida. O nome da API não pode ser vazio."
            read -p "Digite o nome para sua API (ex: system): " client
        done

        echo ""
        echo "ATENÇÃO ⚠️ CRIE UM TOKEN DE 32 CARACTERES OU USE O QUE JA ESTÁ AQUI⚠️: https://codebeautify.org/generate-random-hexadecimal-numbers"
        read -p "Sua ApiKey Global (ex: c56f3775313440c3edce57529a0f02b4): " keyy

        while [ -z "$keyy" ]; do
            echo "Resposta inválida. A ApiKey Global não pode ser vazia."
            read -p "Sua ApiKey Global (ex: c56f3775313440c3edce57529a0f02b4): " keyy
        done

        # Pergunte ao usuário se as informações estão corretas
        exibir_banner

        echo "As informações fornecidas estão corretas?"
        echo "Domínio da API: $dominio"
        echo "Porta da API: $porta"
        echo "Nome da API: $client"
        echo "ApiKey Global: $keyy"
        read -p "Digite 'Y' para continuar ou 'N' para corrigir: " confirmacao

        if [ "$confirmacao" != "Y" ] && [ "$confirmacao" != "y" ]; then
            configurar_evolution  # Se as informações estiverem incorretas, repita a configuração
        fi
    }

    # Função para configurar o TypeBot
    configurar_typebot() {
        exibir_banner

        echo "Agora vamos configurar o Typebot para rodar em Docker"
        echo ""
        read -p "Qual é o seu domínio para o Typebot (ex: typebot.seudominio.com): " builder

        while [ -z "$builder" ]; do
            echo "Resposta inválida. O domínio do Typebot não pode ser vazio."
            read -p "Qual é o seu domínio para o Typebot (ex: typebot.seudominio.com): " builder
        done

        echo ""
        read -p "Porta para o Typebot (padrão: 3301): " portabuilder

        while [ -z "$portabuilder" ]; do
            portabuilder="3301"
        done

        read -p "Qual é o seu domínio para o Bot (ex: bot.seudominio.com): " viewer

        while [ -z "$viewer" ]; do
            echo "Resposta inválida. O domínio do Bot não pode ser vazio."
            read -p "Qual é o seu domínio para o Bot (ex: bot.seudominio.com): " viewer
        done

        echo ""
        read -p "Porta para seu Bot (padrão: 3302): " portaviewer

        while [ -z "$portaviewer" ]; do
            portaviewer="3302"
        done

        read -p "Qual é o seu domínio para o Storage (ex: storage.seudominio.com): " storage

        while [ -z "$storage" ]; do
            echo "Resposta inválida. O domínio do Storage não pode ser vazio."
            read -p "Qual é o seu domínio para o Storage (ex: storage.seudominio.com): " storage
        done

        echo ""
        read -p "Porta para o Storage (padrão: 9020): " portastorage

        while [ -z "$portastorage" ]; do
            portastorage="9020"
        done

        read -p "Seu Email (eu configurei para que funcione com o Gmail, então, em outro email, pode não funcionar): " email

        while [ -z "$email" ]; do
            echo "Resposta inválida. O Email não pode ser vazio."
            read -p "Seu Email (eu configurei para que funcione com o Gmail, então, em outro email, pode não funcionar): " email
        done

        echo ""
        read -p "Senha do aplicativo do Gmail (se você não souber o que é, pare aqui e procure): " senha

        while [ -z "$senha" ]; do
            echo "Resposta inválida. A senha não pode ser vazia."
            read -p "Senha do aplicativo do Gmail (se você não souber o que é, pare aqui e procure): " senha
        done

        echo ""
        read -p "SMTP do Gmail (ex: smtp.gmail.com): " smtp

        while [ -z "$smtp" ]; do
            echo "Resposta inválida. O SMTP do Gmail não pode ser vazio."
            read -p "SMTP do Gmail (ex: smtp.gmail.com): " smtp
        done

        echo ""
        read -p "Porta SMTP (ex: 587): " portasmtp

        while [ -z "$portasmtp" ]; do
            echo "Resposta inválida. A porta SMTP não pode ser vazia."
            read -p "Porta SMTP (ex: 587): " portasmtp
        done

        echo ""
        read -p "SMTP_SECURE (Se a porta SMTP for 587, digite false; caso contrário, digite true): " SECURE

        while [ -z "$SECURE" ]; do
            echo "Resposta inválida. O campo SMTP_SECURE não pode ser vazio."
            read -p "SMTP_SECURE (Se a porta SMTP for 587, digite false; caso contrário, digite true): " SECURE
        done


 # Pergunte ao usuário se as informações estão corretas
    exibir_banner

    echo "As informações fornecidas estão corretas?"
    echo "Domínio do Typebot: $builder"
    echo "Porta do Typebot: $portabuilder"
    echo "Domínio do Bot: $viewer"
    echo "Porta do Bot: $portaviewer"
    echo "Domínio do Storage: $storage"
    echo "Porta do Storage: $portastorage"
    echo "Email: $email"
    echo "SMTP do Gmail: $smtp"
    echo "Porta SMTP: $portasmtp"
    echo "SMTP_SECURE: $SECURE"
    read -p "Digite 'Y' para continuar ou 'N' para corrigir: " confirmacao

    if [ "$confirmacao" != "Y" ] && [ "$confirmacao" != "y" ]; then
        return  # Retorna da função para continuar após a confirmação
    fi

    # Se o usuário confirmar, o script continuará daqui
#######################################################

echo "Instalando as Dependencias"

sleep 3

clear

sudo apt update -y

sudo apt upgrade -y

curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash - && apt-get install -y nodejs

npm install -g npm@

npm install -g pm2@

apt-get install -y git zip unzip nload snapd curl wget sudo

sudo timedatectl set-timezone America/Sao_Paulo

apt update && apt -y upgrade

apt install docker-compose -y

sudo apt update

sudo apt install nginx -y

sudo apt update

sudo apt install certbot -y

sudo apt install python3-certbot-nginx -y

sudo apt update

#systemctl start nginx

#systemctl enable nginx

#snap install --classic certbot

#rm /etc/nginx/sites-enabled/default

clear

cd

cd

#######################################################

echo "Clonando git e trocando para develop"

git clone https://github.com/HOOUVPN/MegaSystemHelp.git

cd evolution-api

git branch -a

git checkout develop

cd

cd

echo "Criando Env e Instalando com NPM"

cat > env.yml << EOL
# Choose the server type for the application
SERVER:
  TYPE: http # https
  PORT: $porta # 443
  URL: https://$dominio

CORS:
  ORIGIN:
    - "*"
    # - yourdomain.com
  METHODS:
    - POST
    - GET
    - PUT
    - DELETE
  CREDENTIALS: true

# Install ssl certificate and replace string <domain> with domain name
# Access: https://certbot.eff.org/instructions?ws=other&os=ubuntufocal
SSL_CONF:
  PRIVKEY: /etc/letsencrypt/live/<domain>/privkey.pem
  FULLCHAIN: /etc/letsencrypt/live/<domain>/fullchain.pem

# Determine the logs to be displayed
LOG:
  LEVEL:
    - ERROR
    - WARN
    - DEBUG
    - INFO
    - LOG
    - VERBOSE
    - DARK
    - WEBHOOKS
  COLOR: true
  BAILEYS: error # fatal | error | warn | info | debug | trace

# Determine how long the instance should be deleted from memory in case of no connection.
# Default time: 5 minutes
# If you don't even want an expiration, enter the value false
DEL_INSTANCE: false # or false

# Temporary data storage
STORE:
  MESSAGES: true
  MESSAGE_UP: true
  CONTACTS: true
  CHATS: true

CLEAN_STORE:
  CLEANING_INTERVAL: 7200 # 7200 seconds === 2h
  MESSAGES: true
  MESSAGE_UP: true
  CONTACTS: true
  CHATS: true

# Permanent data storage
DATABASE:
  ENABLED: false
  CONNECTION:
    URI: "mongodb://root:root@localhost:27017/?authSource=admin&readPreference=primary&ssl=false&directConnection=true"
    DB_PREFIX_NAME: evolution
  # Choose the data you want to save in the application's database or store
  SAVE_DATA:
    INSTANCE: false
    NEW_MESSAGE: false
    MESSAGE_UPDATE: false
    CONTACTS: false
    CHATS: false

REDIS:
  ENABLED: false
  URI: "redis://localhost:6379"
  PREFIX_KEY: "evolution"

RABBITMQ:
  ENABLED: false
  URI: "amqp://guest:guest@localhost:5672"

WEBSOCKET: 
  ENABLED: false

# Global Webhook Settings
# Each instance's Webhook URL and events will be requested at the time it is created
WEBHOOK:
  # Define a global webhook that will listen for enabled events from all instances
  GLOBAL:
    URL: <url>
    ENABLED: false
    # With this option activated, you work with a url per webhook event, respecting the global url and the name of each event
    WEBHOOK_BY_EVENTS: false
  # Automatically maps webhook paths
  # Set the events you want to hear
  EVENTS:
    APPLICATION_STARTUP: false
    QRCODE_UPDATED: true
    MESSAGES_SET: true
    MESSAGES_UPSERT: true
    MESSAGES_UPDATE: true
    MESSAGES_DELETE: true
    SEND_MESSAGE: true
    CONTACTS_SET: true
    CONTACTS_UPSERT: true
    CONTACTS_UPDATE: true
    PRESENCE_UPDATE: true
    CHATS_SET: true
    CHATS_UPSERT: true
    CHATS_UPDATE: true
    CHATS_DELETE: true
    GROUPS_UPSERT: true
    GROUP_UPDATE: true
    GROUP_PARTICIPANTS_UPDATE: true
    CONNECTION_UPDATE: true
    CALL: true
    # This event fires every time a new token is requested via the refresh route
    NEW_JWT_TOKEN: false

CONFIG_SESSION_PHONE:
  # Name that will be displayed on smartphone connection
  CLIENT: "$client"
  NAME: chrome # chrome | firefox | edge | opera | safari

# Set qrcode display limit
QRCODE:
  LIMIT: 30
  COLOR: '#198754'

# Defines an authentication type for the api
# We recommend using the apikey because it will allow you to use a custom token,
# if you use jwt, a random token will be generated and may be expired and you will have to generate a new token
AUTHENTICATION:
  TYPE: apikey # jwt or apikey
  # Define a global apikey to access all instances
  API_KEY:
    # OBS: This key must be inserted in the request header to create an instance.
    KEY: $keyy
  # Expose the api key on return from fetch instances
  EXPOSE_IN_FETCH_INSTANCES: true
  # Set the secret key to encrypt and decrypt your token and its expiration time.
  JWT:
    EXPIRIN_IN: 0 # seconds - 3600s === 1h | zero (0) - never expires
    SECRET: L=6544120E713976
EOL

#######################################################

sudo mv env.yml evolution-api/src/env.yml

cd

cd evolution-api

npm install

echo "Iniciando pm2"

pm2 start 'npm run start:prod' --name ApiEvolution

pm2 startup

pm2 save --force

#######################################################

clear

cd

cd

echo "Proxy Reverso"

cat > api << EOL
server {
  server_name $dominio;

  location / {
    proxy_pass http://127.0.0.1:$porta;
    proxy_http_version 1.1;
    proxy_set_header Upgrade \$http_upgrade;
    proxy_set_header Connection 'upgrade';
    proxy_set_header Host \$host;
    proxy_set_header X-Real-IP \$remote_addr;
    proxy_set_header X-Forwarded-Proto \$scheme;
    proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
    proxy_cache_bypass \$http_upgrade;
  }
}
EOL

#######################################################
clear
cd

sudo mv api /etc/nginx/sites-available/api

ln -s /etc/nginx/sites-available/api /etc/nginx/sites-enabled

systemctl reload nginx

###############
###############
###############
echo "Instalando Typebot"

echo "Criando arquivo docker-compose.yml"

sleep 3

cat > docker-compose.yml << EOL
version: '3.3'
services:
  typebot-db:
    image: postgres:13
    restart: always
    volumes:
      - db_data:/var/lib/postgresql/data
    environment:
      - POSTGRES_DB=typebot
      - POSTGRES_PASSWORD=typebot
  typebot-builder:
    ports:
      - $portabuilder:3000
    image: baptistearno/typebot-builder:2.16.0
    restart: always
    depends_on:
      - typebot-db
    environment:
      - DATABASE_URL=postgresql://postgres:typebot@typebot-db:5432/typebot
      - NEXTAUTH_URL=https://$builder
      - NEXT_PUBLIC_VIEWER_URL=https://$viewer

      - ENCRYPTION_SECRET=$key

      - ADMIN_EMAIL=$email

      - SMTP_SECURE=$SECURE

      - SMTP_HOST=$smtp
      - SMTP_PORT=$portasmtp
      - SMTP_USERNAME=$email
      - SMTP_PASSWORD=$senha
      - NEXT_PUBLIC_SMTP_FROM='Suporte Typebot' <$email>

      - S3_ACCESS_KEY=minio
      - S3_SECRET_KEY=minio123
      - S3_BUCKET=typebot
      - S3_ENDPOINT=$storage
  typebot-viewer:
    ports:
      - $portaviewer:3000
    image: baptistearno/typebot-viewer:2.16.0
    restart: always
    environment:
      - DATABASE_URL=postgresql://postgres:typebot@typebot-db:5432/typebot
      - NEXT_PUBLIC_VIEWER_URL=https://$viewer
      - ENCRYPTION_SECRET=$key

      - S3_ACCESS_KEY=minio
      - S3_SECRET_KEY=minio123
      - S3_BUCKET=typebot
      - S3_ENDPOINT=$storage
  mail:
    image: bytemark/smtp
    restart: always
  minio:
    labels:
      virtual.host: '$storage'
      virtual.port: '$portastorage'
      virtual.tls-email: '$email'
    image: minio/minio
    command: server /data
    ports:
      - '$portastorage:$portastorage'
    environment:
      MINIO_ROOT_USER: minio
      MINIO_ROOT_PASSWORD: minio123
    volumes:
      - s3_data:/data
  createbuckets:
    image: minio/mc
    depends_on:
      - minio
    entrypoint: >
      /bin/sh -c "
      sleep 10;
      /usr/bin/mc config host add minio http://minio:$portastorage minio minio123;
      /usr/bin/mc mb minio/typebot;
      /usr/bin/mc anonymous set public minio/typebot/public;
      exit 0;
      "
volumes:
  db_data:
  s3_data:
EOL

echo "Criado e configurado com sucesso"

sleep 3

clear

###############################################

echo "Iniciando Conteiner"

sleep 3

docker-compose up -d

echo "Typebot Instaldo... Realizando Proxy Reverso"

sleep 3

clear

###############################################

cd

cat > typebot << EOL
server {

  server_name $builder;

  location / {

    proxy_pass http://127.0.0.1:$portabuilder;

    proxy_http_version 1.1;

    proxy_set_header Upgrade \$http_upgrade;

    proxy_set_header Connection 'upgrade';

    proxy_set_header Host \$host;

    proxy_set_header X-Real-IP \$remote_addr;

    proxy_set_header X-Forwarded-Proto \$scheme;

    proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
    
    proxy_cache_bypass \$http_upgrade;

    }

  }
EOL

###############################################

sudo mv typebot /etc/nginx/sites-available/

sudo ln -s /etc/nginx/sites-available/typebot /etc/nginx/sites-enabled

###############################################

cd

cat > bot << EOL
server {

  server_name $viewer;

  location / {

    proxy_pass http://127.0.0.1:$portaviewer;

    proxy_http_version 1.1;

    proxy_set_header Upgrade \$http_upgrade;

    proxy_set_header Connection 'upgrade';

    proxy_set_header Host \$host;

    proxy_set_header X-Real-IP \$remote_addr;

    proxy_set_header X-Forwarded-Proto \$scheme;

    proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
    
    proxy_cache_bypass \$http_upgrade;

    }

  }
EOL

###############################################

sudo mv bot /etc/nginx/sites-available/

sudo ln -s /etc/nginx/sites-available/bot /etc/nginx/sites-enabled

##################################################

cd

cat > storage << EOL
server {

  server_name $storage;

  location / {

    proxy_pass http://127.0.0.1:$portastorage;

    proxy_http_version 1.1;

    proxy_set_header Upgrade \$http_upgrade;

    proxy_set_header Connection 'upgrade';

    proxy_set_header Host \$host;

    proxy_set_header X-Real-IP \$remote_addr;

    proxy_set_header X-Forwarded-Proto \$scheme;

    proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
    
    proxy_cache_bypass \$http_upgrade;

    }

  }
EOL

###############################################

sudo mv storage /etc/nginx/sites-available/

sudo ln -s /etc/nginx/sites-available/storage /etc/nginx/sites-enabled

#######################################################

echo "proxy reverso da Evolution e do typebot"

sudo certbot --nginx --email $email --redirect --agree-tos -d $dominio -d $builder -d $viewer -d $storage


#######################################################
  }

    # Pergunte ao usuário se deseja configurar o Evolution API ou o TypeBot
    echo "Escolha uma opção:"
    echo "1. Configurar o Evolution API"
    echo "2. Configurar o TypeBot"
    echo "3. Sair"
    read -p "Digite o número da opção desejada: " escolha

    case $escolha in
        1)
            configurar_evolution
            ;;
        2)
            configurar_typebot
            ;;
        3)
            # Opção para sair do script
            exibir_banner
            echo "Saindo do script..."
            exit 0
            ;;
        *)
            exibir_banner
            echo "Opção inválida, tente novamente."
            ;;
    esac
done

# Finalize o script com um código de saída 0 (sucesso)
exit 0
Neste código revisado, eu organizei suas funções e adicionei um menu para o usuário escolher entre configurar o Evolution API, configurar o TypeBot ou sair do script. Certifique-se de incluir o finalizador exit 0 no final do seu script, após o loop while. Isso garantirá que o script seja finalizado com um código de saída 0 quando o usuário optar por sair.
