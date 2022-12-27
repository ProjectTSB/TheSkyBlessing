#> asset:mob/0237.lunatic_mage/skill/summon/1
#
# 召喚のメイン処理
#
# @within function asset:mob/0237.lunatic_mage/tick/4.skill_branch

# 最初に中央にワープする
    execute if entity @s[scores={6L.Tick=1}] positioned as @e[type=marker,tag=6L.SpawnPoint,distance=..100,limit=1] run tp @s ~ ~ ~ ~ ~

# モデル変更
    execute if entity @s[scores={6L.Tick=6}] run item replace entity @s armor.head with stick{CustomModelData:20200}

