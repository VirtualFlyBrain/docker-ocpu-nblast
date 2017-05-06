[![Build Status](https://travis-ci.org/VirtualFlyBrain/docker-ocpu-nblast.svg?branch=master)](https://travis-ci.org/VirtualFlyBrain/docker-ocpu-nblast)

# docker-ocpu-nblast
openCPU loaded with NBLAST service loaded

## Docker

To Run:
```
docker run -d -ti --name nblast -p 80:80 -p 8004:8004 -p 443:443 rcourt/docker-ocpu-nblast
```

## OpenCPU API

See OpenCPU for details of the R API: https://www.opencpu.org/api.html

## Loaded R libraries:

For details of the **nat** library see: https://github.com/jefferis/nat

For details of the **flycircuit** library see: https://github.com/jefferis/flycircuit

For details of the **flynblastscores** library see: https://github.com/jefferis/flynblastscores

For details of the **vfbr** library see: https://github.com/jefferis/vfbr
