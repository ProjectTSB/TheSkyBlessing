#> asset:artifact/0724.oblivious_snow/trigger/fullset/main
#
# メイン処理
#
# @within function asset:artifact/0724.oblivious_snow/trigger/fullset/loop

# 演出
    particle snowflake ~ ~4 ~ 1.8 0.25 1.8 0.0 9 normal @a[distance=..16]
    particle snowflake ~ ~0.3 ~ 1.5 0.1 1.5 0.1 2 normal @a[distance=..16]

# 周囲に鈍足を付与
    effect give @e[type=#lib:living,tag=Enemy,tag=!Enemy.Boss,distance=..3.5] slowness 1 0 true

# 攻撃CD処理
    execute if entity @s[scores={K4.AttackCD=1..}] run scoreboard players remove @s K4.AttackCD 1
    execute if entity @s[scores={K4.AttackCD=..0}] run scoreboard players reset @s K4.AttackCD

# ループ処理
    schedule function asset:artifact/0724.oblivious_snow/trigger/fullset/loop 1t replace