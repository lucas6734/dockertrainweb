FROM alpine:3.15

RUN apk add --no-cache sl ttyd #ttyd partage d'écrans terminal dans la page web

COPY entrypoint.sh / #copier entrypoint.sh dans dokerfile 

RUN chmod +x /entrypoint.sh #rendre executable entrypoint.sh , puis l'executer 

CMD ttyd --port 8000 /entrypoint.sh #utiliser le programme ttyd sur le port 8000 
