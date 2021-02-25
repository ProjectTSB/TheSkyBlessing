#> asset:sacred_treasure/0288.lamentation_sword/_.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @private

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:sacred_treasure/lib/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:sacred_treasure ID set value 288
# 神器のベースアイテム
    data modify storage asset:sacred_treasure Item set value "minecraft:stick"
# 神器の名前 (TextComponentString)
    data modify storage asset:sacred_treasure Name set value '[{"text":"Help","color":"dark_purple","obfuscated":true},{"text":"嘆きの剣","obfuscated":false},{"text":"Help","obfuscated":true}]'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:sacred_treasure Lore set value ['[{"text":"嘆く狂人を"},{"text":"助","color":"dark_red","bold":true,"obfuscated":true},{"text":"すり潰し、型に流し込んで作ら"},{"text":"け","color":"dark_red","bold":true,"obfuscated":true},{"text":"れた剣。"},{"text":"て","color":"dark_red","bold":true,"obfuscated":true}]','[{"text":"未だに嘆"},{"text":"痛","color":"dark_red","bold":true,"obfuscated":true},{"text":"き続"},{"text":"い","color":"dark_red","bold":true,"obfuscated":true},{"text":"ける"}]']
# MP以外の消費物 (TextComponentString) (オプション)
    # data modify storage asset:sacred_treasure CostText set value
# 使用回数 (int) (オプション)
    data modify storage asset:sacred_treasure RemainingCount set value 250
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:sacred_treasure Slot set value "mainhand"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:sacred_treasure Trigger set value "onAttack"
# 神器の発動条件 (TextComponentString) (オプション)
    # data modify storage asset:sacred_treasure Condition set value
# MP消費量 (int)
    data modify storage asset:sacred_treasure MPCost set value 0
# MP必要量 (int) (オプション)
    # data modify storage asset:sacred_treasure MPRequire set value
# 神器のクールダウン (int) (オプション)
    # data modify storage asset:sacred_treasure LocalCooldown set value
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:sacred_treasure GlobalCooldown set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:sacred_treasure CanUsedGod set value [Flora,Urban,Nyaptov,Wi-ki]
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    # data modify storage asset:sacred_treasure CustomNBT set value {}

# 神器の入手用function
    function asset:sacred_treasure/lib/give