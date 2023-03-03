#> asset:sacred_treasure/0043.fruit_of_wisdom/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:sacred_treasure/0043.fruit_of_wisdom/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:sacred_treasure/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:sacred_treasure ID set value 43
# 神器のベースアイテム
    data modify storage asset:sacred_treasure Item set value "minecraft:apple"
# 神器の名前 (TextComponentString)
    data modify storage asset:sacred_treasure Name set value '[{"text":"fruit ","color":"dark_aqua","obfuscated": true},{"text":"叡智の果実","color":"aqua","obfuscated": false},{"text":" tiurf","color":"dark_aqua","obfuscated": true}]'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:sacred_treasure Lore set value ['[{"text":"大空の楽園に実る"},{"text":"禁断の果実","color":"light_purple"}]','[{"text":"口にすれば"},{"text":"膨大な魔力","color":"aqua"},{"text":"を得られるが、","color":"white"}]','[{"text":"代償として","color":"white"},{"text":"生命力","color":"light_purple"},{"text":"を失ってしまう。","color":"white"}]']
# MP以外の消費物 (TextComponentString) (オプション)
    # data modify storage asset:sacred_treasure CostText set value
# 使用回数 (int) (オプション)
    data modify storage asset:sacred_treasure RemainingCount set value 10
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:sacred_treasure Slot set value "auto"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:sacred_treasure Trigger set value "itemUse"
# MP消費量 (int)
    data modify storage asset:sacred_treasure MPCost set value 0
# MP必要量 (int) (オプション)
    # data modify storage asset:sacred_treasure MPRequire set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:sacred_treasure CanUsedGod set value ["Flora", "Urban", "Nyaptov", "Wi-ki", "Rumor"]
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    # data modify storage asset:sacred_treasure CustomNBT set value {HideFlags:63,Enchantments:[{id:unbreaking,lvl:1s}]}

# 神器の入手用function
    function asset:sacred_treasure/common/give