#> asset:mob/0237.lunatic_mage/skill/summon/1
#
# 召喚のメイン処理
#
# @within function asset:mob/0237.lunatic_mage/tick/4.skill_branch

# 最初に中央にワープする
    execute if entity @s[scores={6L.Tick=1}] positioned as @e[type=marker,tag=6L.SpawnPoint,distance=..100,limit=1] run tp @s ~ ~ ~ ~ ~

# モデル変更
    execute if entity @s[scores={6L.Tick=6}] run item replace entity @s armor.head with stick{CustomModelData:20200}

# メイジ召喚予定位置にmarkerを召喚
    execute if entity @s[scores={6L.Tick=6}] rotated 0 0 positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["6L.SummonPoint","6L.Marker"]}
    execute if entity @s[scores={6L.Tick=6}] rotated 120 0 positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["6L.SummonPoint","6L.Marker"]}
    execute if entity @s[scores={6L.Tick=6}] rotated 240 0 positioned ^ ^ ^6 run summon marker ~ ~ ~ {Tags:["6L.SummonPoint","6L.Marker"]}

# マーカーの位置にvfx
    execute if entity @s[scores={6L.Tick=10..40}] run function asset:mob/0237.lunatic_mage/skill/summon/2.vfx_interval

# 召喚
    execute if entity @s[scores={6L.Tick=51}] at @e[type=marker,tag=6L.SummonPoint,distance=..30,limit=3] run function asset:mob/0237.lunatic_mage/skill/summon/3.summon

# リセット
    execute if entity @s[scores={6L.Tick=51..}] run function asset:mob/0237.lunatic_mage/tick/5.reset