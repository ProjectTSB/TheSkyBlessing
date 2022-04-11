#> asset:mob/0078.messenger_of_thunder/skill/2/1
#
#
#
# @within function asset:mob/0078.messenger_of_thunder/tick/4.skill_branch

# 予備動作
    execute if entity @s[scores={26.Tick=0}] run playsound entity.zombie_villager.converted hostile @a ~ ~ ~ 1 1.5 0

# 召喚
    execute if entity @s[scores={26.Tick=20}] run data modify storage api: Argument.ID set value 79
    execute if entity @s[scores={26.Tick=20}] run function api:mob/summon
    execute if entity @s[scores={26.Tick=20}] as @e[type=marker,scores={MobID=79},distance=..0.001,sort=nearest,limit=1] at @s facing entity @p[distance=..50] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~

# モーション
    execute if entity @s[scores={26.Tick=20}] run data modify storage lib: Argument.VectorMagnitude set value 0.8
    execute if entity @s[scores={26.Tick=20}] facing entity @p[gamemode=!spectator,distance=..50] feet rotated ~-180 ~-20 run function lib:motion/

# リセット
    execute if entity @s[scores={26.Tick=50..}] run function asset:mob/0078.messenger_of_thunder/tick/reset
    data remove storage lib: Argument