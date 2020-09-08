# TheSkyBlock
TheSkyBlockのDatapackリポジトリ


## 開発環境
* [Visual Studio Code](https://azure.microsoft.com/ja-jp/products/visual-studio-code/)
* [Data-pack Helper Plus](https://github.com/SPGoding/datapack-language-server)


## 依存ライブラリ
* [Oh! My Dat!](https://github.com/Ai-Akaishi/OhMyDat)
* [ScoreToHealth](https://github.com/Ai-Akaishi/ScoreToHealth)


## コーディングスタイル
#### なぜ決めるの？
* 可読性を向上させるため
* 慣れた際のコーディングを楽にするため
* バグを未然に防止するため

#### コーディング規約的なの
* Data-pack Helper PlusのError, Warning, Informationには原則として従うこと ただしDHP側のバグの場合はその限りではない
* 全てのfunctionにはアクセス修飾子を記載すること
* #declareをせずにtag, storage等を使用しないこと
* function, #declareアクセス修飾子は最低限のスコープで記載すること

#### 命名規則
* 1tick内に削除される一時保存用のstorageの名前空間はそのfunctionのリソースパスを利用すること
* object, tag, CustomNBT, teamの命名にはPascalCaseを使用すること

#### コメント周り
* 簡潔でも良いので各所にコメントを記載すること
* コメントは#の後に1スペースを空けて記載すること
* コメントの表す処理部はスペース4のインデントをすること

## commit時のルール
* 一つのcommitに複数の処理の変更や追加を極力避けること
* commitのコメントにはコミットの内容を簡潔に表す単語を`[]`で記載すること

## SpecialThanks
### [赤石愛](https://twitter.com/AiAkaishi)氏
個別ストレージライブラリ[Oh! My Dat!](https://github.com/Ai-Akaishi/OhMyDat)を使用させていただいています。
プレイヤー体力調整ライブラリ[ScoreToHealth](https://github.com/Ai-Akaishi/ScoreToHealth)を使用させていただいています。