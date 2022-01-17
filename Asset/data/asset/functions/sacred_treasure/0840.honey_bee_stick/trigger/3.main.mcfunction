#> asset:sacred_treasure/0840.honey_bee_stick/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0840.honey_bee_stick/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    execute positioned ~ ~0.2 ~ rotated ~ 0 run function asset:sacred_treasure/0840.honey_bee_stick/trigger/4.vfx
    particle minecraft:block honey_block ~ ~1.2 ~ 3 0.4 3 0 50
    particle dust 1.000 0.741 0.141 1.3 ~ ~1.2 ~ 2 0.4 2 0 240 normal
    particle minecraft:wax_on ~ ~ ~ 2 2 2 0 100
    playsound minecraft:entity.glow_squid.squirt hostile @a ~ ~ ~ 1 0.8 0

# 回復
    data modify storage lib: Argument.Heal set value 10f
    function lib:heal/modifier
    execute as @a[distance=..5] run function lib:heal/
    data remove storage lib: Argument

# ダメージ
    execute if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..6] run function asset:sacred_treasure/0840.honey_bee_stick/trigger/5.damage