#> asset:sacred_treasure/0647.thorn_armor/trigger/10.loop_process
#
# フルセット時の処理
#
# @within function asset:sacred_treasure/0647.thorn_armor/trigger/9.loop

# 演出
    particle dust 0 0.2 0 1 ~ ~1.3 ~ 0.6 0.4 0.6 0 1 normal @a

# 特殊効果のクールダウン処理
    execute if entity @s[scores={HZ.CoolDown=0..}] run scoreboard players remove @s HZ.CoolDown 1
    execute if entity @s[scores={HZ.CoolDown=..0}] run scoreboard players reset @s HZ.CoolDown

# ループ
    schedule function asset:sacred_treasure/0647.thorn_armor/trigger/9.loop 1t replace