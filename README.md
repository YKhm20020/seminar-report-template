# texlive-ja-devcontainer-template

VS Code Remote Developmentの機能を用いて、LaTeX環境を容易に構築するサンプルコードです。

[![](https://images.microbadger.com/badges/image/korosuke613/ubuntu-texlive-ja-devcontainer.svg)](https://microbadger.com/images/korosuke613/ubuntu-texlive-ja-devcontainer "Get your own image badge on microbadger.com")


Dockerイメージは、[ubuntu-texlive-ja](https://hub.docker.com/r/korosuke613/ubuntu-texlive-ja)を利用しています。

(**Dockerが必要です**)

## 最初のセットアップ

1. `git clone https://github.com/KatLab-MiyazakiUniv/seminar-report-template.git`
2. VS Code で`seminar-report-template`フォルダを開く。
3. 拡張機能[Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)を追加する。
4. 左下の`><`アイコンを押して、`Remote-Containers: Reopen in Container`を実行する。
5. 待つ。
6. ワークスペースが開いたら、VS Code の Terminal を開き、`make`を実行する。
7. `1970-01-01.pdf`というファイルが生成されていたら、setup完了！


## 新たにゼミの報告書を作成したい場合

### 1. ファイルをコピーする  
以下のコマンドを実行すると、`src`ディレクトリにある最新のソースファイルをコピーし VS Code で表示することができます。

```bash
make copy
```

- ファイル名は、コマンド実行時の日付(JST)になります
- 同じ日に、このコマンドを複数回実行しても、ファイルのコピーが実行されるのは最初の1度のみです
- ファイルをコピーする際、ソースコード中の日付を自動で更新します

### 2. ビルドする  
以下のコマンドを実行すると、`src`ディレクトリにある最新のソースファイルをビルドすることができます。

```bash
make
```

- VS Code の Terminal から実行してください

### 3. PDFファイルを開く  
VS Code の `EXPLORER` から生成されたPDFファイルをクリックすると、PDFファイルを表示することができます。


## PDFファイルや中間生成ファイルをまとめて削除したい場合

### 1. 削除する  
以下のコマンドを実行すると、PDFファイルや中間生成ファイルをまとめて削除することができます。

```bash
make clean
```


## 最新のソースファイルを開きたい場合

### 1. 最新のソースファイルを開く  
以下のコマンドを実行すると、`src`ディレクトリにある最新のソースファイルを開くことができます。

```bash
make open
```

- VS Code の Terminal から実行してください


## すべての報告書をビルドしたい場合

### 1. ビルドする  
以下のコマンドを実行すると、`src`ディレクトリにあるすべてのファイルをまとめてビルドすることができます。

```bash
make build-all
```

- ソースコードの不備などでビルドに失敗すると、当該ソースファイル以降のファイルをビルドすることができません
- VS Code の Terminal から実行してください
