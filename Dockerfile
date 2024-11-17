FROM mathworks/matlab:latest
WORKDIR  /app

COPY src/* .

CMD ["matlab", "-nodesktop", "-nosplash", "-r", "main"]
