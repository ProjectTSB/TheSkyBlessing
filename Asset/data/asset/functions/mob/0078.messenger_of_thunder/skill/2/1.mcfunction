#> asset:mob/0078.messenger_of_thunder/skill/2/1
#
#
#
# @within function asset:mob/0078.messenger_of_thunder/tick/4.skill_branch

# 予備動作
    execute if entity @s[scores={26.Tick=0}] run playsound entity.zombie_villager.converted hostile @a ~ ~ ~ 1 1.5 0

# 技を使う
    execute if entity @s[scores={26.Tick=20}] run function asset:mob/0078.messenger_of_thunder/skill/2/2.activate

# HP半分以下で少し遅れて追加で2本召喚
    execute if entity @s[tag=26.HPLess50Per,scores={26.Tick=30}] run function asset:mob/0078.messenger_of_thunder/skill/2/3.addition_thunder

# リセット
    execute if entity @s[scores={26.Tick=50..}] run function asset:mob/0078.messenger_of_thunder/tick/reset