это Docker-контейнер PostgreSQL для использования с сервером 1С:Предприятия (который, в свою очередь, тоже может работать в контейнере Docker). В контейнере используется сборка Postgres Professional, которая содержит патчи, разработанные компанией 1С.

Какие версии и ОС?
PostgreSQL 9.8.5 с патчами от 1C
Centos 7

Как это установить?

git clone https://github.com/alexanderfefelov/docker-postgrespro-1c.git
cd docker-postgrespro-1c
./build.sh
./run.sh
:exclamation: ВАЖНО PostgreSQL в образе никак не сконфигурирован. Если вы хотите использовать свою конфигурацию PostgreSQL, отредактируйте файл container/postgresql.conf.sh перед вызовом build.sh. После этого все контейнеры, созданные из этого образа, будут сконфигурированы аналогично.

Как остановить/запустить/перезапустить контейнер?

Для управления контейнером используйте команды:

docker stop postgrespro-1c
docker start postgrespro-1c
docker restart postgrespro-1c
Какой пароль у администратора?

При первом запуске контейнера пользователю postgress назначается пароль password. Не забудьте поменять его на более надёжный.

Где мои данные?

Данные PostgreSQL вы можете найти в каталоге /var/lib/docker/volumes/postgrespro-1c-data/_data.

Как это удалить?

Удалите контейнер:

docker rm -f postgrespro-1c
:fire: Удалите данные:

docker volume rm postgrespro-1c-data
