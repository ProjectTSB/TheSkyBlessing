#> asset:sacred_treasure/0639.neptune_armor/4.fullset
#
#
#
# @within function asset:sacred_treasure/????.neptune_*/3.main

# 天気変更
    weather thunder

# タグを自分に付与
    tag @s add HS.Complete

# 演出
    particle splash ~ ~1.5 ~ 0.7 1 0.7 0 400 normal @a
    playsound entity.dolphin.splash master @a ~ ~ ~ 2 1.2 0
    playsound block.end_portal.spawn master @a ~ ~ ~ 0.6 1.4 0

# スケジュールループ
    schedule function asset:sacred_treasure/0639.neptune_armor/5.schedule_loop 1t replace