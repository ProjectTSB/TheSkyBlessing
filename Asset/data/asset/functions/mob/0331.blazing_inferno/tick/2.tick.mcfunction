#> asset:mob/0331.blazing_inferno/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0331.blazing_inferno/tick/1.trigger

# 最寄りのモデルのRootを自身の座標にもってくる
    execute as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ 0

# こっちを向く
    execute if entity @s[tag=8N.PlayerFacing] facing entity @p feet run tp @s ~ ~ ~ ~ ~

# Tick加算
    scoreboard players add @s 8N.Tick 1

# イントロをまだやってないなら、イントロをやる
    execute unless entity @s[tag=8N.IntroFinish] run function asset:mob/0331.blazing_inferno/tick/intro/

# イントロが終了しているなら、基本動作を実行
    execute if entity @s[tag=8N.IntroFinish] run function asset:mob/0331.blazing_inferno/tick/base_move/