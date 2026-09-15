# CI・生成物・検証

GitHub Actions の `.github/workflows/datapack-linter.yml` はpush/PRで `ChenCMD/datapack-linter@v2` を実行し、`animated_java:**` と `core:define_gamerule` を除外する。

masterではProjectTSB/Assetを `Asset2` にcheckoutし、Node.js/ts-nodeで `.github/workflows/make-declares-mcf.ts` を実行する。linterの `.cache/dls.json` を読み、可視性フィルタに合う定義を `Asset2/Asset/data/minecraft/functions/declares.d.mcfunction` に生成し、Assetへpushする設計である。したがって公開範囲やdeclareを変えたら生成結果への影響を確認する。

ローカルでの確認は、pack.mcmetaの所在、JSON構文、関数参照の存在。

`.cache/dls.json`なしでdeclare生成物を手編集して完了扱いにしない。master条件では外部Asset checkoutとpushまで行うため、公開declare・関数名変更時は生成差分と参照切れを確認する。除外対象（animated_java、define_gamerule）は個別確認する。

## CI の作用先

workflowは最初のlinter stepでこのcheckoutの `.cache/dls.json` を作る。master branchでだけ次の処理が走る。

1. `ProjectTSB/Asset` のmasterを `./Asset2` にcheckoutする。
2. `VISIBILITY_FILTER` にartifactのcheck/use/give、effect、mob、object、container等の公開先を列挙して `make-declares-mcf.ts` を実行する。
3. スクリプトがDLS cacheのdeclare/defineとvisibilityを読み、`Asset2/Asset/data/minecraft/functions/declares.d.mcfunction` を上書きする。
4. `actions-js/push` が `./Asset2` をAsset repositoryのmasterへpushする。

通常のPR lintではAssetへの生成・pushは走らない。APIの関数名、`# @public`、`# @within`、declare/aliasを変えたPRでは、GitHub Actions の結果と `VISIBILITY_FILTER` の利用者から見えるかを確認する。

`animated_java:**` と `core:define_gamerule` はlint除外なので、そこを変更した場合の成功は当該参照の正しさを示さない。JSONは構文だけでなくtag/advancementから参照するresource locationを検索し、macroは `$` 行へ渡すstorage/inline compoundのキーと型を呼出元で照合する。`*.d.mcfunction` も手書き宣言を含む一方、Asset側の `declares.d.mcfunction` はこのworkflowの生成先であり、拡張子だけで編集可否を決めない。
