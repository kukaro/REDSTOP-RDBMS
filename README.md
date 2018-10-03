## 이 프로젝트는?
```
1. RDBMS를 사용합니다.
2. MYSQL을 사용합니다.
3. Docker container를 사용합니다.
```

## 주의 사항
```
1. 빌드시에 build.sh를 사용한다.
2. 1번이 충분히 된 후에 init.sh시행한다. DB가 로딩되는데 시간좀 걸림.
3. 지울 때는 clean.sh를 사용한다.
```

## docker
```
docker run -d -p 3306:3306 \
  -e MYSQL_ALLOW_EMPTY_PASSWORD=true \
  --name mysql \
  mysql:5.7
```

## test
```
test
tt
```

