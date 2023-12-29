build:
	docker build -t game-2048:latest -f Dockerfile --target app .

run-all:
	docker run -d --rm -p 8000:8080 --name game-2048 game-2048:latest
	docker run -d --rm -p 8001:8080 --name game-2048-2 game-2048:latest

stop-all:
	docker stop game-2048 game-2048-2
