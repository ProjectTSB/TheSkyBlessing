#> asset:mob/0022.red_knight/tick/skills/heavy_slashwave/1.tick
#
# 露骨なグルグル殺しの衝撃波！
#
# @within function asset:mob/0022.red_knight/tick/2.3.skill_active

# 構える
    execute if score @s M.Tick matches 0 run function asset:mob/0022.red_knight/tick/skills/heavy_slashwave/2.windup

# 狙う
    execute if score @s M.Tick matches 0..59 run function asset:mob/0022.red_knight/tick/skills/heavy_slashwave/2.rotate

# 振り抜く
    execute if score @s M.Tick matches 60 run function asset:mob/0022.red_knight/tick/skills/heavy_slashwave/3.slash

# 事前に設定しておいたタグに応じた斬撃を放つ
    execute if entity @s[tag=M.WaveMiddle] run function asset:mob/0022.red_knight/tick/skills/heavy_slashwave/4.wave_type1
    execute if entity @s[tag=M.WaveLeftToRight] run function asset:mob/0022.red_knight/tick/skills/heavy_slashwave/4.wave_type2
    execute if entity @s[tag=M.WaveRightToLeft] run function asset:mob/0022.red_knight/tick/skills/heavy_slashwave/4.wave_type3

# デバッグ用: この処理をループする
    #execute if score @s M.Tick matches 100.. run scoreboard players set @s M.Tick -20

# リセット
    execute if score @s M.Tick matches 100.. run function asset:mob/0022.red_knight/tick/reset