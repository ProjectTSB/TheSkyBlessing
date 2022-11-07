#> asset:mob/0022.red_knight/tick/skills/flame_pillar/1.tick
#
# 召喚技
#
# @within function asset:mob/0022.red_knight/tick/2.3.skill_active

#>
# declare

# 構え
    execute if score @s M.Tick matches 0 run function asset:mob/0022.red_knight/tick/skills/flame_pillar/2.windup

# 上昇
    execute if score @s M.Tick matches 0..20 run particle minecraft:flame ~ ~1 ~ 0.3 0.5 0.3 0.02 5
    execute if score @s M.Tick matches 0..2 positioned ~ ~0.4 ~ run function asset:mob/0022.red_knight/tick/move/tp
    execute if score @s M.Tick matches 2..8 positioned ~ ~0.3 ~ run function asset:mob/0022.red_knight/tick/move/tp
    execute if score @s M.Tick matches 8..20 positioned ~ ~0.1 ~ run function asset:mob/0022.red_knight/tick/move/tp

# 落下開始
    execute if score @s M.Tick matches 50 run function asset:mob/0022.red_knight/tick/skills/flame_pillar/3.fall_start

# 落下中
    execute if score @s M.Tick matches 50..70 run function asset:mob/0022.red_knight/tick/skills/flame_pillar/4.falling

# フィニッシュ
    execute if score @s M.Tick matches 70 run function asset:mob/0022.red_knight/tick/skills/flame_pillar/5.finish

# 召喚待機
    execute if score @s M.Tick matches 70..110 rotated ~ 0 positioned ^4 ^0.2 ^ run function asset:mob/0022.red_knight/tick/skills/flame_pillar/6.particle
    execute if score @s M.Tick matches 70..110 rotated ~ 0 positioned ^-4 ^0.2 ^ run function asset:mob/0022.red_knight/tick/skills/flame_pillar/6.particle
    execute if score @s M.Tick matches 70..110 rotated ~ 0 positioned ^2 ^0.2 ^1.5 run function asset:mob/0022.red_knight/tick/skills/flame_pillar/6.particle
    execute if score @s M.Tick matches 70..110 rotated ~ 0 positioned ^-2 ^0.2 ^1.5 run function asset:mob/0022.red_knight/tick/skills/flame_pillar/6.particle

# 実行時間を移す
    scoreboard players operation $ShotInterval Temporary = @s M.Tick

# 3tickごとに放つ
    scoreboard players operation $ShotInterval Temporary %= $3 Const
    execute if score $ShotInterval Temporary matches 0 run function

# 召喚
    execute if score @s M.Tick matches 100 rotated ~ 0 run function asset:mob/0022.red_knight/tick/skills/flame_pillar/7.summoning

# 姿勢を戻す
    execute if score @s M.Tick matches 160 align y positioned ~ ~1.5 ~ run function asset:mob/0022.red_knight/tick/move/tp

# デバッグ用、行動ループ
    execute if score @s M.Tick matches 2000.. run scoreboard players set @s M.Tick -20

# リセット
    #execute if score @s M.Tick matches 70.. run function asset:mob/0022.red_knight/tick/reset