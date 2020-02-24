# libretro buildbot clone

This script is to clone libretro cores to local folder.

Retroarch Cores URL list are based on Retroarch's [config.def.h](https://github.com/libretro/RetroArch/blob/master/config.def.h)

## How to use

Clone this repository

```bash
git clone https://github.com/junian/libretro-cloner.git
```

Go to the folder.

```bash
cd libretro-cloner
```

Execute `run.sh` and wait

```bash
./run.sh
```

After finished, you'll see `buildbot.libretro.com` folder.

## Serve it to RetroArch

You can start a http server, on top of `buildbot.libretro.com` directory.
For example with python:

```bash
python3 -m http.server 8000
```

Then open `http://$IP_ADDRESS:8000` from your web browser.


