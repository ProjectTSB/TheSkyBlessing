#> asset:sacred_treasure/0733.persantage_sword/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0733.persantage_sword/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $KD.DamageValue

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute if entity @e[type=#lib:living,tag=Victim,distance=..6] run playsound entity.player.attack.sweep master @a ~ ~ ~ 0.8 1 0
    execute if entity @e[type=#lib:living,tag=Victim,distance=..6] run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.6 1.7
    execute if entity @e[type=#lib:living,type=!player,tag=Victim,distance=..6] positioned ^ ^1.2 ^0.5 rotated ~ ~-4 run function asset:sacred_treasure/0733.persantage_sword/trigger/4.sweeping_particle

# 4割の割合追加ダメージまでの処理
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
    data modify storage lib: Argument.FixedDamage set value 1b
    data modify storage lib: Argument.BypassResist set value 1b
    execute as @e[type=#lib:living,type=!player,tag=Victim,tag=!Enemy.Boss,distance=..6] store result storage lib: Argument.Damage float 0.0040 run function api:mob/get_max_health

# 天使の場合、1%にする
    execute if entity @e[type=#lib:living,type=!player,tag=Victim,tag=Enemy.Boss,distance=..6] store result storage lib: Argument.Damage float 0.0001 run function api:mob/get_max_health

# ダメージの値が10000以上の場合、9999にする
    execute store result score $KD.DamageValue Temporary run data get storage lib: Argument.Damage 1.0
    execute if score $KD.DamageValue Temporary matches 10000.. run scoreboard players set $KD.DamageValue Temporary 9999
    execute store result storage lib: Argument.Damage float 1.0 run scoreboard players get $KD.DamageValue Temporary

# ダメージ
    function lib:damage/modifier
    execute if data storage lib: Argument.Damage as @e[type=#lib:living,type=!player,tag=Victim,distance=..6] run function lib:damage/

# 色々リセット
    data remove storage lib: Argument
    scoreboard players reset $KD.DamageValue Temporary