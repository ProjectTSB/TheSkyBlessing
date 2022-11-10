#> asset:mob/0022.red_knight/tick/skills/parry/3.active_counter
#
# カウンター攻撃
#
# @within function asset:mob/0022.red_knight/tick/skills/parry/1.tick

# スコアセット
    scoreboard players set @s M.Tick 30

# 演出
    playsound minecraft:entity.zombie.attack_iron_door hostile @a ~ ~ ~ 1.5 1.2
    playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 1.5 1
    playsound minecraft:block.anvil.place hostile @a ~ ~ ~ 1.5 2
