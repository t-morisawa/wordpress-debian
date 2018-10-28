# 概要

* WordPress(LEMPベース)を作るansible playbook
* そのansible playbookで環境構築を行うDockerfile

## 動作確認端末

* Docker in Mac
* debian 9.5

# 使用方法

## 起動方法

docker build . -t wordpress-debian
docker run -it wordpress-debian

# 補足
* nginx, php-fpmについて、ansibleのserviceモジュールでの起動が出来なかったためcommandを利用している。
