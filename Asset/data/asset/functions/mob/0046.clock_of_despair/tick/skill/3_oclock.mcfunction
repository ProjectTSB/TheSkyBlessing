#> asset:mob/0046.clock_of_despair/tick/skill/3_oclock
#
# 空腹 + おやつ
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

# おやつの時間だ！
    execute if score @s 1A.LifeTime matches 605 as @a[distance=..50] run tellraw @a [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> おやつの時間だ！"}]
    execute if score @s 1A.LifeTime matches 605 run tellraw @a[distance=..50] {"text":"あなたは唐突にお腹が減ってきた...。"}
    execute if score @s 1A.LifeTime matches 605 run effect give @a[distance=..50] hunger 8 99 true

# クッキーをあげる
    execute if score @s 1A.LifeTime matches 650 run give @a[distance=..50] cookie 3
    execute if score @s 1A.LifeTime matches 700 run give @a[distance=..50] cookie 3
    execute if score @s 1A.LifeTime matches 750 run give @a[distance=..50] cookie 3