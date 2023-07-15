#> asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/windup
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/9.deadly_attack_phase1/1.tick

# 待機モーション停止
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/neutral/stop

# 必殺技の予備動作をスタート
    execute as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/deadly_windup/play
