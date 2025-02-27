FROM python:3.8-alpine

WORKDIR /app

COPY ./requirements.txt /app

RUN pip install -r requirements.txt

COPY . .

CMD [ "flask", "run", "--host=0.0.0.0" ]