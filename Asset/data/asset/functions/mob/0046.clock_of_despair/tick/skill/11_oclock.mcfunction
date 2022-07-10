#> asset:mob/0046.clock_of_despair/tick/skill/11_oclock
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

#> Val
# @private
    #declare score_holder $LazerDirection
    #declare tag 1A.LazerDirection1
    #declare tag 1A.LazerDirection2
    #declare tag 1A.LazerDirection3
    #declare tag 1A.LazerDirection4

# 時計レーザーの順序指定
    execute if score @s 1A.LifeTime matches 2210 store result score $LazerDirection Temporary run function lib:random/
    execute if score @s 1A.LifeTime matches 2210 run scoreboard players operation $LazerDirection Temporary %= $4 Const
    execute if score @s 1A.LifeTime matches 2210 if score $LazerDirection Temporary matches 0 run tag @s add 1A.LazerDirection1
    execute if score @s 1A.LifeTime matches 2210 if score $LazerDirection Temporary matches 1 run tag @s add 1A.LazerDirection2
    execute if score @s 1A.LifeTime matches 2210 if score $LazerDirection Temporary matches 2 run tag @s add 1A.LazerDirection3
    execute if score @s 1A.LifeTime matches 2210 if score $LazerDirection Temporary matches 3 run tag @s add 1A.LazerDirection4
    execute if score @s 1A.LifeTime matches 2210 run scoreboard players reset $LazerDirection Temporary

# 時計レーザー
# + + -> - -
    execute if score @s 1A.LifeTime matches 2210 if entity @s[tag=1A.LazerDirection1] positioned ~007 ~6 ~-16 rotated 000 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    execute if score @s 1A.LifeTime matches 2210 if entity @s[tag=1A.LazerDirection1] positioned ~016 ~6 ~007 rotated 090 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    execute if score @s 1A.LifeTime matches 2250 if entity @s[tag=1A.LazerDirection1] positioned ~-07 ~6 ~016 rotated 180 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    execute if score @s 1A.LifeTime matches 2250 if entity @s[tag=1A.LazerDirection1] positioned ~-16 ~6 ~-07 rotated 270 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
# + - -> - +
    execute if score @s 1A.LifeTime matches 2210 if entity @s[tag=1A.LazerDirection2] positioned ~007 ~6 ~-16 rotated 000 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    execute if score @s 1A.LifeTime matches 2210 if entity @s[tag=1A.LazerDirection2] positioned ~016 ~6 ~-07 rotated 090 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    execute if score @s 1A.LifeTime matches 2250 if entity @s[tag=1A.LazerDirection2] positioned ~-07 ~6 ~016 rotated 180 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    execute if score @s 1A.LifeTime matches 2250 if entity @s[tag=1A.LazerDirection2] positioned ~-16 ~6 ~007 rotated 270 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
# - + -> + -
    execute if score @s 1A.LifeTime matches 2210 if entity @s[tag=1A.LazerDirection3] positioned ~-07 ~6 ~-16 rotated 000 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    execute if score @s 1A.LifeTime matches 2210 if entity @s[tag=1A.LazerDirection3] positioned ~016 ~6 ~007 rotated 090 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    execute if score @s 1A.LifeTime matches 2250 if entity @s[tag=1A.LazerDirection3] positioned ~007 ~6 ~016 rotated 180 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    execute if score @s 1A.LifeTime matches 2250 if entity @s[tag=1A.LazerDirection3] positioned ~-16 ~6 ~-07 rotated 270 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
# - - -> + +
    execute if score @s 1A.LifeTime matches 2210 if entity @s[tag=1A.LazerDirection4] positioned ~-07 ~6 ~-16 rotated 000 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    execute if score @s 1A.LifeTime matches 2210 if entity @s[tag=1A.LazerDirection4] positioned ~016 ~6 ~-07 rotated 090 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    execute if score @s 1A.LifeTime matches 2250 if entity @s[tag=1A.LazerDirection4] positioned ~007 ~6 ~016 rotated 180 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon
    execute if score @s 1A.LifeTime matches 2250 if entity @s[tag=1A.LazerDirection4] positioned ~-16 ~6 ~007 rotated 270 0 run function asset:mob/0046.clock_of_despair/tick/skill/common/wall_lazer_clock/summon

# タグ削除
    execute if score @s 1A.LifeTime matches 2250 run tag @s remove 1A.LazerDirection1
    execute if score @s 1A.LifeTime matches 2250 run tag @s remove 1A.LazerDirection2
    execute if score @s 1A.LifeTime matches 2250 run tag @s remove 1A.LazerDirection3
    execute if score @s 1A.LifeTime matches 2250 run tag @s remove 1A.LazerDirection4

# メイジをさよならする (大爆発させてこんな時間まで倒せてないやつを消し炭にしようかと思ったけど、流石に自重。)
    execute if score @s 1A.LifeTime matches 2380 run tp @e[type=zombie,scores={MobID=187},dx=19,dy=4,dz=19,sort=nearest,limit=1] ~ -100 ~
    execute if score @s 1A.LifeTime matches 2380 run tp @e[type=zombie,scores={MobID=189},dx=19,dy=4,dz=19,sort=nearest,limit=1] ~ -100 ~
    execute if score @s 1A.LifeTime matches 2380 run tp @e[type=zombie,scores={MobID=190},dx=19,dy=4,dz=19,sort=nearest,limit=1] ~ -100 ~

# 自分を爆破し続ける
    execute if score @s 1A.LifeTime matches 2300.. run function asset:mob/0046.clock_of_despair/tick/skill/common/fire/blast_vfx