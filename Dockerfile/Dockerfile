FROM klakegg/hugo:asciidoctor
# 以下のパッケージをインストール
# * git
# * 作図に使用するパッケージ
# * 日本語フォント
# * タイムゾーンの設定
# 日本語フォントをインストールする手順の参考:
#   <https://developer-tools.zendesk.com/hc/ja/articles/4410422759183-Dockerで日本語フォントを含んだPDFを出力する方法>
RUN apk add --update-cache --no-cache git openjdk17 graphviz fontconfig tzdata && \
    wget https://moji.or.jp/wp-content/ipafont/IPAexfont/IPAexfont00401.zip && \
    mkdir -p /usr/share/fonts/ipa && \
    mkdir -p /temp && \
    unzip IPAexfont00401.zip -d /temp && \
    cp /temp/IPAexfont00401/*.ttf /usr/share/fonts/ipa/ && \
    rm IPAexfont00401.zip
RUN rm -rf /temp && \
    fc-cache -fv
# asciidoctor-diagramをインストール
RUN gem install asciidoctor-diagram
# タイムゾーンを日本時間に変更
RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
