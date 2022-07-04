FROM alpine

RUN apk --update add openconnect

CMD echo $PASSWORD | openconnect --user=$USERNAME --authgroup=$AUTHGROUP --passwd-on-stdin $HOST