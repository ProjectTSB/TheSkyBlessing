#> asset:mob/0331.blazing_inferno/tick/intro/posing
#
# ポーズを取る
#
# @within function asset:mob/0331.blazing_inferno/tick/intro/

# 待機モーションを停止、イントロの動作を再生
    #function animated_java:blazing_inferno/animations/neurtal/stop
    function animated_java:blazing_inferno/animations/intro/play

# サウンド
    playsound minecraft:entity.iron_golem.attack hostile @a ~ ~ ~ 2 1
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 2 0.5