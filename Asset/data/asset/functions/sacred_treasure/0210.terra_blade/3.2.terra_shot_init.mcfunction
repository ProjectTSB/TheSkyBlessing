#> asset:sacred_treasure/0210.terra_blade/3.2.terra_shot_init
#
# テラショット発射直後の動作。向きを発射者に揃えて、発射者の目線の高さに移動
#
# @within function asset:sacred_treasure/0210.terra_blade/3.main


# 向き調整とタグ削除
# 精度
    data modify storage lib: Argument.Distance set value 21.0f
    data modify storage lib: Argument.Spread set value 0.5f
    execute as @p[tag=this] at @s anchored eyes positioned ^ ^ ^ run function lib:forward_spreader/circle
    execute facing entity 0-0-0-0-0 feet run tp @s ~ ~ ~ ~ ~
    tag @s remove ChuzTerraShotInit
    tag @s add ChuzTerraShot

# スコアセット
    scoreboard players set @s 210.Range 100

# IDコピー
    scoreboard players operation @s 210.ID = @a[tag=this,limit=1] UserID
