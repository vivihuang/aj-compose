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

| Service Name | Internal Port | Outside Port | Repo Name |
|---|---|---|---|
| `chatbot-ui` | `80` | `3000` | `aj-ukraine` |
| `bff` | `8080` | `8089` | `aj-georgia` |
| `rasa-server` | `5005` | `5005` | `aj-estonia` |
| `rasa-actions-server` | `5055` | `5055` | `aj-lithuania` |
| `rasa-mongo` | `27017` | `27017` | `aj-estonia` |
| `custom-actions` | `8080` | `8088` | `aj-latvia` |

### Networking between services

`http://${service_name}:{service_internal_port}`

For example, for UI to access BFF, use internal port: `http://bff:8080`;

### Outside docker
Use outside port, e.g. to access BFF via your local Postman or application, use `http://localhost:8089`;


## Helper scripts

**Pull all repos**

```bash
./pull-all.sh
```
