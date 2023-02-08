#> asset:sacred_treasure/1024.brave_rod/trigger/combo/beam3_shot
#
# ビーム3を実際に連射する部分の処理
#
# @within function asset:sacred_treasure/1024.brave_rod/trigger/combo/beam3_burst

# 使用者です
    tag @s add SG.Used

# 輪っかを召喚
    execute rotated ~ ~90 run function asset:sacred_treasure/1024.brave_rod/trigger/combo/particle_ring

# ビームを撃つ
    function asset:sacred_treasure/1024.brave_rod/trigger/combo/laser_finish

# 使用者解除
    tag @s remove SG.Used