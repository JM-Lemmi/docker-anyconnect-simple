FROM alpine

RUN apk update && apk add openconnect

CMD echo $PASSWORD | openconnect --user=$USERNAME --authgroup=$AUTHGROUP --passwd-on-stdin $HOST