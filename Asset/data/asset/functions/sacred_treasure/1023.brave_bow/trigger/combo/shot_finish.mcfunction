#> asset:sacred_treasure/1023.brave_bow/trigger/combo/shot_finish
#
# ショットフィニッシュ
#
# @within function asset:sacred_treasure/1023.brave_bow/trigger/3.main

# 召喚
    data modify storage api: Argument.ID set value 309
    execute anchored eyes positioned ^-0.25 ^ ^ run function api:mob/summon

# 演出
    execute anchored eyes positioned ^ ^ ^1 run playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1.5 1.2
    execute anchored eyes positioned ^ ^ ^1 run playsound minecraft:item.crossbow.shoot player @a ~ ~ ~ 1.5 1.2
    execute anchored eyes positioned ^ ^ ^1 run playsound ogg:block.respawn_anchor.deplete1 player @a ~ ~ ~ 1.5 2
    execute anchored eyes positioned ^ ^ ^1 run playsound tsb_sounds:blaster1 player @a ~ ~ ~ 1.5 2

# しばらく撃てなくなる
    tag @s add SF.FinishCoolTime