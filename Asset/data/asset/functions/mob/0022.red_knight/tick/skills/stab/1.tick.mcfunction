#> asset:mob/0022.red_knight/tick/skills/stab/1.tick
#
# 獄門
#
# @within function asset:mob/0022.red_knight/tick/2.3.skill_active

# パーティクル
    execute if score @s M.Tick matches 1 run particle minecraft:dust 0.7 0 0 1 ~ ~1 ~ 0.2 0.5 0.2 1 50

# テレポート
    execute if score @s M.Tick matches 0 run function asset:mob/0022.red_knight/tick/skills/stab/2.targeting

# 構え
    execute if score @s M.Tick matches 5 run function asset:mob/0022.red_knight/tick/skills/stab/3.windup

# 落下開始
    execute if score @s M.Tick matches 15 run function asset:mob/0022.red_knight/tick/skills/stab/4.fall_start

# 落下中
    execute if score @s M.Tick matches 15..55 run function asset:mob/0022.red_knight/tick/skills/stab/5.falling

# フィニッシュ
    execute if score @s M.Tick matches 55 run function asset:mob/0022.red_knight/tick/skills/stab/6.finish

# 姿勢を戻す
    execute if score @s M.Tick matches 70.. align y positioned ~ ~1.5 ~ run function asset:mob/0022.red_knight/tick/move/tp

# デバッグ用、行動ループ
    #execute if score @s M.Tick matches 0.. run scoreboard players set @s M.Tick -20

# リセット
    execute if score @s M.Tick matches 70.. run function asset:mob/0022.red_knight/tick/reset
