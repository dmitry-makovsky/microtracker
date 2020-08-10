# microtracker
Microtracker – is a free software for affiliate marketing, that helps manage traffic and track conversions.

# Install

```shell
git clone https://github.com/dmitry-makovsky/microtracker.git
cd microtracker/
```
```
make install
cp .env.example .env
npm i pm2 -g
```

# Get letsencrypt certificate:
```
sudo apt-get install letsencrypt -y
```

```
sudo certbot certonly -n --standalone --email admin@example.com -d example.com -d www.example.com --agree-tos --preferred-challenges http
```

Copy to server folder

```
mkdir misc

sudo cat /etc/letsencrypt/live/example.com/privkey.pem > misc/key.pem

sudo cat /etc/letsencrypt/live/example.com/fullchain.pem > misc/cert.pem
```