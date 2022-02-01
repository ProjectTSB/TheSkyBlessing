#> asset:mob/0219.aorta/hurt/3.rupture
#
# 破裂して周囲を回復するよ
#
# @within function asset:mob/0219.aorta/hurt/2.hurt

# 演出
    particle block nether_wart_block ~ ~1.2 ~ 0.4 0.4 0.4 0 50 normal @a
    particle dust 0.769 0 0 2.5 ~ ~1.2 ~ 2 0.4 2 0 150 normal @a
    playsound block.conduit.ambient hostile @a ~ ~ ~ 1 1.2 0

# 周囲を回復
    data modify storage lib: Argument.Heal set value 50f
    function lib:heal/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=!this,tag=!Uninterferable,distance=..5] run function lib:heal/

# 死ぬ
    kill @s