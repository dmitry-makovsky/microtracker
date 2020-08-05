get-all: get-backend

get-backend:
	git clone https://github.com/dmitry-makovsky/microtracker-backend.git backend

run:
	pm2 start ecosystem.config.js --env production;\
	pm2 save

run-backend:
	pm2 start ecosystem.config.js --only backend --env production

stop:
	pm2 stop ecosystem.config.js 

restart:
	pm2 restart ecosystem.config.js --env production

reload:
	pm2 reload ecosystem.config.js --env production

delete:
	pm2 delete ecosystem.config.js

dev:
	pm2 start ecosystem.config.js --env development

logs:
	pm2 logs