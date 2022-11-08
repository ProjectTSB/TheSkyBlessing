#> asset:mob/0022.red_knight/death/end
#
# 「赤い騎士は死なない」…とのことなので撤退っぽい演出で終了
#
# @within function asset:mob/0022.red_knight/death/death_animation

# 演出
    particle minecraft:explosion ~ ~1.5 ~ 0 0 0 0 0 force @a[distance=..20]
    particle reverse_portal ~ ~1.5 ~ 0 0 0 2 200
    particle effect ~ ~ ~ 0 5 0 0.1 200
    playsound minecraft:entity.illusioner.prepare_blindness hostile @a ~ ~ ~ 2 0.8
    playsound ogg:mob.endermen.portal hostile @a ~ ~ ~ 2 0.8
    playsound ogg:mob.endermen.portal hostile @a ~ ~ ~ 2 1

# 画面エフェクト
    #title @a[distance=..30] times 5 15 20
    #title @a[distance=..30] title {"text":"\uE010","font":"screen_effect"}

# ボスドロ
    data modify storage api: Argument.ID set value 364
    data modify storage api: Argument.Important set value true
    function api:sacred_treasure/spawn/from_id

# 消滅
    kill @e[type=item,tag=M.RetreatItem,sort=nearest,limit=1]
    kill @s