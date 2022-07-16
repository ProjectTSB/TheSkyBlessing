#> asset:sacred_treasure/0141.aure_soma/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:sacred_treasure/0141.aure_soma/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:sacred_treasure/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:sacred_treasure ID set value 141
# 神器のベースアイテム
    data modify storage asset:sacred_treasure Item set value "minecraft:potion"
# 神器の名前 (TextComponentString)
    data modify storage asset:sacred_treasure Name set value '{"text":"アウレソーマ","color":"aqua"}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:sacred_treasure Lore set value ['{"text":"HPを18%、MPを32%回復する"}']
# MP以外の消費物 (TextComponentString) (オプション)
    # data modify storage asset:sacred_treasure CostText set value
# 使用回数 (int) (オプション)
    data modify storage asset:sacred_treasure RemainingCount set value 1
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:sacred_treasure Slot set value "auto"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:sacred_treasure Trigger set value "itemUse"
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
    data modify storage asset:sacred_treasure CanUsedGod set value "ALL"
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    data modify storage asset:sacred_treasure CustomNBT set value {CustomPotionColor:697855,HideFlags:32}

# 神器の入手用function
    function asset:sacred_treasure/common/give