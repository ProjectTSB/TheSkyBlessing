#> asset_manager:artifact/create/set_lore/modifier/
#
# 装備時効果の内容をLoreに追加
#
# @within function
#   asset_manager:artifact/create/set_lore/
#   asset_manager:artifact/create/set_lore/modifier/

#> temp
# @private
    #declare score_holder $AmountFrac
    #declare score_holder $AmountFrac2
    #declare score_holder $AmountInt
    #declare score_holder $CustomModifier

# 変数を用意
    scoreboard players set $CustomModifier Temporary 0
    data modify storage asset:artifact Modifier set from storage asset:artifact CopiedModifiers[0]
    data modify storage asset:artifact Line set value ['{"text":"","color":"green","italic":false}','""','" +"','{"translate":"%s","with":[{"storage":"asset:artifact","nbt":"Amount.Int"}]}','""']

# カスタムModifier
    execute if data storage asset:artifact Modifier{Type:"attack/base"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"attack/base"} run data modify storage asset:artifact Line[1] set value '"攻撃"'
    execute if data storage asset:artifact Modifier{Type:"attack/fire"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"attack/fire"} run data modify storage asset:artifact Line[1] set value '"火攻撃"'
    execute if data storage asset:artifact Modifier{Type:"attack/magic"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"attack/magic"} run data modify storage asset:artifact Line[1] set value '"魔法攻撃"'
    execute if data storage asset:artifact Modifier{Type:"attack/physical"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"attack/physical"} run data modify storage asset:artifact Line[1] set value '"物理攻撃"'
    execute if data storage asset:artifact Modifier{Type:"attack/thunder"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"attack/thunder"} run data modify storage asset:artifact Line[1] set value '"雷攻撃"'
    execute if data storage asset:artifact Modifier{Type:"attack/water"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"attack/water"} run data modify storage asset:artifact Line[1] set value '"水攻撃"'
    execute if data storage asset:artifact Modifier{Type:"defense/base"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"defense/base"} run data modify storage asset:artifact Line[1] set value '"耐性"'
    execute if data storage asset:artifact Modifier{Type:"defense/fire"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"defense/fire"} run data modify storage asset:artifact Line[1] set value '"火耐性"'
    execute if data storage asset:artifact Modifier{Type:"defense/magic"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"defense/magic"} run data modify storage asset:artifact Line[1] set value '"魔法耐性"'
    execute if data storage asset:artifact Modifier{Type:"defense/physical"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"defense/physical"} run data modify storage asset:artifact Line[1] set value '"物理耐性"'
    execute if data storage asset:artifact Modifier{Type:"defense/thunder"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"defense/thunder"} run data modify storage asset:artifact Line[1] set value '"雷耐性"'
    execute if data storage asset:artifact Modifier{Type:"defense/water"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"defense/water"} run data modify storage asset:artifact Line[1] set value '"水耐性"'
    execute if data storage asset:artifact Modifier{Type:"fall_resistance"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"fall_resistance"} run data modify storage asset:artifact Line[1] set value '"落下耐性"'
    execute if data storage asset:artifact Modifier{Type:"heal"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"heal"} run data modify storage asset:artifact Line[1] set value '"与回復量"'
    execute if data storage asset:artifact Modifier{Type:"receive_heal"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"receive_heal"} run data modify storage asset:artifact Line[1] set value '"被回復量"'
    execute if data storage asset:artifact Modifier{Type:"mp_regen"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"mp_regen"} run data modify storage asset:artifact Line[1] set value '"MP回復量"'
    execute if data storage asset:artifact Modifier{Type:"max_health"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"max_health"} run data modify storage asset:artifact Line[1] set value '"最大体力"'
    execute if data storage asset:artifact Modifier{Type:"max_mp"} run scoreboard players set $CustomModifier Temporary 1
    execute if data storage asset:artifact Modifier{Type:"max_mp"} run data modify storage asset:artifact Line[1] set value '"最大MP"'
    execute if score $CustomModifier Temporary matches 0 run function asset_manager:artifact/create/set_lore/modifier/generic.m with storage asset:artifact Modifier

