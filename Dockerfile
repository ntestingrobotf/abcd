# Inherit ports exposed by Node:
FROM node:14-alpine AS builder

ARG ARG_PORT=124
ENV PORT2  2512
ENV PORT3 $PORT2
ARG  weird_port  =90
ENV curlyPort ${weird_port}

# Inherit ports exposed by Redis:
FROM redis:latest

# Test exposing ports:
EXPOSE 8008/tcp
EXPOSE 25/udP 9826 
EXPOSE $PORT3
EXPOSE $ARGPORT
EXPOSE ${curlyPort}
EXPOSE 1915