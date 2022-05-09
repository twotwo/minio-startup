#

```bash
docker build --network=host -t hub.infervision.com/dev/nginx .
docker run -dp 80:80 --name nginx hub.infervision.com/dev/nginx
```