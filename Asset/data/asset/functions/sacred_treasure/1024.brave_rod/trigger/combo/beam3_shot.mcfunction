#> asset:sacred_treasure/1024.brave_rod/trigger/combo/beam3_shot
#
# ビーム3を実際に連射する部分の処理
#
# @within function asset:sacred_treasure/1024.brave_rod/trigger/combo/beam3_burst

# 演出
    playsound ogg:block.respawn_anchor.deplete1 player @a ~ ~ ~ 1 2


#
    scoreboard players remove @s SD.Burst 1

