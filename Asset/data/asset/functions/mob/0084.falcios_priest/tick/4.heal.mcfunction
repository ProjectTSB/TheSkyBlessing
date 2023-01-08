#> asset:mob/0084.falcios_priest/tick/4.heal
#
# 回復スキル
#
# @within function asset:mob/0084.falcios_priest/tick/2.tick

# 演出
    particle soul ~ ~1.2 ~ 2.5 0.5 2.5 0.3 200 normal
    playsound block.sculk_sensor.clicking hostile @a ~ ~ ~ 0.8 0 0
    playsound block.fire.ambient hostile @a ~ ~ ~ 1.5 0.8 0
    playsound ogg:mob.vex.idle1 hostile @a ~ ~ ~ 0.8 0 0
    execute as @e[type=#lib:living,tag=Enemy,tag=!this,distance=..10,sort=random,limit=5] unless entity @s[scores={MobID=84}] run particle heart ~ ~1.2 ~ 0.4 0.4 0.4 0 20 normal @a

# 回復
    data modify storage lib: Argument.Heal set value 400f
    function lib:heal/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=!this,distance=..10,sort=random,limit=5] unless entity @s[scores={MobID=84}] run function lib:heal/
    function lib:heal/reset