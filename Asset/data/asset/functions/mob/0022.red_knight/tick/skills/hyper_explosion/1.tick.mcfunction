#> asset:mob/0022.red_knight/tick/skills/hyper_explosion/1.tick
#
# 画面が真っ白になるレベルのすっごい爆発攻撃
#
# @within function asset:mob/0022.red_knight/tick/2.3.skill_active

# 構え
    execute if score @s M.Tick matches 0 run function asset:mob/0022.red_knight/tick/skills/hyper_explosion/2.windup

# 上昇
    execute if score @s M.Tick matches 0..100 run particle minecraft:flame ~ ~1 ~ 0.3 0.5 0.3 0.02 5
    execute if score @s M.Tick matches 0..2 positioned ~ ~0.4 ~ run function asset:mob/0022.red_knight/tick/move/tp
    execute if score @s M.Tick matches 2..8 positioned ~ ~0.3 ~ run function asset:mob/0022.red_knight/tick/move/tp
    execute if score @s M.Tick matches 8..16 positioned ~ ~0.1 ~ run function asset:mob/0022.red_knight/tick/move/tp
    execute if score @s M.Tick matches 16..100 positioned ~ ~0.05 ~ run function asset:mob/0022.red_knight/tick/move/tp

# でっかい攻撃範囲を地面に投影する
    execute if score @s M.Tick matches 20..100 rotated ~ 0 run function asset:mob/0022.red_knight/tick/skills/hyper_explosion/3.search_ground

# 範囲内のヤツに警告する
    execute if score @s M.Tick matches 20..100 run function asset:mob/0022.red_knight/tick/skills/hyper_explosion/4.alert

# 落下開始
    execute if score @s M.Tick matches 100 run function asset:mob/0022.red_knight/tick/skills/hyper_explosion/5.fall_start

# 落下中
    execute if score @s M.Tick matches 100..200 run function asset:mob/0022.red_knight/tick/skills/hyper_explosion/6.falling

# フィニッシュ
    execute if score @s M.Tick matches 200 run function asset:mob/0022.red_knight/tick/skills/hyper_explosion/7.finish

# 姿勢を戻す
    execute if score @s M.Tick matches 260 align y positioned ~ ~1.5 ~ run function asset:mob/0022.red_knight/tick/move/tp

# デバッグ用、行動ループ
    #execute if score @s M.Tick matches 2000.. run scoreboard players set @s M.Tick -20

# リセット
    execute if score @s M.Tick matches 260.. run function asset:mob/0022.red_knight/tick/reset