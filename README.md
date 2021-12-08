下記 Qiita 記事のサンプルコードです。

https://qiita.com/t0yohei/private/53941dac0d523066b62f

## サンプルコード実行手順

ruby の install などはできている前提です。

```shell
$ bundle install --path vendor/bundle

$ bundle exec rails db:create
$ bundle exec rails db:migrate
$ bundle exec rails db:seed

$ bundle exec rails r lib/eagar_load_sample.rb
```

SQL のログは `log/development.log` に出力されるので、

```shell
tail -f log/development.log
```

などで確認してください。