# ノックバック耐性だけバニラに合わせて表示を10倍しておく
    execute if data storage asset:artifact Modifier{Type:"generic.knockback_resistance"} store result storage asset:artifact Modifier.Amount double 0.1 run data get storage asset:artifact Modifier.Amount 100

# 数値チェック
# Operation == "add":
#   $AmountInt = floor(abs(Amount))
#   $AmountFrac(e3) = abs(Amount) * e3 % e3
# Operation != "add":
#   $AmountInt(e2) = floor(abs(Amount) * e2)
#   $AmountFrac(e5) = abs(Amount) * e5 % e3
    execute store result score $AmountFrac Temporary run data get storage asset:artifact Modifier.Amount 1000
    execute unless data storage asset:artifact Modifier{Operation:"add"} run data modify storage asset:artifact Line[4] set value '"%"'
    execute unless data storage asset:artifact Modifier{Operation:"add"} run scoreboard players operation $AmountFrac Temporary *= $100 Const
    execute unless score $AmountFrac Temporary matches 0.. run data modify storage asset:artifact Line[0] set value '{"text":"","color":"red","italic":false}'
    execute unless score $AmountFrac Temporary matches 0.. run data modify storage asset:artifact Line[2] set value '" -"'
    execute unless score $AmountFrac Temporary matches 0.. run scoreboard players operation $AmountFrac Temporary *= $-1 Const
    scoreboard players operation $AmountInt Temporary = $AmountFrac Temporary
    scoreboard players operation $AmountInt Temporary /= $1000 Const
    scoreboard players operation $AmountFrac Temporary %= $1000 Const
# $AmountFrac % 10 == 0:
#   $AmountFrac(e2|e4) = $AmountFrac(e3|e5) / e1
    scoreboard players operation $AmountFrac2 Temporary = $AmountFrac Temporary
    scoreboard players operation $AmountFrac2 Temporary %= $10 Const
    execute if score $AmountFrac2 Temporary matches 0 run scoreboard players operation $AmountFrac Temporary /= $10 Const
    scoreboard players operation $AmountFrac2 Temporary = $AmountFrac Temporary
    scoreboard players operation $AmountFrac2 Temporary %= $10 Const
    execute if score $AmountFrac2 Temporary matches 0 run scoreboard players operation $AmountFrac Temporary /= $10 Const
# 文字列に代入
    execute store result storage asset:artifact Amount.Int int 1 run scoreboard players get $AmountInt Temporary
    execute store result storage asset:artifact Amount.Frac int 1 run scoreboard players get $AmountFrac Temporary
    execute if score $AmountFrac Temporary matches 1.. run data modify storage asset:artifact Line[3] set value '{"translate":"%s.%s","with":[{"storage":"asset:artifact","nbt":"Amount.Int"},{"storage":"asset:artifact","nbt":"Amount.Frac"}]}'
# Lore追加
    loot replace block 10000 0 10000 container.0 loot asset_manager:artifact/generate_lore/modifier
    data modify storage asset:artifact Item.tag.display.Lore append from block 10000 0 10000 Items[0].tag.display.Lore[]

# リセット
    scoreboard players reset $CustomModifier Temporary
    scoreboard players reset $AmountInt Temporary
    scoreboard players reset $AmountFrac Temporary
    scoreboard players reset $AmountFrac2 Temporary
    data remove storage asset:artifact Line
    data remove storage asset:artifact Amount
# 残っていればループ
    data remove storage asset:artifact Modifier
    data remove storage asset:artifact CopiedModifiers[0]
    execute if data storage asset:artifact CopiedModifiers[0] run function asset_manager:artifact/create/set_lore/modifier/
