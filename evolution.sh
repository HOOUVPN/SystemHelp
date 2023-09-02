#######################################################

clear
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m _______                _                 _                  _______  ______   _ \e[0m"
echo -e "\e[32m(_______)              | |           _   (_)                (_______)(_____ \ | |\e[0m"
echo -e "\e[32m _____    _   _   ___  | |  _   _  _| |_  _   ___   ____     _______  _____) )| |\e[0m"
echo -e "\e[32m|  ___)  | | | | / _ \ | | | | | |(_   _)| | / _ \ |  _ \   |  ___  ||  ____/ | |\e[0m"
echo -e "\e[32m| |_____  \ V / | |_| || | | |_| |  | |_ | || |_| || | | |  | |   | || |      | |\e[0m"
echo -e "\e[32m|_______)  \_/   \___/  \_)|____/    \__)|_| \___/ |_| |_|  |_|   |_||_|      |_|\e[0m"
echo -e "\e[32m                                                                                 \e[0m"
echo -e "\e[32m  ___      _______                       _                   \e[0m"
echo -e "\e[32m / _ \    (_______)                     | |              _   \e[0m"
echo -e "\e[32m( (_) )       _     _   _  ____   _____ | |__    ___   _| |_ \e[0m"
echo -e "\e[32m ) _ (       | |   | | | ||  _ \ | ___ ||  _ \  / _ \ (_   _)\e[0m"
echo -e "\e[32m( (/  \      | |   | |_| || |_| || ____|| |_) )| |_| |  | |_ \e[0m"
echo -e "\e[32m \__/\_)     |_|    \__  ||  __/ |_____)|____/  \___/    \__)\e[0m"
echo -e "\e[32m                   (____/ |_|                                \e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"

sleep 3

#######################################################

echo "Preencha as informações a serguir para criar o env da Evolution"
echo ""
read -p "Digite seu dominio para acessar a api (ex: api.dominio.com): " dominio
echo ""
read -p "Digite a porta da api (padrão: 8080): " porta
echo ""
read -p "Digite o nome da sua empresa (ex: OrionDesign): " client
echo ""
echo "crie sua ApiKey no link: https://codebeautify.org/generate-random-hexadecimal-numbers"
read -p "Digite sua ApiKey Global (ex: 1169f6f7306fe524e54f79e45ba012cf): " keyy
echo ""
echo ""
echo ""
echo ""
echo "Agora as informações do Docker Composer do Typebot"
echo ""
read -p "Link do Builder (ex: typebot.seudominio.com): " builder
echo ""
read -p "Porta do Builder (padrão: 3001): " portabuilder
echo ""
read -p "Link do Viewer (ex: bot.seudominio.com): " viewer
echo ""
read -p "Porta do Viewer (padrão: 3002): " portaviewer
echo ""
read -p "Link do Storage (ex: storage.seudominio.com): " storage
echo ""
read -p "Porta do Storage (padrão: 9000): " portastorage
echo ""
read -p "Seu Email (ex: contato@dominio.com): " email
echo ""
read -p "Senha do seu Email (se for gmail, precisa ser a senha de aplicativo): " senha
echo ""
read -p "SMTP do seu email (ex: smtp.hostinger.com): " smtp
echo ""
read -p "Porta SMTP (ex: 465): " portasmtp
echo ""
read -p "SMTP_SECURE (Se a porta SMTP for 465, digite true, caso contrario,digite false): " SECURE #novo
echo ""
echo "crie sua ApiKey no link: https://codebeautify.org/generate-random-hexadecimal-numbers"
read -p "Chave secreta de 32 caracteres: (ex: c56f3775313440c3edce57529a0f02b4) " key

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

git clone https://github.com/EvolutionAPI/evolution-api.git

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
    image: baptistearno/typebot-builder:main
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
    image: baptistearno/typebot-viewer:main
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
cd
cd
cd
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m _                             _              _        \e[0m"
echo -e "\e[32m| |                _          | |            | |       \e[0m"
echo -e "\e[32m| | ____    ___  _| |_  _____ | |  _____   __| |  ___  \e[0m"
echo -e "\e[32m| ||  _ \  /___)(_   _)(____ || | (____ | / _  | / _ \ \e[0m"
echo -e "\e[32m| || | | ||___ |  | |_ / ___ || | / ___ |( (_| || |_| |\e[0m"
echo -e "\e[32m|_||_| |_|(___/    \__)\_____| \_)\_____| \____| \___/ \e[0m"
echo -e "\e[32m                                                       \e[0m"              
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32mAcesse a Evolution API através do link: https://$dominio\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32mAcesse o Builder do Tyoebot através do link: https://$builder\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32mInscreva-se no meu Canal: https://youtube.com/oriondesign_oficial\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32mSugestões ou duvidas: https://wa.me/+5511973052593\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
echo -e "\e[32m\e[0m"
