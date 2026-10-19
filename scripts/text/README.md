# 文字幅表の再生成

Minecraft 1.20.4と指定したTSB-ResourcePackから、文字幅Libが使うdefault・uniform・spaceの表を生成する。配布フォントの文字・送り幅を変更したときに実行する。

生成にはPython 3、Node.js 24、npm、unzipを使う。画像解析用のpngjsは `scripts/text/package-lock.json` で版を固定し、同じディレクトリへインストールする。Minecraft 1.20.4の入力は取得スクリプト内のURLとSHA-1で固定する。リソースパックは引数で作業コピーを指定する。

DevSpaceから次を実行する。入力のリソースパックと出力先が、更新したい作業コピーを指していることを確認する。

```sh
python3 TheSkyBlessing/scripts/text/fetch_font_assets.py .cache/bossbar-font-input
npm ci --ignore-scripts --prefix TheSkyBlessing/scripts/text
node TheSkyBlessing/scripts/text/generate_widths.cjs TSB-ResourcePack .cache/bossbar-font-input TheSkyBlessing/TheSkyBlessing/data/lib/functions/text
sh scripts/verify.sh TheSkyBlessing/tests/scenarios/text-measure.json
```

取得処理はキャッシュを含む3つの入力をすべて検証してから、指定ディレクトリへ入力本体・フォント定義・画像・ボスバー画像・取得元の `sources.json` を上書きする。キャッシュのハッシュが不一致なら失敗するため、対象ファイルを確認して取り除いてから再実行する。取得素材はローカルのキャッシュに置き、repoには同梱しない。

幅表の生成は入力を検証してから、出力先の `core/tables.m.mcfunction` と `core/load.mcfunction` だけを上書きする。表のハッシュを初期化用の版番号に使う。同じMinecraft入力とリソースパックからは同じ成果物を生成でき、再実行しても追記や他ファイルの削除は行わない。書込み途中で失敗した場合は、この2ファイルの差分を確認して再生成する。

表の生成はbitmapの画素幅、spaceの送り幅、referenceの優先順位、unihexの範囲補正を読む。bitmapの太字加算は1px、unihexは0.5px。共通文字はuniformへ集約し、defaultは差分を持つ。収録範囲は日本語、ラテン文字・結合アクセント、ギリシャ文字・キリル文字・ルーン、句読点・数字・単位・矢印・数学記号・図形・装飾記号・全半角互換形である。defaultの既存記号差分と位置調整用スペースも保持する。コードポイントの範囲は生成元の `textRanges` にある。

共通の送り幅9px・太字加算0.5px・UTF-16の1コード単位を表す146はuniform表へ保存しない。表の展開時に、収録した補助文字の先頭コード単位へ146を目印として登録する。実行時はこの目印を取得した場合だけ2コード単位で検索し、通常の未収録文字には検索後に146を補う。対応範囲外の文字も成功するため、146と異なる幅の文字を追加するときは収録範囲を広げて再生成する。未収録の補助文字は2つのコード単位として補われる。space表の未収録文字は失敗する。

SNBTはJSONのUnicodeエスケープを受け付けないため、生成表には実際の文字を出力する。space表には改行・復帰以外の位置調整用制御文字も含まれる。§は未対応である。

検証結果は [文字幅の検証記録](../../docs/verification/text-measure.md) を参照する。検証はコマンド結果を対象とし、クライアントの画素は判定しない。

## 表の保存と初期化

表は `lib_text_fonts:` に保存する。同じnamespaceのstorageは一つの保存データにまとめられるため、日常的に更新する `lib:` の一時値と分離する。

`core:load_once` から版を照合し、異なるときだけ表を展開する。大量のSNBTを含む行は空文字の引数 `_` を取るmacroで、表を展開しないreloadではその行の解析済みcompoundを作らない。展開した直後はmacroキャッシュに残り、次のreloadで解放される。全期間のヒープ削減を保証する方式ではない。既存worldへの導入・表の更新時点は [loadの変更手順](../../docs/knowledge/runtime-and-assets.md#変更手順) に従う。

表の展開に成功した場合だけVersionを保存する。失敗した場合は以前のVersionを保持し、未設定なら未設定のままにする。計測ごとのVersion確認は行わない。

展開失敗時の記録と正常な再試行は、次のシナリオで確認する。初期化関数の版照合後のコマンドを取り出し、表のマクロ引数だけを不正な値に置き換えて展開を失敗させる。生成したシナリオと実測値は共通runnerの実行記録に保存される。

```sh
python3 TheSkyBlessing/tests/text/load_failure.py > .runtime/text-load-failure.json
sh scripts/verify.sh .runtime/text-load-failure.json
```
