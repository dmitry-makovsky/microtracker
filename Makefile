install: get-modules install-modules migrate-seed pm2-reinstall

get-modules:
	sh scripts/getModules.sh

install-modules:
	sh scripts/installModules.sh

migrate-seed:
	sh scripts/migrateSeed.sh

clean-db:
	sh scripts/cleanDb.sh

pm2-reinstall:
	pm2 delete all;\
	pm2 start ecosystem.config.js;\
	pm2 startup;\
	pm2 save

run:
	pm2 start ecosystem.config.js --env production;\
	pm2 startup;\
	pm2 save