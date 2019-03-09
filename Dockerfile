FROM python:2.7.16-alpine3.8

WORKDIR /app/myweb

COPY . .

EXPOSE 8000

CMD [ "python", "main.py" ]