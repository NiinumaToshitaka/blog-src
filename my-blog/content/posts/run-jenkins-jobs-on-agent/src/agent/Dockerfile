FROM jenkins/inbound-agent:4.10-3-jdk11
# ベースイメージが"jenkins"ユーザで実行されるため，
# パッケージをインストールするために"root"ユーザに切り替え
USER root
# Pythonをインストール
RUN apt-get update && apt-get install -y python3
USER jenkins
