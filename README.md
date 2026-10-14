NewSpeak (Fake News in China)
==============================

![](https://github.com/easydata/newspeak/actions/workflows/update.yml/badge.svg)

![](https://thumb.wikimedia.org/wikipedia/commons/thumb/f/fa/Spectators_in_front_of_a_large_sign_on_Nixon%27s_motorcade_route_in_China._-_NARA_-_194413.tif/lossy-page1-960px-Spectators_in_front_of_a_large_sign_on_Nixon%27s_motorcade_route_in_China._-_NARA_-_194413.tif.jpg)

## Supported Sites

- [x] baidu
- [ ] bilibili
- [x] so
- [x] sogou
- [x] toutiao
- [ ] weibo
- [ ] zhihu

## Latest News

```bash
curl -s https://api.github.com/repos/EasyData/newspeak/releases/latest |
  jq -r '.assets[]|select(.name|test("json$")).browser_download_url' |
    wget -q -i- -O- |
      less
```
## Red Banner

```bash
curl -s https://api.github.com/repos/EasyData/newspeak/releases/latest |
  jq -r '.assets[]|select(.name=="banner.jpg").browser_download_url' |
    sed 's/^/url = /' |
      curl -sLK- |
        imgcat
```
