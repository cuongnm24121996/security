### Run authentication server
- **Step 1**:
    Setup docker and docker-compose
- **Step 2**:
    cd `home` and create `sites` folder
- **Step 3**:
    Config domain `tenant1.oauth.com 172.0.0.1` `tenant2.oauth.com 172.0.0.1`
- **Step 4**: `cd ~/src/main/java/docker`. Run cmd:
        `docker-compose up`
        Open tool mysql administration:
            host: localhost
            port: 3307
            username: cuongnm
            password: cuongnm
            database: uaa

- **Step 5**: Run app
   
### Credential to get access
    username: cuongnm_admin
    password: cuongnm
    client_id: mobile
    client_secret: cuongnm