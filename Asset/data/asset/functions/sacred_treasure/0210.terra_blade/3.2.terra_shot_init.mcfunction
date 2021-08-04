#> asset:sacred_treasure/0210.terra_blade/3.2.terra_shot_init
#
# テラショット発射直後の動作。向きを発射者に揃えて、発射者の目線の高さに移動
#
# @within function asset:sacred_treasure/0210.terra_blade/3.main

#> SpreadLib
# @private
#declare tag SpreadMarker

# 向き調整とタグ削除
# 精度
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 21.0f
    data modify storage lib: Argument.Spread set value 0.5f
    execute as @e[type=marker,tag=SpreadMarker,limit=1] at @p[tag=this] anchored eyes positioned ^ ^ ^ run function lib:forward_spreader/circle
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet run tp @s ~ ~ ~ ~ ~
    tag @s remove ChuzTerraShotInit
    tag @s add ChuzTerraShot

# スコアセット
    scoreboard players set @s 5U.Range 100

# IDコピー
    scoreboard players operation @s 5U.ID = @a[tag=this,limit=1] UserID

# リセット
    kill @e[type=marker,tag=SpreadMarker]