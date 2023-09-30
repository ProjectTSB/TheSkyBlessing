#> asset:mob/0327.eclael/tick/app.general/1.rotate
#
# 汎用処理 なめらかに対象の方を向く
#
# @within asset:mob/0327.eclael/tick/**

# タグ付与
    tag @s add 93.Temp.GeneralTarget
# 滑らかに回転
    execute as @e[type=wither_skeleton,tag=93.Temp.Me,sort=nearest,limit=1] at @s rotated ~ 0 positioned ^ ^ ^-1 facing entity @a[tag=93.Temp.GeneralTarget] feet rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s positioned ^ ^ ^-1 rotated as @s rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ 0
# 終了
    tag @s remove 93.Temp.GeneralTarget
    tag @e[type=wither_skeleton,tag=93.Temp.Me,sort=nearest,limit=1] remove 93.Temp.Me
