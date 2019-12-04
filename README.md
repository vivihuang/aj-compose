# 🇷🇺 Russia: Build your infrastructure with code

## Run locally
Please ensure your repos in the same folder. It will build docker images if no existing images.

```bash
docker-compose up
```

## Rebuild
You need to build new images while repos has been updated.

```bash
docker-compose build
```

## Networking in services

### Service and port table

[link](https://github.com/vivihuang/aj-ui)

| Service Name | Internal Port | Outside Port | Repo |
|---|---|---|---|
| `ui` | `80` | `3000` | [aj-ui](https://github.com/vivihuang/aj-ui) |
| `bff` | `8080` | `8089` | [aj-bff](https://github.com/vivihuang/aj-bff) |
| `rasa` | `5005` | `5005` | [aj-rasa](https://github.com/vivihuang/aj-rasa) |
| `actions` | `5055` | `5055` | [aj-rasa-actions](https://github.com/vivihuang/aj-rasa-actions) |
| `mongo` | `27017` | `27017` | `N/A` |
| `backend` | `8080` | `8088` | [aj-backend](https://github.com/vivihuang/aj-backend) |

### Networking between services

`http://${service_name}:{service_internal_port}`

For example, for UI to access BFF, use internal port: `http://bff:8080`;

### Outside docker
Use outside port, e.g. to access BFF via your local Postman or application, use `http://localhost:8089`;


## Helper scripts

### Pull all repos

```bash
./pull-all.sh
```

It will pull all repo and stash your local code and then pop.

### Start all services

It will start all services and when `ctrl+c`, it will remove all services and network.

```bash
# start all services
./start-all.sh
# build images before start
./start-all.sh build
# update code, then build, then start
./start-all.sh update
# Build all java apps and rebuild docker images
./build-jar.sh
```

## Pair commit
Refer to [gitconfig.md](./gitconfig.md), add the alias to your `~/.gitconfig` or project git config file.

When you pair with someone, you can use the follow command to commit the code

```
git cc -m '[#x] message' --co 33
```

Current nick names

| Abbr. | Name |
|---|---|
| `33` | Shan |
| `4g` | Shiji |
| `ad` | Andong |
| `mt` | Dongsen |
| `ly` | Yue |
