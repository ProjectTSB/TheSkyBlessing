#> asset:sacred_treasure/0022.amen_ra_rod/_.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @private

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:sacred_treasure/lib/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:sacred_treasure ID set value 22
# 神器のベースアイテム
    data modify storage asset:sacred_treasure Item set value "minecraft:carrot_on_a_stick"
# 神器の名前 (TextComponentString)
    data modify storage asset:sacred_treasure Name set value '{"text":"アメン・ラーの杖","color":"yellow"}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:sacred_treasure Lore set value ['{"text":"異邦の神が扱う杖"}','{"text":"周囲のMobを発光させる。"}']
# MP以外の消費物 (TextComponentString) (オプション)
    # data modify storage asset:sacred_treasure CostText set value 
# 使用回数 (int) (オプション)
    data modify storage asset:sacred_treasure RemainingCount set value 100
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:sacred_treasure Trigger set value "onClick"
# MP消費量 (int) 
    data modify storage asset:sacred_treasure MPCost set value 10
# MP必要量 (int) (オプション)
    # data modify storage asset:sacred_treasure MPRequire set value 
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:sacred_treasure CanUsedGod set value [Flora,Urban,Nyaptov,Wi-ki,Rumor]

# 神器の入手用function
    function asset:sacred_treasure/lib/give