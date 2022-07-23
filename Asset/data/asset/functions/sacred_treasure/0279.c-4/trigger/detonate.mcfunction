#> asset:sacred_treasure/0279.c-4/trigger/detonate
#
#
#
# @within function asset:sacred_treasure/0279.c-4/trigger/2.check_condition


# 自分にタグ付与
    tag @s add 7R.This

# 自分の持っているC4を起爆する
    execute as @e[type=zombie,tag=7R.C4,distance=..100] at @s if score @s 7R.UserID = @p[tag=7R.This] UserID run function asset:sacred_treasure/0279.c-4/trigger/explode

# タグ消す
    tag @s remove 7R.This