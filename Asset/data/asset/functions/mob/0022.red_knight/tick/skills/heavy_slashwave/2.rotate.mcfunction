#> asset:mob/0022.red_knight/tick/skills/heavy_slashwave/2.rotate
#
#
#
# @within function asset:mob/0022.red_knight/tick/skills/heavy_slashwave/1.tick

# こっち向きながら、タグに応じた予備動作を行う
    # 左から右
        execute if score @s[tag=M.WaveLeftToRight] M.Tick matches 0..19 facing entity @p feet rotated ~ 0 run tp @s ^-0.1 ^ ^ ~ ~
        execute if score @s[tag=M.WaveLeftToRight] M.Tick matches 20..29 facing entity @p feet rotated ~ 0 run tp @s ^-0.05 ^ ^ ~ ~
        execute if score @s[tag=M.WaveLeftToRight] M.Tick matches 30..39 facing entity @p feet rotated ~ 0 run tp @s ^-0.02 ^ ^ ~ ~

    # 右から左
        execute if score @s[tag=M.WaveRightToLeft] M.Tick matches 0..19 facing entity @p feet rotated ~ 0 run tp @s ^0.1 ^ ^ ~ ~
        execute if score @s[tag=M.WaveRightToLeft] M.Tick matches 20..29 facing entity @p feet rotated ~ 0 run tp @s ^0.05 ^ ^ ~ ~
        execute if score @s[tag=M.WaveRightToLeft] M.Tick matches 30..39 facing entity @p feet rotated ~ 0 run tp @s ^0.02 ^ ^ ~ ~

    # 中央
        execute if score @s[tag=M.WaveMiddle] M.Tick matches 0..19 facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^-0.1 ~ ~
        execute if score @s[tag=M.WaveMiddle] M.Tick matches 20..29 facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^-0.05 ~ ~
        execute if score @s[tag=M.WaveMiddle] M.Tick matches 30..39 facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^-0.02 ~ ~

    # 一定のスコア以降は、ただこっち向くだけ
        execute if score @s M.Tick matches 40.. facing entity @p feet run tp @s ~ ~ ~ ~ ~

# 体
    # 向き
        execute at @s as @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5] run tp @s ~ ~ ~ ~45 ~

# 頭
    # 向き
        execute at @s as @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..0.5] run tp @s ~ ~ ~ ~0 ~

# 演出
    particle minecraft:dust 0.5 0 0 2 ~ ~1 ~ 0.3 0.5 0.3 0.05 1