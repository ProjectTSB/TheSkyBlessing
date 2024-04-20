#> asset:mob/0078.messenger_of_thunder/skill/4/1
#
# スキル4のメイン処理
#
# @within function asset:mob/0078.messenger_of_thunder/tick/4.skill_branch

# 予備動作
    execute if entity @s[scores={26.Tick=0}] run playsound entity.zombie_villager.converted hostile @a[distance=..50] ~ ~ ~ 2 1.5 1

# 発動
    execute if entity @s[scores={26.Tick=10}] run function asset:mob/0078.messenger_of_thunder/skill/4/2.activate

# リセット
    execute if entity @s[scores={26.Tick=50..}] run function asset:mob/0078.messenger_of_thunder/tick/reset