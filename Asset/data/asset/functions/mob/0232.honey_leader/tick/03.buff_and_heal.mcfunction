#> asset:mob/0232.honey_leader/tick/03.buff_and_heal
#
# ハニー系のMobにバフを付与して回復するよ
#
# @within function asset:mob/0232.honey_leader/tick/2.tick

#> Private
# @private
    #declare tag 6G.HoneyMob

# 演出
    particle minecraft:block honey_block ~ ~1.2 ~ 2 0.4 2 0 30
    particle dust 1.000 0.741 0.141 1.3 ~ ~1.2 ~ 2 0.4 2 0 160 normal
    particle minecraft:wax_on ~ ~ ~ 2 2 2 0 100
    playsound minecraft:entity.glow_squid.squirt hostile @a ~ ~ ~ 1 0.8 0

# バフ
    tag @e[type=skeleton,scores={MobID=141..142},distance=..10] add 6G.HoneyMob
    tag @e[type=skeleton,scores={MobID=233},distance=..10] add 6G.HoneyMob
    effect give @e[type=skeleton,tag=6G.HoneyMob,distance=..10] resistance 2 1 true
    effect give @e[type=skeleton,tag=6G.HoneyMob,distance=..10] speed 2 1 true

# 回復
    data modify storage lib: Argument.Heal set value 750f
    function lib:heal/modifier
    execute as @e[type=skeleton,tag=6G.HoneyMob,distance=..10] run function lib:heal/
    data remove storage lib: Argument

# タグを消しておく
    tag @e[type=skeleton,tag=6G.HoneyMob,distance=..10] remove 6G.HoneyMob

# 自身のスコアリセット
    scoreboard players reset @s 6G.BuffCool