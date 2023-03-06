#> asset:artifact/0664.soul_fire_armor/trigger/fullset/main
#
# フルセット時のメイン処理
#
# @within function asset:artifact/0664.soul_fire_armor/trigger/fullset/loop

# 演出
    particle soul ~ ~1.2 ~ 2 0.5 2 0.03 1 normal @a
    particle soul_fire_flame ~ ~1.2 ~ 2 0.5 2 0.03 1 normal @a

# AttackCTの処理
    execute if entity @s[scores={IG.AttackCT=0..}] run scoreboard players remove @s IG.AttackCT 1
    execute if entity @s[scores={IG.AttackCT=..0}] run scoreboard players reset @s IG.AttackCT

# スケジュールループ
    execute if entity @s[tag=IG.Fullset] run schedule function asset:artifact/0664.soul_fire_armor/trigger/fullset/loop 1t replace