install:
	npx lerna bootstrap
test:
	npx lerna run test --stream
test-api:
	npx lerna run --scope api test --stream
test-frontend:
	npx lerna run --scope frontend test --stream
lint:
	npx lerna exec --stream eslint .
dev:
	lerna run dev --stream


docker-up:
	docker-compose up
