#> asset:sacred_treasure/0609.lunar_flare/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0609.lunar_flare/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

# スコアを付与する。スコア分の時間ビームする
    execute as @e[type=#lib:living,tag=9P.Target] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["9P.LaserPos","9P.LaserPosFirst"]}
    scoreboard players add @e[type=armor_stand,tag=9P.LaserPosFirst] 9P.BeamTime 3

# ユーザーIDを入れる
    scoreboard players operation @e[type=armor_stand,tag=9P.LaserPosFirst,sort=nearest,limit=1] 9P.UserID = @s UserID
    tag @e[type=armor_stand,tag=9P.LaserPosFirst,sort=nearest,limit=1] remove 9P.LaserPosFirst

# ファンクション分岐
    execute as @e[type=armor_stand,tag=9P.LaserPos] at @s run function asset:sacred_treasure/0609.lunar_flare/3.1.beamshot
    tag @e[type=#lib:living,tag=9P.Target] remove 9P.Target