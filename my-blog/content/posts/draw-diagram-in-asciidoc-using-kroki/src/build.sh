#!/bin/bash

docker run --rm -it \
    -v $(pwd):/documents/ \ # <1>
    --network kroki-server_default \ # <2>
    asciidoctor/docker-asciidoctor:1.28 \
    asciidoctor \
        -r asciidoctor-kroki \ # <3>
        -a data-uri -a allow-uri-read \ # <4>
        sample.adoc