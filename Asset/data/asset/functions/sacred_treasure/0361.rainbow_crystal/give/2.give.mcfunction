#> asset:sacred_treasure/0361.rainbow_crystal/give/2.give
#
# 神器の作成部 ここでID等を定義する
#
# @user
# @within function asset:sacred_treasure/0361.rainbow_crystal/give/1.trigger

# 神器の説明や消費MPなどをここで設定する。
# 最後にasset:sacred_treasure/common/giveを実行することで入手可能。

# 神器のID (int) スプレッドシートの値を入れる
    data modify storage asset:sacred_treasure ID set value 361
# 神器のベースアイテム
    data modify storage asset:sacred_treasure Item set value "minecraft:carrot_on_a_stick"
# 神器の名前 (TextComponentString)
    data modify storage asset:sacred_treasure Name set value '[{"text":"r","obfuscated":true,"color":"green"},{"text":"a","color":"aqua"},{"text":"i","color":"dark_aqua"},{"text":"n","color":"blue"},{"text":"b","color":"dark_purple"},{"text":"o","color":"gold"},{"text":"w","color":"yellow"},{"text":" 極虹の水晶 ","color":"light_purple","obfuscated":false},{"text":"c","obfuscated":true,"color":"yellow"},{"text":"r","color":"gold"},{"text":"y","color":"dark_purple"},{"text":"s","color":"blue"},{"text":"t","color":"dark_aqua"},{"text":"a","color":"aqua"},{"text":"l","color":"green"}]'
# 神器の説明文 (TextComponentString[])
    data modify storage asset:sacred_treasure Lore set value ['[{"text":"潤いと七色の輝きに満ちた結晶"}]','[{"text":"§2§o翠の魂§r§oは§b§o水§r§oに謡い"}]','[{"text":"§b§o蒼き水§r§oは§4§o焔§r§oを鎮める"}]','[{"text":"§4§o紅き焔§r§oは§6§o稲妻§r§oを焦し"}]','[{"text":"§6§o金の雷§r§oは§2§o草木§r§oに光を齎す"}]']
# MP以外の消費物 (TextComponentString) (オプション)
    # data modify storage asset:sacred_treasure CostText set value
# 使用回数 (int) (オプション)
    data modify storage asset:sacred_treasure RemainingCount set value 5
# 神器を発動できるスロット (string) Wikiを参照
    data modify storage asset:sacred_treasure Slot set value "auto"
# 神器のトリガー (string) Wikiを参照
    data modify storage asset:sacred_treasure Trigger set value "onClick"
# 神器の発動条件 (TextComponentString) (オプション)
    data modify storage asset:sacred_treasure Condition set value '{"text":"敵が範囲内にいる時"}'
# 攻撃に関する情報 -Damage量 (literal[]/literal) Wikiを参照 (オプション)
    # data modify storage asset:sacred_treasure AttackInfo.Damage set value []
# 攻撃に関する情報 -攻撃タイプ (string[]) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.AttackType set value [Physical,Magic]
# 攻撃に関する情報 -攻撃属性 (string[]) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.ElementType set value [Fire,Water,Thunder,None]
# 攻撃に関する情報 -防御無視 (boolean) Wikiを参照 (オプション)
    # data modify storage asset:sacred_treasure AttackInfo.BypassResist set value
# 攻撃に関する情報 -範囲攻撃 (string) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.IsRangeAttack set value never
# 攻撃に関する情報 -攻撃範囲 (literal) Wikiを参照 (オプション)
    data modify storage asset:sacred_treasure AttackInfo.AttackRange set value 30
# MP消費量 (int)
    data modify storage asset:sacred_treasure MPCost set value 99999
# MP必要量 (int) (オプション)
    data modify storage asset:sacred_treasure MPRequire set value 0
# 神器のクールダウン (int) (オプション)
    # data modify storage asset:sacred_treasure LocalCooldown set value
# グローバルクールダウン (int) (オプション)
    data modify storage asset:sacred_treasure SpecialCooldown set value 100
# 扱える神 (string[]) Wikiを参照
    data modify storage asset:sacred_treasure CanUsedGod set value ['Flora', 'Nyaptov', 'Rumor']
# カスタムNBT (NBTCompound) 追加で指定したいNBT (オプション)
    # data modify storage asset:sacred_treasure CustomNBT set value {}

# 神器の入手用function
    function asset:sacred_treasure/common/give