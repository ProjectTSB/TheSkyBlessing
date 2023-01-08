#> asset:mob/0046.clock_of_despair/tick/skill/11_oclock
#
# 時計レーザーx2 -> 時計レーザーx2
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

#> Val
# @private
    #declare score_holder $LazerDirection
    #declare tag 1A.LazerDirection1
    #declare tag 1A.LazerDirection2
    #declare tag 1A.LazerDirection3
    #declare tag 1A.LazerDirection4
    #declare score_holder $IntervalTime

# 時計レーザーの順序指定
    execute if score @s 1A.LifeTime matches 2205 store result score $LazerDirection Temporary run function lib:random/
    execute if score @s 1A.LifeTime matches 2205 run scoreboard players operation $LazerDirection Temporary %= $4 Const
    execute if score @s 1A.LifeTime matches 2205 if score $LazerDirection Temporary matches 0 run tag @s add 1A.LazerDirection1
    execute if score @s 1A.LifeTime matches 2205 if score $LazerDirection Temporary matches 1 run tag @s add 1A.LazerDirection2
    execute if score @s 1A.LifeTime matches 2205 if score $LazerDirection Temporary matches 2 run tag @s add 1A.LazerDirection3
    execute if score @s 1A.LifeTime matches 2205 if score $LazerDirection Temporary matches 3 run tag @s add 1A.LazerDirection4
    execute if score @s 1A.LifeTime matches 2205 run scoreboard players reset $LazerDirection Temporary

# 時計レーザー
# + + -> - -
    execute if score @s 1A.LifeTime matches 2205 if entity @s[tag=1A.LazerDirection1] positioned ~007 ~6 ~-16 rotated 000 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    # execute if score @s 1A.LifeTime matches 2205 if entity @s[tag=1A.LazerDirection1] positioned ~016 ~6 ~007 rotated 090 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    execute if score @s 1A.LifeTime matches 2230 if entity @s[tag=1A.LazerDirection1] positioned ~-07 ~6 ~016 rotated 180 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    # execute if score @s 1A.LifeTime matches 2230 if entity @s[tag=1A.LazerDirection1] positioned ~-16 ~6 ~-07 rotated 270 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
# + - -> - +
    # execute if score @s 1A.LifeTime matches 2205 if entity @s[tag=1A.LazerDirection2] positioned ~007 ~6 ~-16 rotated 000 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    execute if score @s 1A.LifeTime matches 2205 if entity @s[tag=1A.LazerDirection2] positioned ~016 ~6 ~-07 rotated 090 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    # execute if score @s 1A.LifeTime matches 2230 if entity @s[tag=1A.LazerDirection2] positioned ~-07 ~6 ~016 rotated 180 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    execute if score @s 1A.LifeTime matches 2230 if entity @s[tag=1A.LazerDirection2] positioned ~-16 ~6 ~007 rotated 270 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
# - + -> + -
    execute if score @s 1A.LifeTime matches 2205 if entity @s[tag=1A.LazerDirection3] positioned ~-07 ~6 ~-16 rotated 000 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    # execute if score @s 1A.LifeTime matches 2205 if entity @s[tag=1A.LazerDirection3] positioned ~016 ~6 ~007 rotated 090 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    execute if score @s 1A.LifeTime matches 2230 if entity @s[tag=1A.LazerDirection3] positioned ~007 ~6 ~016 rotated 180 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    # execute if score @s 1A.LifeTime matches 2230 if entity @s[tag=1A.LazerDirection3] positioned ~-16 ~6 ~-07 rotated 270 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
# - - -> + +
    # execute if score @s 1A.LifeTime matches 2205 if entity @s[tag=1A.LazerDirection4] positioned ~-07 ~6 ~-16 rotated 000 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    execute if score @s 1A.LifeTime matches 2205 if entity @s[tag=1A.LazerDirection4] positioned ~016 ~6 ~-07 rotated 090 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    # execute if score @s 1A.LifeTime matches 2230 if entity @s[tag=1A.LazerDirection4] positioned ~007 ~6 ~016 rotated 180 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    execute if score @s 1A.LifeTime matches 2230 if entity @s[tag=1A.LazerDirection4] positioned ~-16 ~6 ~007 rotated 270 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon

# タグ削除
    execute if score @s 1A.LifeTime matches 2230 run tag @s remove 1A.LazerDirection1
    execute if score @s 1A.LifeTime matches 2230 run tag @s remove 1A.LazerDirection2
    execute if score @s 1A.LifeTime matches 2230 run tag @s remove 1A.LazerDirection3
    execute if score @s 1A.LifeTime matches 2230 run tag @s remove 1A.LazerDirection4

# メイジをさよならする (大爆発させてこんな時間まで倒せてないやつを消し炭にしようかと思ったけど、流石に自重。)
    execute if score @s 1A.LifeTime matches 2380 positioned ~-10 ~ ~-10 run tp @e[type=zombie,scores={MobID=187},dx=19,dy=4,dz=19,sort=nearest,limit=1] ~ -100 ~
    execute if score @s 1A.LifeTime matches 2380 positioned ~-10 ~ ~-10 run tp @e[type=zombie,scores={MobID=189},dx=19,dy=4,dz=19,sort=nearest,limit=1] ~ -100 ~
    execute if score @s 1A.LifeTime matches 2380 positioned ~-10 ~ ~-10 run tp @e[type=zombie,scores={MobID=190},dx=19,dy=4,dz=19,sort=nearest,limit=1] ~ -100 ~

# 爆発演出
    scoreboard players operation $IntervalTime Temporary = @s 1A.LifeTime
    execute if score @s 1A.LifeTime matches 2200..2249 run scoreboard players operation $IntervalTime Temporary %= $5 Const
    execute if score @s 1A.LifeTime matches 2250..2299 run scoreboard players operation $IntervalTime Temporary %= $4 Const
    execute if score @s 1A.LifeTime matches 2300..2360 run scoreboard players operation $IntervalTime Temporary %= $3 Const
    execute if score $IntervalTime Temporary matches 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/blast_vfx
    scoreboard players reset $IntervalTime Temporary

    execute if score @s 1A.LifeTime matches 2345 run particle enchant ~ ~2.5 ~ 0 0 0 30 1000
    execute if score @s 1A.LifeTime matches 2350 run particle enchant ~ ~2.5 ~ 0 0 0 30 1000
    execute if score @s 1A.LifeTime matches 2355 run particle enchant ~ ~2.5 ~ 0 0 0 30 1000
    execute if score @s 1A.LifeTime matches 2370 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.0
    execute if score @s 1A.LifeTime matches 2375 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.0
    execute if score @s 1A.LifeTime matches 2370 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.1
    execute if score @s 1A.LifeTime matches 2375 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.1
    execute if score @s 1A.LifeTime matches 2370 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.2
    execute if score @s 1A.LifeTime matches 2375 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.2
    execute if score @s 1A.LifeTime matches 2370 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.3
    execute if score @s 1A.LifeTime matches 2375 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.3
    execute if score @s 1A.LifeTime matches 2370 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.4
    execute if score @s 1A.LifeTime matches 2375 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.4
    execute if score @s 1A.LifeTime matches 2370 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.5
    execute if score @s 1A.LifeTime matches 2375 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.5
    execute if score @s 1A.LifeTime matches 2370 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.6
    execute if score @s 1A.LifeTime matches 2375 run playsound entity.guardian.attack hostile @a ~ ~ ~ 2 1.6