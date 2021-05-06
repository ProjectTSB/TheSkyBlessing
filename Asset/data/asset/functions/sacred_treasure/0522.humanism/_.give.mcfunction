#> asset:sacred_treasure/0522.humanism/_.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @private

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:sacred_treasure/lib/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:sacred_treasure ID set value 522
# 神器のベースアイテム
    data modify storage asset:sacred_treasure Item set value "minecraft:carrot_on_a_stick"
# 神器の名前 (TextComponentString)
    data modify storage asset:sacred_treasure Name set value '[{"text":"人","color":"yellow"},{"text":"が","color":"white"},{"text":"人","color":"dark_red"},{"text":"であるために","color":"white"}]'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:sacred_treasure Lore set value ['[{"text":"全てのプレイヤーの","color":"white"},{"text":"HPを全回復","color":"light_purple"},{"text":"し、","color":"white"}]','[{"text":"自分以外の全てのプレイヤーの","color":"white"},{"text":"MPを全回復","color":"dark_purple"},{"text":"する。","color":"white"}]','{"text":"さらに、全てのプレイヤーの","color":"white"}','[{"text":"周囲の敵全てに","color":"white"},{"text":"ダメージ","color":"red"},{"text":"を与える。","color":"white"}]']
# MP以外の消費物 (TextComponentString) (オプション)
    # data modify storage asset:sacred_treasure CostText set value
# 使用回数 (int) (オプション)
    # data modify storage asset:sacred_treasure RemainingCount set value
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:sacred_treasure Slot set value "auto"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:sacred_treasure Trigger set value "onClick"
# 神器の発動条件 (TextComponentString) (オプション)
    # data modify storage asset:sacred_treasure Condition set value
# 攻撃に関する情報 (Component) (オプション)
    data modify storage asset:sacred_treasure AttackInfo set value {Damage:200,AttackType:[Magic],ElementType:[Water]}
# MP消費量 (int)
    data modify storage asset:sacred_treasure MPCost set value 99999
# MP必要量 (int) (オプション)
    data modify storage asset:sacred_treasure MPRequire set value 0
# 神器のクールダウン (int) (オプション)
    # data modify storage asset:sacred_treasure LocalCooldown set value
# グローバルクールダウン (int) (オプション)
    data modify storage asset:sacred_treasure SpecialCooldown set value 6
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:sacred_treasure CanUsedGod set value [Flora,Urban,Nyaptov,Wi-ki,Rumor]
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    # data modify storage asset:sacred_treasure CustomNBT set value {}

# 神器の入手用function
    function asset:sacred_treasure/lib/give