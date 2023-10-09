#> asset:mob/0323.haruclaire_illusion/tick/kill
#
# Mobのtick時の処理
#
# @within function asset:mob/0323.haruclaire_illusion/tick/2.tick

# 消去
    # animated javaモデル消去
        execute as @e[tag=8Z.ModelRoot,sort=nearest,limit=1] run function animated_java:haruclaire_illusion/remove/all
    # 自身を消去
        kill @s