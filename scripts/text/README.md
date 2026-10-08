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

幅表の生成は入力を検証してから、出力先の `core/tables.mcfunction` と `core/load.mcfunction` だけを上書きする。表のハッシュを初期化用の版番号に使う。同じMinecraft入力とリソースパックからは同じ成果物を生成でき、再実行しても追記や他ファイルの削除は行わない。書込み途中で失敗した場合は、この2ファイルの差分を確認して再生成する。

表の生成はbitmapの画素幅、spaceの送り幅、referenceの優先順位、unihexの範囲補正を読む。bitmapの太字加算は1px、unihexは0.5px。共通文字はuniformへ集約し、defaultは差分を持つ。収録範囲は日本語・英数字・割当済みの記号と位置調整用スペースで、ハングル音節・未割当文字・改行や段落区切りは除く。

SNBTはJSONのUnicodeエスケープを受け付けないため、生成表には実際の文字を出力する。space表には改行・復帰以外の位置調整用制御文字も含まれる。§は未対応である。

検証結果は [文字幅の検証記録](../../docs/verification/text-measure.md) を参照する。検証はコマンド結果を対象とし、クライアントの画素は判定しない。
