# Docker-образ для Django

Этот репозиторий содержит Docker-образ для запуска проектов на Django.

## Об образе

- DockerHub: [gjiuxapb/django](https://hub.docker.com/r/gjiuxapb/django)
- Последний образ: `gjiuxapb/django:latest`

Образ основан на `python:3.13.7-slim` и включает в себя:

*   Python 3.13.7
*   `libpq-dev` для поддержки PostgreSQL
*   Зависимости, перечисленные в `requirements.txt`

## Зависимости

Установлены следующие пакеты Python:

*   asgiref
*   Django
*   gunicorn
*   packaging
*   psycopg
*   psycopg-binary
*   python-dotenv
*   sqlparse
*   tzdata

## Как использовать

1.  **Сборка образа:**

    ```bash
    docker build -t django-app .
    ```

2.  **Запуск контейнера:**

    ```bash
    docker run -it --rm -v $(pwd):/app django-app
    ```

    Эта команда запустит bash-сессию внутри контейнера, с вашей директорией проекта, смонтированной в `/app`.

## Пример использования

Чтобы начать новый проект Django, вы можете выполнить следующие команды после запуска контейнера:

```bash
django-admin startproject myproject .
```

Чтобы запустить сервер для разработки:

```bash
python manage.py runserver 0.0.0.0:8000
```