# Cheet Sheet

## language-client

- <silent>gd :definition)
- <silent>gy :type-definition)
- <silent>gi :implementation)
- <silent>gr :references)

note: if you get error like `Language server is not running for:`, you should do `:LanguageClientStart`

## vim-go

- <Leader>b         : GoBuild = `go build`
- <Leader>r         : GoRun = `go run`
- <Leader>t         : GoTest = `go test`
- <Leader>tf        : GoTestFunc = `go test -run ...`
- <Leader>c         : GoCoverageToggle
- :GoImport ${name} : importに追加、tab補完可能
- :GoDrop ${name}   : importから削除、tab補完可能
- :GoImports        : 不足しているパッケージをimportに追加する
- dif               : 関数の中身をdelete
- vif               : 関数の中身を選択
- yif               : 関数の中身をyank
- daf               : 関数の全体をdelete
- vaf               : 関数の全体を選択
- yaf               : 関数の全体をyank
- :GoAlternate      : foo.go と foo_test.goを行き来する
- :GoDef            : 定義へ移動
- :GoDoc            : ドキュメントを開く
- :GoDocBrowser     : ドキュメントをブラウザで開く
- <Leader>i         : GoInfo = カーソル下の情報を表示
- :GoRename         : カーソル下の要素をリネーム
