#> asset_manager:artifact/create/set_lore/attack_info
#
# 攻撃に関する情報をLoreに追加します
#
# @within function asset_manager:artifact/create/set_lore/

#> private
# @private
    #declare score_holder $IsList

# 1 行目の作成
# 防御貫通
    execute if data storage asset:artifact AttackInfo{BypassResist:true} run data modify storage asset:artifact Line1 append value {"text":"[防御貫通]"}
# ダメージ (Damage は (int | [int] @ 1..2) なためそれぞれに合わせて分岐する)
    execute unless data storage asset:artifact AttackInfo.Damage run data modify storage asset:artifact Line1 append value [{"text":"???"},{"text":"\u0002","font":"space"},{"text":"ダメージ","font":"default"}]
    execute if data storage asset:artifact AttackInfo.Damage unless data storage asset:artifact AttackInfo.Damage[0] run data modify storage asset:artifact Line1 append value [{"storage":"asset:artifact","nbt":"AttackInfo.Damage"},{"text":"\u0002","font":"space"},{"text":"ダメージ","font":"default"}]
    execute if data storage asset:artifact AttackInfo.Damage if data storage asset:artifact AttackInfo.Damage[0] unless data storage asset:artifact AttackInfo.Damage[1] run data modify storage asset:artifact Line1 append value [{"storage":"asset:artifact","nbt":"AttackInfo.Damage[0]"},{"text":"\u0002","font":"space"},{"text":"ダメージ","font":"default"}]
    execute if data storage asset:artifact AttackInfo.Damage if data storage asset:artifact AttackInfo.Damage[0] if data storage asset:artifact AttackInfo.Damage[1] run data modify storage asset:artifact Line1 append value [{"storage":"asset:artifact","nbt":"AttackInfo.Damage[0]","font":"default"},{"text":"\u0002","font":"space"},{"text":"-","font":"default"},{"text":"\u0002","font":"space"},{"storage":"asset:artifact","nbt":"AttackInfo.Damage[1]"},{"text":"\u0002","font":"space"},{"text":"ダメージ","font":"default"}]
# 射程
    execute if data storage asset:artifact AttackInfo.AttackRange run data modify storage asset:artifact Line1 append value [{"text":"射程","font":"default"},{"text":"\u0002","font":"space"},{"storage":"asset:artifact","nbt":"AttackInfo.AttackRange"},{"text":"\u0002","font":"space"},{"text":"m","font":"default"}]
# 範囲情報
    execute unless data storage asset:artifact AttackInfo run data modify storage asset:artifact Line1 append value {"text":"[不明]","color":"gray"}
    execute if data storage asset:artifact AttackInfo{IsRangeAttack:"never"} run data modify storage asset:artifact Line1 append value {"text":"[単体]","color":"white"}
    execute if data storage asset:artifact AttackInfo{IsRangeAttack:"probability"} run data modify storage asset:artifact Line1 append value [{"text":"[範囲","color":"aqua"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"text":"確率]","font":"default"}]
    execute if data storage asset:artifact AttackInfo{IsRangeAttack:"condition"} run data modify storage asset:artifact Line1 append value [{"text":"[範囲","color":"green"},{"text":"\u0002","font":"space"},{"text":"|","font":"default"},{"text":"\u0002","font":"space"},{"text":"条件]","font":"default"}]
    execute if data storage asset:artifact AttackInfo{IsRangeAttack:"every"} run data modify storage asset:artifact Line1 append value {"text":"[範囲]","color":"gold"}

# 2 行目の作成
    data modify storage asset:artifact Line2 set value [{"storage":"global","nbt":"Icon.Attack.Physical","color":"#444444","interpret":true},{"storage":"global","nbt":"Icon.Attack.Magic","color":"#444444","interpret":true},{"storage":"global","nbt":"Icon.Attack.Fire","color":"#444444","interpret":true},{"storage":"global","nbt":"Icon.Attack.Water","color":"#444444","interpret":true},{"storage":"global","nbt":"Icon.Attack.Thunder","color":"#444444","interpret":true},{"storage":"global","nbt":"Icon.Attack.None","color":"#444444","interpret":true}]
# 第一属性
    execute if data storage asset:artifact AttackInfo{AttackType:["Physical"]} run data modify storage asset:artifact Line2[0] set value {"storage":"global","nbt":"Icon.Attack.Physical","color":"white","interpret":true}
    execute if data storage asset:artifact AttackInfo{AttackType:["Magic"]} run data modify storage asset:artifact Line2[1] set value {"storage":"global","nbt":"Icon.Attack.Magic","color":"white","interpret":true}
# 第ニ属性
    execute if data storage asset:artifact AttackInfo{ElementType:["Fire"]} run data modify storage asset:artifact Line2[2] set value {"storage":"global","nbt":"Icon.Attack.Fire","color":"white","interpret":true}
    execute if data storage asset:artifact AttackInfo{ElementType:["Water"]} run data modify storage asset:artifact Line2[3] set value {"storage":"global","nbt":"Icon.Attack.Water","color":"white","interpret":true}
    execute if data storage asset:artifact AttackInfo{ElementType:["Thunder"]} run data modify storage asset:artifact Line2[4] set value {"storage":"global","nbt":"Icon.Attack.Thunder","color":"white","interpret":true}
    execute if data storage asset:artifact AttackInfo{ElementType:["None"]} run data modify storage asset:artifact Line2[5] set value {"storage":"global","nbt":"Icon.Attack.None","color":"white","interpret":true}

# lootしてLoreに落とし込む
    loot replace block 10000 0 10000 container.2 loot asset_manager:artifact/generate_lore/attack_info

# リセット
    data remove storage asset:artifact Line1
    data remove storage asset:artifact Line2
