# bash-snippets/pgdump

Script for backing up a PostgreSQL database and deleting files older than 30 days.

Postgresql client with sufficient version should be pre-installed:

For postgresql-client-12:

```
sudo apt install postgresql-client
```

For postgresql-14-client-14


```
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
```

```
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
```

```
sudo apt -y update
```

```
sudo apt-get install postgresql-client-14
```
