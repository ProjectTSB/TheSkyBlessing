#> asset:artifact/0702.bright_lamp/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0702.bright_lamp/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 演出
    #playsound ogg:block.respawn_anchor.charge3 player @a ~ ~ ~ 0.25 2
    execute positioned ~ ~1 ~ run function asset:artifact/0702.bright_lamp/trigger/vfx
    scoreboard players reset $RecursiveLimit Temporary

# 暗視を付与
    effect give @a[distance=..8] night_vision 21 0 true

# 盲目とダークネスを解除
    effect clear @a[distance=..8] blindness
    effect clear @a[distance=..8] darkness