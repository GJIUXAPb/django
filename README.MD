```YAML
version: '3.3'
services:
  django:
    image: gjiuxapb/django
    container_name: django
    restart: always
    # command: gunicorn app.wsgi:application --bind 0.0.0.0:8001 --workers 3
    command: python manage.py runserver 0.0.0.0:8001
    environment:
      - TZ=Europe/Moscow
      - POSTGRES_DB=
      - POSTGRES_USER=
      - POSTGRES_PASSWORD=${ENV_POSTGRES_PASSWORD}
      - POSTGRES_HOST=
      - POSTGRES_PORT=5432
    volumes:
      - /docker/sites/django:/app
```