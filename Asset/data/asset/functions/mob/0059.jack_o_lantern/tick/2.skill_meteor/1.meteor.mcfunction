#> asset:mob/0059.jack_o_lantern/tick/2.skill_meteor/1.meteor
#
# メテオ（メテオとは言っていない）
#
# @within function asset:mob/0059.jack_o_lantern/tick/4.skill_active

# 自分を超鈍足にする
    execute if score @s 1N.Tick matches 0 run effect give @s slowness 12 100 true

# 演出
    execute if score @s 1N.Tick matches 0 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1.5 1.5
    execute if score @s 1N.Tick matches 0 run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 2
    execute if score @s 1N.Tick matches 0..20 run particle dust 1 0 0 1 ~ ~1.2 ~ 0.8 0.8 0.8 0 20 normal @a
# 眷属をいっぱいだす
    execute if score @s 1N.Tick matches 20 positioned ~ ~7 ~ run function asset:mob/0059.jack_o_lantern/tick/2.skill_meteor/summon
    execute if score @s 1N.Tick matches 30 positioned ~ ~7 ~ run function asset:mob/0059.jack_o_lantern/tick/2.skill_meteor/summon
    execute if score @s 1N.Tick matches 40 positioned ~ ~7 ~ run function asset:mob/0059.jack_o_lantern/tick/2.skill_meteor/summon
    execute if score @s 1N.Tick matches 60 positioned ~ ~7 ~ run function asset:mob/0059.jack_o_lantern/tick/2.skill_meteor/summon
    execute if score @s 1N.Tick matches 80 positioned ~ ~7 ~ run function asset:mob/0059.jack_o_lantern/tick/2.skill_meteor/summon

# リセット
    execute if score @s 1N.Tick matches 200.. run function asset:mob/0059.jack_o_lantern/tick/reset