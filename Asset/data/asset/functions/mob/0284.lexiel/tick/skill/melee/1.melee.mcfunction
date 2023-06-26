#> asset:mob/0284.lexiel/tick/skill/melee/1.melee
#
#
#
# @within function asset:mob/0284.lexiel/tick/4.skill_active

# ポーズ
    execute if score @s 7W.Tick matches 0 as @e[type=armor_stand,tag=7W.ModelChangeTarget,tag=7W.ModelBody,distance=..0.5,sort=nearest,limit=1] run function asset:mob/0284.lexiel/tick/skill/melee/2.first_tick

# 攻撃判定
    execute if score @s 7W.Tick matches 15 run function asset:mob/0284.lexiel/tick/skill/melee/3.slash

    execute if score @s 7W.Tick matches 20 run function asset:mob/0284.lexiel/tick/skill/melee/4.slash2

# リセット
    execute if score @s 7W.Tick matches 45 run function asset:mob/0284.lexiel/tick/reset
