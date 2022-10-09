#> asset:mob/1004.tultaria/tick/skill/phase3/3.explosion_laser/1.tick
#
# 爆破レーザー
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

#> private
# @private
    #declare score_holder $ShotInterval

# 実行時間を移す
    scoreboard players operation $ShotInterval Temporary = @s RW.Tick

# 構える
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/phase3/3.explosion_laser/2.windup
    # チャージ中エフェクト
        execute if score @s RW.Tick matches 0..10 at @s rotated ~ 0 run particle dust 1 0 1 1 ^ ^2.5 ^1 0.2 0.2 0.2 0 10
    # 向き
        execute if score @s RW.Tick matches 0..10 facing entity @p feet run tp @s ~ ~ ~ ~ 90

# 振り抜く
    execute if score @s RW.Tick matches 15 run function asset:mob/1004.tultaria/tick/skill/phase3/3.explosion_laser/3.active
    # 発動中エフェクト
        execute if score @s RW.Tick matches 15..25 at @s rotated ~ 0 run particle dust 1 0 1 1 ^ ^1.3 ^1.5 0.2 0.2 0.2 0 10

# ビーム！
    execute if score @s RW.Tick matches 15..50 run function asset:mob/1004.tultaria/tick/skill/phase3/3.explosion_laser/4.shoot

# デバッグ用、技ループ
    #execute if score @s RW.Tick matches 70 run scoreboard players set @s RW.Tick -10

# 小技出しましたのタグを付与
    execute if score @s RW.Tick matches 70 run tag @s add RW.MiniSkillUsed

# リセット
    execute if score @s RW.Tick matches 70 run function asset:mob/1004.tultaria/tick/reset