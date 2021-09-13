#> asset:sacred_treasure/0660.rainbow_helm/_.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @private

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:sacred_treasure/lib/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:sacred_treasure ID set value 660
# 神器のベースアイテム
    data modify storage asset:sacred_treasure Item set value "minecraft:leather_helmet"
# 神器の名前 (TextComponentString)
    data modify storage asset:sacred_treasure Name set value '[{"text":"レ","color":"#E60012"},{"text":"イ","color":"#F39800"},{"text":"ン","color":"#FFF100"},{"text":"ボ","color":"#009944"},{"text":"ー","color":"#0068B7"},{"text":"ヘ","color":"#1D2088"},{"text":"ル","color":"#920783"},{"text":"メ","color":"#E60012"},{"text":"ッ","color":"#F39800"},{"text":"ト","color":"#FFF100"}]'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:sacred_treasure Lore set value ['[{"text":"全","color":"#E60012"},{"text":"耐","color":"#F39800"},{"text":"性","color":"#FFF100"},{"text":"+","color":"#009944"},{"text":"1","color":"#0068B7"},{"text":"%","color":"#1D2088"},{"text":" "},{"text":"一","color":"#920783"},{"text":"式","color":"#E60012"},{"text":"装","color":"#F39800"},{"text":"備","color":"#FFF100"},{"text":"時","color":"#009944"},{"text":"、","color":"#0068B7"},{"text":"追","color":"#1D2088"},{"text":"加","color":"#920783"},{"text":"で","color":"#E60012"},{"text":"全","color":"#F39800"},{"text":"耐","color":"#FFF100"},{"text":"性","color":"#009944"},{"text":"+","color":"#0068B7"},{"text":"6","color":"#1D2088"},{"text":"%","color":"#920783"}]']
# MP以外の消費物 (TextComponentString) (オプション)
    # data modify storage asset:sacred_treasure CostText set value
# 使用回数 (int) (オプション)
    # data modify storage asset:sacred_treasure RemainingCount set value
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:sacred_treasure Slot set value "head"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:sacred_treasure Trigger set value "equipping"
# 神器の発動条件 (TextComponentString) (オプション)
    # data modify storage asset:sacred_treasure Condition set value
# 攻撃に関する情報 -Damage量 (literal[]/literal) Wikiを参照 (オプション)
    # data modify storage asset:sacred_treasure AttackInfo.Damage set value [0,0]
# 攻撃に関する情報 -攻撃タイプ (string[]) Wikiを参照 (オプション)
    # data modify storage asset:sacred_treasure AttackInfo.AttackType set value [Physical,Magic]
# 攻撃に関する情報 -攻撃属性 (string[]) Wikiを参照 (オプション)
    # data modify storage asset:sacred_treasure AttackInfo.ElementType set value [Fire,Water,Thunder,None]
# 攻撃に関する情報 -防御無視 (boolean) Wikiを参照 (オプション)
    # data modify storage asset:sacred_treasure AttackInfo.BypassResist set value
# 攻撃に関する情報 -範囲攻撃 (string) Wikiを参照 (オプション)
    # data modify storage asset:sacred_treasure AttackInfo.IsRangeAttack set value
# 攻撃に関する情報 -攻撃範囲 (literal) Wikiを参照 (オプション)
    # data modify storage asset:sacred_treasure AttackInfo.AttackRange set value
# MP消費量 (int)
    data modify storage asset:sacred_treasure MPCost set value 0
# MP必要量 (int) (オプション)
    # data modify storage asset:sacred_treasure MPRequire set value
# 神器のクールダウン (int) (オプション)
    # data modify storage asset:sacred_treasure LocalCooldown set value
# グローバルクールダウン (int) (オプション)
    # data modify storage asset:sacred_treasure SpecialCooldown set value
# クールダウンによる使用不可のメッセージを非表示にするか否か (boolean) (オプション)
    # data modify storage asset:sacred_treasure DisableCooldownMessage set value
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:sacred_treasure CanUsedGod set value [Flora,Urban,Nyaptov,Wi-ki,Rumor]
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    data modify storage asset:sacred_treasure CustomNBT set value {HideFlags:68,display:{color:15073298},Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3.5,Operation:0,UUID:[I;1,1,660,6],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:1,Operation:0,UUID:[I;1,1,660,6],Slot:"head"}]}

# 神器の入手用function
    function asset:sacred_treasure/lib/give