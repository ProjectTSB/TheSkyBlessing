#> asset:mob/0046.clock_of_despair/tick/interval
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/2.tick


# 回転
    execute as @e[type=armor_stand,tag=1A.ClockHand,distance=..0.1,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~0.6 ~

# パーティクル表示
    execute as @e[type=armor_stand,tag=1A.ClockHand,distance=..0.1,sort=nearest,limit=1] at @s rotated ~ 0 run function asset:mob/0046.clock_of_despair/tick/particle_clockhand
    function asset:mob/0046.clock_of_despair/tick/particle_clock
# 演出
    playsound minecraft:block.stone_button.click_on hostile @a ~ ~ ~ 0.6 1.4