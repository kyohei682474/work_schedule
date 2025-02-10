FROM ruby:3.2.2-alpine

# 利用可能なパッケージのリストを更新するコマンドを実行
RUN apk update

# パッケージをインストールするコマンドを実行
RUN apk add git g++ make postgresql postgresql-client

# コンテナを起動した時の作業ディレクトリを/appにする
WORKDIR /app

# PC上のGemfile を .（/app）にコピー
COPY Gemfile Gemfile.lock /app/

# bundle installでGemfileに記述されているgemをインストール
RUN bundle install