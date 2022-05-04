#> asset:sacred_treasure/0609.lunar_flare/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0609.lunar_flare/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# 視点先検知
    execute anchored eyes positioned ^ ^ ^ run function asset:sacred_treasure/0609.lunar_flare/trigger/find_target_entity

# ここから先は神器側の効果の処理を書く

# VFX
    playsound minecraft:block.fire.ambient player @a ~ ~ ~ 1 2
    playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 2
    playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 1.7

# スコアを付与する。スコア分の時間ビームする
    #execute as @e[type=#lib:living,tag=GX.Target,sort=nearest,limit=1] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["GX.LaserPos","GX.LaserPosFirst","Projectile"]}
    scoreboard players set @e[type=marker,tag=GX.LaserPosFirst] GX.BeamTime 3

# ユーザーIDを入れる
    scoreboard players operation @e[type=marker,tag=GX.LaserPosFirst,sort=nearest,limit=1] GX.UserID = @s UserID
    tag @e[type=marker,tag=GX.LaserPosFirst,sort=nearest,limit=1] remove GX.LaserPosFirst

# タグを消す
    #tag @e[type=#lib:living,tag=GX.Target] remove GX.Target
    tag @s[tag=GX.RecursiveEnd] remove GX.RecursiveEnd

# ファンクション分岐
    schedule function asset:sacred_treasure/0609.lunar_flare/trigger/projectile/laser_pos_main 1t