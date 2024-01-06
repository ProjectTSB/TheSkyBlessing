#> asset:mob/0078.messenger_of_thunder/skill/2/1
#
# スキル2のメイン処理
#
# @within function asset:mob/0078.messenger_of_thunder/tick/4.skill_branch

# 予備動作
    execute if entity @s[scores={26.Tick=0}] run playsound entity.zombie_villager.converted hostile @a[distance=..50] ~ ~ ~ 2 1.5 1

# 技を使う
    execute if entity @s[scores={26.Tick=20}] run function asset:mob/0078.messenger_of_thunder/skill/2/2.activate

# ノーマル以下なら、HP半分以下で少し遅れて追加で2本召喚
    execute if predicate api:global_vars/difficulty/max/normal if entity @s[tag=26.HPLess50Per,scores={26.Tick=30}] run function asset:mob/0078.messenger_of_thunder/skill/2/3.addition_thunder

# ハードなら最初から2本追加で打つ
    execute if predicate api:global_vars/difficulty/min/hard if entity @s[scores={26.Tick=30}] run function asset:mob/0078.messenger_of_thunder/skill/2/3.addition_thunder

# リセット
    execute if entity @s[scores={26.Tick=50..}] run function asset:mob/0078.messenger_of_thunder/tick/reset