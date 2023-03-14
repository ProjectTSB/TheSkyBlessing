#> asset:artifact/0735.collision_plate/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0735.collision_plate/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    execute at @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..6] run playsound minecraft:block.anvil.place player @a ~ ~ ~ 1 1.5 0
    execute at @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..6] run playsound minecraft:block.anvil.place player @a ~ ~ ~ 1 1 0
    execute at @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..6] run particle minecraft:item iron_ingot ~ ~ ~ 1 1 1 0.1 40

# まず防具と防具強度をスコアに代入
    execute store result score $KF.Armor Temporary run attribute @s generic.armor get 1.0
    execute store result score $KF.ArmorTough Temporary run attribute @s generic.armor_toughness get 1

# 計算結果をArgument.Damageに代入
    execute store result storage lib: Argument.Damage float 20.0 run scoreboard players operation $KF.Armor Temporary += $KF.ArmorTough Temporary

# ダメージ
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
    function lib:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..6] run function lib:damage/

# スコアとかストレージとかリセット
    function lib:damage/reset
    scoreboard players reset $KF.Armor Temporary
    scoreboard players reset $KF.ArmorTough Temporary