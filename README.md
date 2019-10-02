1. Run Postgres using Docker
2. Run liquibase commands 
3. Look at the result in tables
4. Modify db.changelog-master.xml
5. Run liquibase commands again
6. Look at the new result in tables 

Also we described for what we use 'contexts' parameter in db.changelog-master.xml file


####  Run local PostgreSQL using Docker

```
mvn docker:stop && mvn docker:start
```

#### Stop and remove running docker containers

```
docker kill `docker ps -q` && docker rm `docker ps -qa`
```

#### Update database 

```
cd database/
mvn clean install && mvn liquibase:dropAll liquibase:update
```

#### Parameter 'contexts' in db.changelog-master.xml
- contexts=test -> means that scripts in test package will be executed
- contexts=prod -> means that scripts in test package will be executed 

In sql files on the second line you can see 'contexts' parameter.
So liquibase match on this parameter when you change 'contexts' in db.changelog-master.xml

#### Update database
If you change something in scripts and you want to update database so run such commands:  
```
cd database/
mvn clean install && mvn liquibase:update
```

#### Uncomment line in db.changelog-master.xml
If you uncomment line in file  db.changelog-master.xml
and update database as described below you will see some changes in table users.
So try this shit.
Good luck.

