FROM golang as build
WORKDIR /app
COPY  . .
RUN go build ./main.go
RUN ls

FROM scratch
COPY --from=build /app/main .
CMD [ "/main" ]