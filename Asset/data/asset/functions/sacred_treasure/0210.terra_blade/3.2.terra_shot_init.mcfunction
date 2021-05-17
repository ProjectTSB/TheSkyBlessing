#> asset:sacred_treasure/0210.terra_blade/3.2.terra_shot_init
#
# テラショット発射直後の動作。向きを発射者に揃えて、発射者の目線の高さに移動
#
# @within function asset:sacred_treasure/0210.terra_blade/3.1.terra_shot_tick


# 向き調整とタグ削除
    execute facing entity @e[type=area_effect_cloud,tag=ChuzTerraSpread,distance=..100] feet run tp @s ~ ~ ~ ~ ~
    kill @e[type=area_effect_cloud,tag=ChuzTerraSpread,distance=..100]
    tag @s remove ChuzTerraShotInit
    tag @s add ChuzTerraShot

# スコアセット
    scoreboard players set @s 210.Range 300