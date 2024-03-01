# Brainfuck Tunnel - Psiphon Pro Go Version
**For Viettel 4G Bug**

## Requirements
**Termux**
```bash
pkg i git golang make wget
```

## Build
**Build**
```bash
make
```

**Clean**
```bash
make clean
```

## Usage
**Configure file**
```bash
cp config.example.json config.json
```

**Execute**
```bash
./tun
```

## Configurations

Run `./tun` first to export all default settings.\
Config will generated to `config.json` where `tun` binary file are executed.

## Rules

**XL Iflix or Axis Gaming (Default)**

    ...
    "Rules": {
        "akamai.net:80": [
            "video.iflix.com",
            "videocdn-2.iflix.com",
            "iflix-videocdn-p1.akamaized.net",
            "iflix-videocdn-p2.akamaized.net",
            "iflix-videocdn-p3.akamaized.net",
            "iflix-videocdn-p6.akamaized.net",
            "iflix-videocdn-p7.akamaized.net",
            "iflix-videocdn-p8.akamaized.net"
        ]
    },
    ...

**Direct**

    ...
    "Rules": {
        "*:*": [
            "*"
        ]
    },
    ...

or

    ./tun -f "*" -w "*:*"

**Telkomsel 0P0K**

    ...
    "Rules": {
        "akamai.net:443": [
            "118.97.159.51:443",
            "118.98.95.106:443"
        ]
    },
    ...

or

    ./tun -f 118.97.159.51:443,118.98.95.106:443 -w akamai.net:443

**Pubg Mobile (XL King)**

    ...
    "Rules": {
        "akamai.net:80": [
            "www.pubgmobile.com"
        ]
    },
    ...

**Joox (XL King)**

    ...
    "Rules": {
        "akamai.net:80": [
            "ak-quic.stream.music.joox.com.edgesuite.net",
            "ak-hk.stream.music.joox.com.edgesuite.net",
            "ak-ng.stream.music.joox.com.edgesuite.net",
            "ak-quic.app.joox.com.edgesuite.net",
            "ak-ng.app.joox.com.edgesuite.net",
            "e5121.b.akamaiedge.net"
        ]
    },
    ...

**Ruang Guru and Udemmy (XL or Axis)**

    ...
    "Rules": {
        "fastly.net:443": [
            "c.shared.global.fastly.net:443",
            "rg-video.ruangguru.com:443"
        ]
    },
    ...

or

    ./tun -f c.shared.global.fastly.net:443,rg-video.ruangguru.com:443 -w fastly.net:443


Note
----

- For free authorization keys: [oussama.info](https://serverssh.oussama.info/psiphon/3)