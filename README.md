# docker-pic-devenv

Docker image for PIC microcontroller development environment with sdcc and gputils

## How to use

```console
$ docker build -t sasaplus1/docker-pic-devenv .
$ docker run --rm -it docker-pic-devenv bash
root@xxxxxxxxxxxx:~# sdcc --version
SDCC : mcs51/z80/z180/r2k/r3ka/gbz80/tlcs90/ez80_z80/ds390/pic16/pic14/TININative/ds400/hc08/s08/stm8/pdk13/pdk14/pdk15 4.0.0 #11528 (Linux)
published under GNU General Public License (GPL)
```

## License

The MIT license.
