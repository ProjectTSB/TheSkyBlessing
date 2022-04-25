#> asset:sacred_treasure/0210.terra_blade/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:sacred_treasure/0210.terra_blade/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:sacred_treasure/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:sacred_treasure ID set value 210
# 神器のベースアイテム
    data modify storage asset:sacred_treasure Item set value "carrot_on_a_stick"
# 神器の名前 (TextComponentString)
    data modify storage asset:sacred_treasure Name set value '{"text":"テラダブリス","color":"gold"}'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:sacred_treasure Lore set value ['{"text":"\\"大地の力を解き放つ！\\"","color":"gray"}']
# MP以外の消費物 (TextComponentString) (オプション)
    # data modify storage asset:sacred_treasure CostText set value
# 使用回数 (int) (オプション)
    # data modify storage asset:sacred_treasure RemainingCount set value
# 攻撃に関する情報 -Damage量 (literal[]/literal) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.Damage set value [30]
# 攻撃に関する情報 -攻撃タイプ (string[]) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.AttackType set value [Physical]
# 攻撃に関する情報 -攻撃属性 (string[]) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.ElementType set value [None]
# 攻撃に関する情報 -防御無視 (boolean) Wikiを参照 (オプション)
    # data modify storage asset:sacred_treasure AttackInfo.BypassResist set value
# 攻撃に関する情報 -範囲攻撃 (string) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.IsRangeAttack set value never
# 攻撃に関する情報 -攻撃範囲 (literal) Wikiを参照 (オプション)
    # data modify storage asset:sacred_treasure AttackInfo.AttackRange set value
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:sacred_treasure Slot set value "auto"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:sacred_treasure Trigger set value "onClick"
# 神器の発動条件 (TextComponentString) (オプション)
    # data modify storage asset:sacred_treasure Condition set value
# MP消費量 (int)
    data modify storage asset:sacred_treasure MPCost set value 14
# MP必要量 (int) (オプション)
#    data modify storage asset:sacred_treasure MPRequire set value 100
# 神器のクールダウン (int) (オプション)
    data modify storage asset:sacred_treasure LocalCooldown set value 25
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:sacred_treasure SpecialCooldown set value
# クールダウンによる使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    data modify storage asset:sacred_treasure DisableCooldownMessage set value true
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:sacred_treasure CanUsedGod set value ['Flora','Urban','Nyaptov','Wi-ki','Rumor']
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    data modify storage asset:sacred_treasure CustomNBT set value {HideFlags:6,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:28.0,Operation:0,UUID:[I;-1060843307,550455007,-1279204449,-249445105],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.6,Operation:0,UUID:[I;-326377093,214385260,-1706767736,-1207015802],Slot:"mainhand"}]}

# 神器の入手用function
    function asset:sacred_treasure/common/give