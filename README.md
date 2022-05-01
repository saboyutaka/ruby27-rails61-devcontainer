# devcontainer for Ruby on Rails 6.1

Ruby on Rails 6.1 の開発環境用の [devcontainer](https://code.visualstudio.com/docs/remote/containers)

## 構成

docker compose で構成

- app: [ruby:2.7.6-bullseye](https://hub.docker.com/_/ruby)
- postgres: [postgres:14](https://hub.docker.com/_/postgres)

### 機能

- formatter:
  - Ruby: [rufo](https://github.com/ruby-formatter/rufo)
  - ERB: [erb-formatter](https://github.com/nebulab/erb-formatter)
  - HTML, CSS, JS: [Prettier](https://prettier.io/)
- Intellisense: [solargraph](https://github.com/castwide/solargraph)
- debugger: [ruby-debug-ide](https://github.com/ruby-debug/ruby-debug-ide), [debase](https://github.com/ruby-debug/debase)

## devcontainerの利用方法
※ devcontainer に必要なツールのインストールは[こちら](https://code.visualstudio.com/docs/remote/containers#_installation)


### このリポジトリを新規プロジェクトで利用する場合

1. VSCodeを開き、 `Reopen in Container` を実行す

### 既存のプロジェクトで利用する場合
1. このリポジトリをダウンロードし、任意のプロジェクトに以下をコピーする
- [docker-compose.yml](docker-compose.yml)
- [docker/app/Dockerfile](docker/app/Dockerfile)
- [.devcontainer](.devcontainer)
- [.vscode](.vscode)

2. VSCodeを開き、 `Reopen in Container` を実行する

## サーバーの立ち上げ方

#### devcontainer上で、コマンドを実行する
```bash
$ bin/rails s
```

#### devcontainer上で、 `デバッグを実行` を実行する(ショートカットキー: F5)

`デバッグを実行` を利用すると[VSCode Debugging](https://code.visualstudio.com/docs/editor/debugging)が利用可能

> デバッグを実行するためには `ruby-debug-ide` , `debase` gem のインストールが必要

## docker composeのみで実行する場合
VSCode以外の環境で開発する場合は、docker composeを利用することができる。 [Makefile](Makefile) コマンドが用意されている。各コマンドはHost OS上で実行する。

#### 初回構築
```
$ make build
```

#### サーバーを起動する
```
$ make serve
```


## VSCode extensions

- [rebornix.Ruby](https://marketplace.visualstudio.com/items?itemName=rebornix.Ruby)
- [castwide.solargraph](https://marketplace.visualstudio.com/items?itemName=castwide.solargraph)
- [elia.erb-formatter](https://marketplace.visualstudio.com/items?itemName=elia.erb-formatter)
- [redhat.vscode-yaml](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml)
- [jemmyw.rails-fast-nav](https://marketplace.visualstudio.com/items?itemName=jemmyw.rails-fast-nav)
- [aki77.rails-db-schema](https://marketplace.visualstudio.com/items?itemName=aki77.rails-db-schema)
- [hridoy.rails-snippets](https://marketplace.visualstudio.com/items?itemName=hridoy.rails-snippets)
- [kaiwood.endwise](https://marketplace.visualstudio.com/items?itemName=kaiwood.endwise)
- [VisualStudioExptTeam.vscodeintellicode](https://marketplace.visualstudio.com/items?itemName=VisualStudioExptTeam.vscodeintellicode)
- [esbenp.prettier-vscode](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)

## リファレンス

- [Visual Studio Code Doc - Developing inside a Container](https://code.visualstudio.com/docs/remote/containers)
- [VS Code Solargraph Extension](https://github.com/castwide/vscode-solargraph)
- [vscode-ruby debugger](https://github.com/rubyide/vscode-ruby/blob/main/docs/debugger.md)
