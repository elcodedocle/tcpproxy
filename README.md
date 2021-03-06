# tcpproxy

[![](https://img.shields.io/docker/cloud/build/elcodedocle/tcpproxy.svg)](https://hub.docker.com/r/elcodedocle/tcpproxy/builds)
[![](https://img.shields.io/github/tag/elcodedocle/tcpproxy.svg)](https://hub.docker.com/r/elcodedocle/tcpproxy/tags)
[![](https://img.shields.io/github/issues/elcodedocle/tcpproxy.svg)](https://github.com/elcodedocle/tcpproxy/issues)
[![](https://img.shields.io/github/license/elcodedocle/tcpproxy.svg)](https://github.com/elcodedocle/tcpproxy/blob/master/LICENSE)

The proxy listens on TCP port ${TCPPROXY_LISTEN_PORT}. The target can be given by the environment variables ${TCPPROXY_HOST} and ${TCPPROXY_PORT}.

Usage example:

```
docker run -p 80:80 -e TCPPROXY_LISTEN_PORT=80 -e TCPPROXY_HOST=webserver -e TCPPROXY_PORT=8080
```

will redirect all incoming connections on TCP port `80` to host `webserver` port `8080`
