#> asset:mob/0202.hunters_dream/tick/1.skill_sword/1.skill_sword
#
#
#
# @within function asset:mob/0202.hunters_dream/tick/4.skill_active

# 一回後退
    execute if score @s 5M.Tick matches 0 run function asset:mob/0202.hunters_dream/tick/1.skill_sword/2.backstep
# その後突進
    execute if score @s 5M.Tick matches 10 run function asset:mob/0202.hunters_dream/tick/1.skill_sword/3.step
# 攻撃判定
    execute if score @s 5M.Tick matches 14 run function asset:mob/0202.hunters_dream/tick/1.skill_sword/4.slash
# リセット
    execute if score @s 5M.Tick matches 14 run function asset:mob/0202.hunters_dream/tick/reset