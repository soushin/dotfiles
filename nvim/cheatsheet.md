# Cheet Sheet

## language-client

- <Leader><Leader> :<C-u>Denite contextMenu<CR>
- K                :<C-u>call LanguageClient_textDocument_hover()<CR>
- <C-]>            :<C-u>call LanguageClient_textDocument_definition()<CR>
- <Leader>i        :<C-u>call LanguageClient_textDocument_implementation()<CR>
- <Leader>R        :<C-u>call LanguageClient_textDocument_rename()<CR>
- <Leader>s        :<C-u>Denite documentSymbol<CR>
- <Leader>dr       :<C-u>Denite references<CR>
- <Leader>a        :<C-u>call LanguageClient_textDocument_codeAction()<CR>
- gq               :<C-u>call LanguageClient_textDocument_formatting()<CR>
- gq               :<C-u>call LanguageClient_textDocument_rangeFormatting()<CR>
- <Leader>h        :<C-u>call LanguageClient_textDocument_documentHighlight()<CR>
- <Leader>H        :<C-u>call LanguageClient_clearDocumentHighlight()<CR>
- <Leader>S        :<C-u>Denite workspaceSymbol<CR>

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
