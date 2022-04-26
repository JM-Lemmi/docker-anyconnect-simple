# docker-anyconnect-simple

A very simple anyconnect docker-container

## Usage

```
docker run -e PASSWORD=xxx -e USERNAME=xxx -e AUTHGROUP=xxx -e HOST=xxx \
  --privileged --name=vpn ghcr.io/cirosec-studis/anyconnect-simple
```

You need to run the container privileged to allow acces to creating the tunnel device.
Fill all the other information, as provided by the VPN provider.

## Providing to other containers

You can use the established VPN connection for other containers:

```
docker run -it --net=container:vpn alpine
```

where `vpn` is the name of the container.
