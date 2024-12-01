FROM mathworks/matlab:R2024b
WORKDIR  /app

COPY src/* .

CMD ["matlab", "-nodesktop", "-nosplash", "-r", "main"]
