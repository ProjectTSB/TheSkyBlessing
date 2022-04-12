#> asset:sacred_treasure/0609.lunar_flare/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0609.lunar_flare/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    playsound item.chorus_fruit.teleport master @p ~ ~ ~ 0.6 2.0
    playsound entity.blaze.shoot master @a ~ ~ ~ 0.4 2

# スコアを付与する。スコア分の時間ビームする
    execute as @e[type=#lib:living,tag=GX.Target,sort=nearest,limit=1] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["GX.LaserPos","GX.LaserPosFirst","Projectile"]}
    scoreboard players set @e[type=armor_stand,tag=GX.LaserPosFirst] GX.BeamTime 3

# ユーザーIDを入れる
    scoreboard players operation @e[type=armor_stand,tag=GX.LaserPosFirst,sort=nearest,limit=1] GX.UserID = @s UserID
    tag @e[type=armor_stand,tag=GX.LaserPosFirst,sort=nearest,limit=1] remove GX.LaserPosFirst

# タグを消す
    tag @e[type=#lib:living,tag=GX.Target] remove GX.Target

# ファンクション分岐
    execute as @e[type=armor_stand,tag=GX.LaserPos] at @s run function asset:sacred_treasure/0609.lunar_flare/trigger/3.1.beamshot