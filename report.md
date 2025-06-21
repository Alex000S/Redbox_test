# 📌 Тестовое задание: Системный администратор с ростом в DevOps

## 🎯 Цель

Оценить:

- Техническую подготовку
- Подход к решению задач
- Понимание DevOps-практик

---

## 📦 Формат сдачи

- Упаковать всё в архив или оформить как git-репозиторий
- Приложить `README.md`, содержащий:
  - Инструкцию по запуску
  - Краткие пояснения к каждому пункту

---

## ⏳ Сроки

- На выполнение даётся **3 дня** с момента получения задания
- Ожидаемое время выполнения — **4–6 часов** для уверенного специалиста
- Не обязательно доводить до уровня production — важен **подход к решению задач**

⚠️ Можно выполнить только 2–3 задания, но **приоритет** — `Docker + Ansible + Bash`

---

## ✅ Задания

### 1. Настройка окружения в Docker

Создать простой проект из следующих компонентов:

- `PostgreSQL`
- `Redis`
- `nginx` (проксирует запросы к `php-fpm`)
- `PHP` (версия 8.1+)
  - Пример скрипта: [Ссылка на PHP-скрипт](https://disk.360.yandex.ru/d/m87BkKigYk7Wag)

### Ожидается:

- `docker-compose.yml`, запускаемый командой:
  ```bash
  docker compose up -d

# Решение:
1. Нужно создать такие папки как "nginx", "php", "src".
2. Далее нужно создать Dockerfile в папке php

![Dockerfile for php](images/dockerfile_php.jpg)

3. Далее создаем файл nginx.conf и заполняем его в папке nginx.

![Dockerfile for php](images/nginxconf.jpg)

4. В папке src разархивируем наш index.php

5. Далее создаем docker-compose.yml и заполняем его согласно нашим сервисам. Прописываем базу данных, также все пароли и логины для подключения к бд и не забываем про порты.

![Dockerfile for php](images/dockercompose1.jpg)

![Dockerfile for php](images/dockercompose2.jpg)

6. После этого запускаем наш docker-compose.yml командой "docker compose up -d"

![Dockerfile for php](images/startdockercompose.jpg)

Результаты работы наших поднятых сервисов:

![Dockerfile for php](images/nginxwork.jpg)

![Dockerfile for php](images/dbcontainer.jpg)



### 2. Настройка мониторинга (плюсом)

Добавьте Prometheus и Grafana для мониторинга контейнеров.

### Ожидается:

- `Docker Compose дополненный сервисами мониторинга`
- `Конфиг Prometheus (сбор метрик c Nginx)`
- `Один пример дашборда в Grafana (JSON или скриншот)`

# Решение:

1. Дополняем наш docker-compose.yml для prometheus и grafana.

![Dockerfile for php](images/grafanaprometheus.jpg)

2. Запускаем наш docker-compose.yml и видим что все контейнеры поднялись в том числе prometheus и grafana.

![Dockerfile for php](images/containers.jpg)

3. Далее можем подключиться по localhost и настроить наш prometheus и grafana, затем выбрать дашборд и увидеть что они оба соединены между собой и работают и результатом служат метрики которые выводятся на дашборде:

![Dockerfile for php](images/metrics1.jpg)

![Dockerfile for php](images/metrics2.jpg)

![Dockerfile for php](images/metrics3.jpg)

Результаты подключения локально:

![Dockerfile for php](images/nginxexporter.jpg)

![Dockerfile for php](images/promgrafana.jpg)



### 3. Разработка Ansible-плейбука

Напишите Ansible-плейбук, который:

- `Устанавливает docker`
- `Cкачивание проекта с git`
- `Запуск проекта через docker compose up -d`

### Ожидается:

- `Ansible-плейбук`

1. 