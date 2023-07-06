#> asset:mob/1004.tultaria/tick/skill/phase3/4.mini_bullet_hell/1.tick
#
# ミニ弾幕地獄
#
# @within function asset:mob/1004.tultaria/tick/4.skill_active

#> private
# @private
    #declare score_holder $ShotInterval

# 実行時間を移す
    scoreboard players operation $ShotInterval Temporary = @s RW.Tick

# 構える
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/phase3/4.mini_bullet_hell/2.windup

# 振り抜く
    execute if score @s RW.Tick matches 20 run function asset:mob/1004.tultaria/tick/skill/phase3/4.mini_bullet_hell/3.start_attack

# 数Tickごとに実行
    scoreboard players operation $ShotInterval Temporary %= $4 Const
    execute if score @s RW.Tick matches 20..80 if score $ShotInterval Temporary matches 0 at @r positioned ~ ~0.7 ~ run function asset:mob/1004.tultaria/tick/skill/phase3/4.mini_bullet_hell/4.bullethell_tick

# 小技出しましたのタグを付与
    execute if score @s RW.Tick matches 120 run tag @s add RW.MiniSkillUsed

# リセット
    execute if score @s RW.Tick matches 120 run function asset:mob/1004.tultaria/tick/base_move/reset