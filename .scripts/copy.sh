#! /bin/bash

# NOTE: このスクリプトがあるディレクトリの１階層上で実行することを想定している

FILE_NAME="src/`TZ=Asia/Tokyo date '+%Y-%m-%d'`.tex"

if [ ! -e ${FILE_NAME} ]; then
    # 日付の書き換え
    ls src/*.tex | sort -r | head -1 | xargs -L1 cat | sed -e "s/^\\\date{.*}$/\\\date{`TZ=Asia/Tokyo date '+%Y-%m-%d %a'`}/g" > ${FILE_NAME}
    echo "CREATED: ${FILE_NAME}"
else
    echo "[ERROR] ALREADY EXISTS: ${FILE_NAME}"
fi

# VS Code で開く
sleep 2  # NOTE: 空ファイルが生成されてしまう問題を回避
code ${FILE_NAME}
