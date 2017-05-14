#!/bin/bash

################################
## mysql upgrade to 5.6
# ------------------------------
# `sudo apt-get -y upgrade` までは成功するが、
# mysql5.6のインストールの最後にrootパスワードの入力が出来ずにインストールが失敗する
# 開発環境であることと、5.5と5.6に違いはほぼないので5.5を使用する
# 必要な場合は `sudo apt-get -y upgrade`までコメントを外し
# ssh でBoxにログイン後に`sudo apt-get -y install mysql-server-56`を実行する
################################
# sudo apt-get -y update
# sudo apt-get -y upgrade
# sudo apt-get -y install mysql-server-5.6
