
## background:https://kb.authlete.com/en/s/oauth-and-openid-connect/a/client-auth-private-key-jwt
### Running

```bash

mvn package -DskipTests && java -jar target/ROOT.war

```

### build with docker: 
docker build -t jwks .

### Docker run with compose file: 
docker-compose up -d

### Open in browser: http://localhost:9010