# DRF Cinema API

#### API service for cinema management written on Django REST Framework

## Features:
 * JWT authenticated
 * Admin panel /admin/
 * Documentation is located at /api/doc/swagger/
 * Managing orders and tickets
 * Creating movies with genres, actors
 * Creating cinema halls
 * Adding movie sessions
 * Filtering movies and movie sessions

## Installing using GitHub:

#### Install PostgresSQL and create db

```bash
git clone https://github.com/VadymShkarbul/Cinema-API.git
cd Cinema-API
```
```bash
# install requirements
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```
```bash
# set your ENV variables
set DB HOST=<your db hostname>
set DB_NAME=<your db name>
set DB USER=<your db username>
set DB PASSWORD=<vour db user password>
set SECRET KEY=<your secret key>
```
```bash
# run migrations and server
python manage.py migrate
python manage.py runserver
```
## Run with docker:
#### Docker should be installed
```bash
docker-compose build
docker-compose up
```
## Getting access:

### Use the following command to load prepared data from fixture to test:
```bash
docker compose run app sh -c "python manage.py loaddata cinema_service_db_data.json"
```
#### After loading data from fixture you can get access token via [/api/user/token/](http://127.0.0.1:8000/api/user/token/)
  - Email: `admin.user@cinema.com`
  - Password: `1qazcde3`

#### Documentation is located at [/api/doc/swagger/](http://127.0.0.1:8000/api/doc/swagger/)
