# docker-postgrespro-1c

## Что это?

docker-postgrespro-1c -- это Docker-контейнер PostgreSQL для использования с сервером 1С:Предприятия (который, в свою очередь, тоже может работать в [контейнере Docker](https://github.com/lufton/docker-1c-server)). В контейнере используется сборка Postgres Professional, которая содержит патчи, разработанные компанией 1С.

## Какая версия?
Postgresql 9.6.5
ubuntu 17.04 Zesty

## Как это установить?

Для установки и начального запуска выполните команды:

    git clone https://github.com/lufton/docker-postgrespro-1c.git
    cd docker-postgrespro-1c
    ./build.sh
    ./run.sh

:exclamation: __ВАЖНО__ PostgreSQL в образе никак не сконфигурирован. Если вы хотите использовать свою конфигурацию PostgreSQL, отредактируйте файл `container/postgresql.conf.sh` перед вызовом `build.sh`. После этого все контейнеры, созданные из этого образа, будут сконфигурированы аналогично.

## Как остановить/запустить/перезапустить контейнер?

Запускается со скрипта run.sh

Для управления контейнером используйте команды:

    docker stop postgrespro-1c
    docker start postgrespro-1c
    docker restart postgrespro-1c

## Какой пароль у администратора?

При первом запуске контейнера пользователю `postgress` назначается пароль `123`. Не забудьте поменять его на более надёжный.

## Где мои данные?

Данные PostgreSQL вы можете найти в каталоге `/var/lib/docker/volumes/postgrespro-1c-data/_data`.

## Как это удалить?

Удалите контейнер:

    docker rm -f postgrespro-1c

:fire: Удалите данные:

    docker volume rm postgrespro-1c-data