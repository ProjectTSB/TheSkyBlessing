#> asset:sacred_treasure/0249.wakinyan/_.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @private

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:sacred_treasure/lib/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:sacred_treasure ID set value 249
# 神器のベースアイテム
    data modify storage asset:sacred_treasure Item set value "minecraft:bow"
# 神器の名前 (TextComponentString)
    data modify storage asset:sacred_treasure Name set value '[{"text":"雷翔","color":"yellow"},{"text":"-Wakinyan-","color":"gold"}]'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:sacred_treasure Lore set value ['[{"text":"Wakinyan -ワキンヤン-"}]','[{"text":"インディアンの間に古来より伝わる神鳥である"}]','[{"text":"雷の精霊の力で自在に雷を放つと云われる"}]']
# MP以外の消費物 (TextComponentString) (オプション)
    # data modify storage asset:sacred_treasure CostText set value
# 使用回数 (int) (オプション)
    data modify storage asset:sacred_treasure RemainingCount set value 30
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:sacred_treasure Slot set value "mainhand"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:sacred_treasure Trigger set value "onAttack"
# 攻撃に関する情報 (オプション)
    data modify storage asset:sacred_treasure AttackInfo set value {Damage:[60,120],AttackType:[Magic],ElementType:[Thunder],BypassResist:0b}
# MP消費量 (int)
    data modify storage asset:sacred_treasure MPCost set value 50
# MP必要量 (int) (オプション)
    # data modify storage asset:sacred_treasure MPRequire set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:sacred_treasure CanUsedGod set value [Flora,Urban,Nyaptov,Wi-ki,Rumor]
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    data modify storage asset:sacred_treasure CustomNBT set value {Unbreakable:1b,HideFlags:63}

# 神器の入手用function
    function asset:sacred_treasure/lib/give