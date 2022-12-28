#> asset:mob/0046.clock_of_despair/tick/2t_interval_vfx
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/2.tick


# VFX
    playsound minecraft:block.stone_button.click_on hostile @a ~ ~ ~ 0.6 1.4
    #function asset:mob/0046.clock_of_despair/tick/particle_clock
    execute rotated as @e[type=armor_stand,tag=1A.ClockHand,distance=..0.1,sort=nearest,limit=1] run function asset:mob/0046.clock_of_despair/tick/particle_clockhand