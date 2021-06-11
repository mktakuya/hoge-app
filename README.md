# 問い合わせ太郎: server

![](https://github.com/mktakuya/toiawase_taro-server/workflows/Build/badge.svg)


## 動かし方（macOS）

### 事前準備

#### PostgreSQL

* `brew install postgresql`
* `brew services start postgresql`
* `psql -l` でエラー出なければOK


#### Ruby

- rbenvのインストール
  * https://github.com/rbenv/rbenv#basic-github-checkout
- ruby-buildのインストール
  * `mkdir -p "$(rbenv root)"/plugins`
  * `git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build`
- `.ruby-version` で指定されているバージョンのRubyをインストール
  * `rbenv install`
- `Gemfile.lock` の `BUNDLED WITH` で指定されているバージョンのBundlerをインストール
  * `gem install bundler -v "X.X.X"`


### Setup

```
# リポジトリのクローン
$ git clone https://github.com/mktakuya/toiawase_taro-server
$ cd toiawase_taro-server

# Rubyのライブラリインストール
$ bundle install

# DBセットアップ
$ rails db:create db:migrate db:seed 

# サーバ起動
$ rails s
```

### テスト実行

```
rspec
```

