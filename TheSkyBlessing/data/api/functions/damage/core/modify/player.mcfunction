#> api:damage/core/modify/player
#
# damageLibの中でも攻撃元に関係する処理部
#
# @within function api:damage/modifier*

# プレイヤー情報の記録
    scoreboard players operation $LatestModifiedUser UserID = @s UserID
    execute store result storage api: Argument.Attacker int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.AttackerType set value "player"
# ModifierIndex をインクリメントする
    scoreboard players add $ModifierIndex Global 1
# ダメージに補正値を掛ける
    execute if data storage api: Argument{BypassModifier:false} run data modify storage api: Damage set from storage api: Argument.Damage
    execute if data storage api: Argument{BypassModifier:false} run function api:damage/core/modify_damage.m {Side:"Attack"}
    execute if data storage api: Argument{BypassModifier:false} run scoreboard players reset $Metric Temporary
    execute if data storage api: Argument{BypassModifier:false} run data modify storage api: Argument.Damage set from storage api: ModifiedDamage
# リセット
    data remove storage api: ModifiedDamage
