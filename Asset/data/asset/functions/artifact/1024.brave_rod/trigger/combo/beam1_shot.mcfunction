#> asset:artifact/1024.brave_rod/trigger/combo/beam1_shot
#
#
#
# @within function asset:artifact/1024.brave_rod/trigger/combo/beam1

# 使用者です
    tag @s add SG.Used

# 輪っかを召喚
    execute rotated ~ ~90 run function asset:artifact/1024.brave_rod/trigger/combo/particle_ring

# ビームを撃つ
    function asset:artifact/1024.brave_rod/trigger/combo/laser

# 使用者解除
    tag @s remove SG.Used