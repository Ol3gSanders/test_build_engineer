1. необходимо клонировать проект
	git clone https://github.com/Ol3gSanders/test_build_engineer.git
2. перейти в папку проекта и открыть терминал
3. в терминале выполить следующие команды:
	docker build -t clang-14 . (дождаться, когда команда закончит своё выполнение)
	docker run -it clang-14
4. выполнить внутри контейнера следующие команды:
	cd /usr/local/src/
	apt -y install wget
	wget https://www.openssl.org/source/openssl-1.1.1c.tar.gz
	tar -xf openssl-1.1.1c.tar.gz
	cd openssl-1.1.1c
	./config --prefix=/usr/local/ssl --openssldir=/usr/local/ssl shared zlib
	make > logs.txt
5. для просмотра логов сборки, необходимо выполнить следующую команду:
	cat logs.txt