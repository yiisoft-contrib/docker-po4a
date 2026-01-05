<p align="center">
    <a href="https://github.com/yiisoft" target="_blank">
        <img src="https://yiisoft.github.io/docs/images/yii_logo.svg" height="100px" alt="Yii">
    </a>
    <h1 align="center">Docker Image for po4a</h1>
    <br>
</p>

The package provides docker images for [po4a](https://www.po4a.org/), a tool for translating documentation, helping 
maintain text in multiple languages while keeping it in sync with the source.

## General usage

```shell
docker run --rm \
    --user $(id -u):$(id -g) \
    -v $(PWD):/src \
    -w /src \
    ghcr.io/yiisoft-contrib/po4a:0.73 \
    po4a.conf
```

## License

The "Docker Image for po4a" is free software. It is released under the terms of the BSD License.
Please see [`LICENSE`](./LICENSE.md) for more information.

Maintained by [Yii Software](https://www.yiiframework.com/).
