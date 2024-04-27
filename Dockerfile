FROM ruby:3.3.0

ARG LAST_COMMIT_HASH
ARG BRANCH_NAME
ARG BUILD_AT

ENV LAST_COMMIT_HASH $LAST_COMMIT_HASH
ENV BRANCH_NAME $BRANCH_NAME
ENV BUILD_AT $BUILD_AT
ENV WAIT_HOSTS="redis:6379, postgres:5432"

WORKDIR /app
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.9.0/wait /wait
RUN chmod +x /wait
COPY . .
RUN bundle install

RUN ["chmod", "+x", "/app/docker-entrypoint.sh"]

EXPOSE 3086