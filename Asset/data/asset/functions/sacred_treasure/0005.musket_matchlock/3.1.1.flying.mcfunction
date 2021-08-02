#> asset:sacred_treasure/0005.musket_matchlock/3.1.1.flying
# 
# 銃弾の速度を維持する
#
# @within function asset:sacred_treasure/0005.musket_matchlock/3.1.entity_manager

#> private
# @private 
    #declare score_holder $VectorMagnitude

# エンダーパールのmotionセット
    scoreboard players set $VectorMagnitude Lib 950
    execute as @s at @s run function lib:motion/

