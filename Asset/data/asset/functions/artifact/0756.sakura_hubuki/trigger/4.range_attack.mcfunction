#> asset:artifact/0756.sakura_hubuki/trigger/4.range_attack
#
# 範囲ダメ
#
# @within function asset:artifact/0756.sakura_hubuki/trigger/3.main

# 演出
    particle snowflake ~ ~0.3 ~ 1 0 1 0.45 250 normal @a
    playsound ogg:block.amethyst.shimmer player @a ~ ~ ~ 0.8 2
    playsound ogg:block.amethyst.shimmer player @a ~ ~ ~ 0.8 1.2
    playsound ogg:block.amethyst.shimmer player @a ~ ~ ~ 0.8 0.6
    playsound block.glass.break player @a ~ ~ ~ 0.8 1.6
    playsound block.glass.break player @a ~ ~ ~ 0.8 1.4
    playsound ogg:ambient.nether.crimson_forest.shine3 player @a ~ ~ ~ 0.7 2
    playsound ogg:ambient.nether.crimson_forest.shine3 player @a ~ ~ ~ 0.7 1.8
    execute positioned ~ ~0.3 ~ rotated as @s rotated ~180 0 run function asset:artifact/0756.sakura_hubuki/trigger/vfx/ice_cherry_blossom

# 鈍足を付与
    effect give @e[type=#lib:living,type=!player,tag=!Friend,tag=!Uninterferable,tag=!Object,distance=..3] slowness 1 3 true

# 範囲でのダメージ(Victimに与えるダメージの0.7倍)
    execute store result storage lib: Argument.Damage float 0.7 run scoreboard players get $RandomDamage Temporary
# 属性(正直3.mainで設定されてるため必要ないが、ないと違和感なので)
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"
# 補正
    function lib:damage/modifier
# ダメージ
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..6] as @e[type=#lib:living,type=!player,tag=!Victim,tag=!Friend,tag=!Uninterferable,tag=!Object,distance=..3] at @s run function lib:damage/

# リセット
    function lib:damage/reset