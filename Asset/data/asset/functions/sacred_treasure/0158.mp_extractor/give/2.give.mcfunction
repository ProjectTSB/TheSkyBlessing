#> asset:sacred_treasure/0158.mp_extractor/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:sacred_treasure/0158.mp_extractor/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:sacred_treasure/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:sacred_treasure ID set value 158
# 神器のベースアイテム
    data modify storage asset:sacred_treasure Item set value "minecraft:carrot_on_a_stick"
# 神器の名前 (TextComponentString)
    data modify storage asset:sacred_treasure Name set value '[{"text":"MP抽出機","color":"light_purple"}]'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:sacred_treasure Lore set value ['[{"text":"MPを瓶に詰めて抽出できる"}]','[{"text":"1部は天使の取り分として蒸発することがある"}]']
# MP以外の消費物 (TextComponentString) (オプション)
    data modify storage asset:sacred_treasure CostText set value '[{"translate":"item.minecraft.glass_bottle"},{"text":" x1"}]'
# 使用回数 (int) (オプション)
    # data modify storage asset:sacred_treasure RemainingCount set value
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:sacred_treasure Slot set value "auto"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:sacred_treasure Trigger set value "onClick"
# MP消費量 (int)
    data modify storage asset:sacred_treasure MPCost set value 30
# MP必要量 (int) (オプション)
    # data modify storage asset:sacred_treasure MPRequire set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:sacred_treasure CanUsedGod set value "ALL"
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    # data modify storage asset:sacred_treasure CustomNBT set value {}

# 神器の入手用function
    function asset:sacred_treasure/common/give