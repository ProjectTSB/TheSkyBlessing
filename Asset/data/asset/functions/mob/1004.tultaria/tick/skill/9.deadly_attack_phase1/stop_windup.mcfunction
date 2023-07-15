#> asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/stop_windup
#
# 予備動作のモーション停止、ループモーションをスタート
#
# @within function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/1.tick

# モーションを停止
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/deadly_windup/stop

# 必殺技のループモーションを再生
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/deadly_loop/play