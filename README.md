# Rust Echo: Dockerfile example of rust web application

Image is built in two steps, one is used to build executable, so the second step only contains executable
and files (assets) needed at runtime.

Use makefile command to build image. It also exports image to an archive file, so it can be uploaded to production
and loaded into docker using `docker load < /path/to/file.tar`

Example of nginx conf that uses container built from this image, if the container is named `rustecho_webapp`

```
    location / {
        proxy_pass http://rustecho_webapp:4646;
    }
```