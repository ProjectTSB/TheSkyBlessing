#> asset:sacred_treasure/1024.brave_rod/trigger/combo/beam1_shot
#
#
#
# @within function asset:sacred_treasure/1024.brave_rod/trigger/combo/beam1

# 使用者です
    tag @s add SD.Used

# 輪っかを召喚
    execute rotated ~ ~90 run function asset:sacred_treasure/1024.brave_rod/trigger/combo/particle_ring

# ビームを撃つ
    function asset:sacred_treasure/1024.brave_rod/trigger/combo/laser

# 使用者解除
    tag @s remove SD.Used