#> asset:mob/0074.watermelon_bomber/tick/3.throw_watermelon
#
#
#
# @within function asset:mob/0074.watermelon_bomber/tick/2.tick

# スイカ投げ
    data modify storage api: Argument.ID set value 75
    function api:mob/summon
    execute facing entity @p[tag=!PlayerShouldInvulnerable,distance=..20] feet run tp @e[type=armor_stand,scores={MobID=75},distance=..0.1,limit=1] ~ ~1.2 ~ ~ ~-2

# スコアリセット
    scoreboard players reset @s 22.Tick
