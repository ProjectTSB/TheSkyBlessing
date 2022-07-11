#> asset:mob/0216.gray_guardian/tick/1.skill_melee/2.first_tick
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/1.skill_melee/1.skill_melee

# 演出
   particle dragon_breath ~ ~1 ~ 0.5 0.5 0.5 0 10 normal @a
   playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.7 0.9 0
# テレポート
    data modify storage lib: Argument.Bounds set value [[15d,15d],[0d,0d],[15d,15d]]
    function asset:mob/0216.gray_guardian/tick/move/spread
    execute at @s facing entity @p[distance=..100] feet run function asset:mob/0216.gray_guardian/tick/move/teleport
