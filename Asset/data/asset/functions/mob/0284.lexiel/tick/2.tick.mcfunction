#> asset:mob/0284.lexiel/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0284.lexiel/tick/1.trigger
#> private
# @private
    #declare score_holder $Count
    #declare score_holder $4tInterval


# アマスタにタグつける。ここでついたタグは最後に消す。実質的なthis
    function asset:mob/0284.lexiel/tick/armor_stand_check

# 開幕
    execute if entity @s[tag=7W.Opening] run function asset:mob/0284.lexiel/tick/wait_time/opening/tick

# フェーズ1
    execute if entity @s[tag=!7W.Opening] run function asset:mob/0284.lexiel/tick/wait_time/base_move/tick

# スコア加算
    scoreboard players add @s[tag=!7W.TickLock] 7W.Tick 1


# もしアマスタがどっかいってしまったら(tpの関係でatが無いと死ぬ)
    execute at @s unless entity @e[type=snowball,tag=7W.ModelCore,distance=..0.01] run function asset:mob/0284.lexiel/tick/armorstand_respawn

    execute as @e[type=area_effect_cloud,tag=7W.SkillThunderMaker] at @s run function asset:mob/0284.lexiel/tick/particle/particle1
# 最初に付けたタグを消す
    tag @e[type=armor_stand,tag=7W.ModelChangeTarget,distance=..0.5,limit=2] remove 7W.ModelChangeTarget