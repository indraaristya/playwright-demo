FROM node:20

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY . /app/
RUN chmod +x /app/docker.sh

USER root

RUN npm install
RUN npx playwright install chrome

ENTRYPOINT [ "/app/docker.sh" ]