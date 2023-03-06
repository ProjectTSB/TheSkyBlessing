#> asset:artifact/0609.lunar_flare/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0609.lunar_flare/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# 視点先検知
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/0609.lunar_flare/trigger/find_target_entity

# ここから先は神器側の効果の処理を書く

# VFX
    playsound minecraft:block.fire.ambient player @a ~ ~ ~ 1 2
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 1.7
    playsound minecraft:block.amethyst_cluster.break player @a ~ ~ ~ 1 2
    playsound minecraft:block.amethyst_cluster.break player @a ~ ~ ~ 1 1.5

# スコアと同じ時間レーザーが降ってくる
    scoreboard players set @e[type=marker,tag=GX.LaserPosFirst] GX.BeamTime 10

# ユーザーIDを入れる
    scoreboard players operation @e[type=marker,tag=GX.LaserPosFirst,sort=nearest,limit=1] GX.UserID = @s UserID
    tag @e[type=marker,tag=GX.LaserPosFirst,sort=nearest,limit=1] remove GX.LaserPosFirst

# タグを消す
    tag @s[tag=GX.RecursiveEnd] remove GX.RecursiveEnd

# ファンクション分岐
    schedule function asset:artifact/0609.lunar_flare/trigger/projectile/laser_pos_main 1t