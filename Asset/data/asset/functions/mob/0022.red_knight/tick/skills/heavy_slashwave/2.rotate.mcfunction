#> asset:mob/0022.red_knight/tick/skills/heavy_slashwave/2.rotate
#
#
#
# @within function asset:mob/0022.red_knight/tick/skills/heavy_slashwave/1.tick

# こっち向く
    execute facing entity @p feet run tp @s ~ ~ ~ ~ ~

# 体
    # 向き
        execute at @s as @e[type=armor_stand,tag=M.ModelBody,tag=M.ModelChangeTarget,distance=..0.5] run tp @s ~ ~ ~ ~45 ~

# 頭
    # 向き
        execute at @s as @e[type=armor_stand,tag=M.ModelHead,tag=M.ModelChangeTarget,distance=..0.5] run tp @s ~ ~ ~ ~0 ~

# 演出
    particle minecraft:dust 0.5 0 0 2 ~ ~1 ~ 0.3 0.5 0.3 0.05 1