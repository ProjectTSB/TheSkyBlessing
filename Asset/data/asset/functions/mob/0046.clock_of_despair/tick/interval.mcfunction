#> asset:mob/0046.clock_of_despair/tick/interval
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/2.tick


# 回転
    execute as @e[type=armor_stand,tag=1A.ClockHand,distance=..0.1,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~0.6666 ~

# パーティクル表示
    execute as @e[type=armor_stand,tag=1A.ClockHand,distance=..0.1,sort=nearest,limit=1] at @s rotated ~ 0 run function asset:mob/0046.clock_of_despair/tick/particle_clockhand
    function asset:mob/0046.clock_of_despair/tick/particle_clock
    execute as @e[type=area_effect_cloud,tag=1A.SkillThunderMaker,distance=..100] at @s rotated ~ 0 run function asset:mob/0046.clock_of_despair/tick/paticle_thunder




# 演出
    playsound minecraft:block.stone_button.click_on hostile @a ~ ~ ~ 1 1.4