#> lib:score_to_health_wrapper/proc/calc
# @within function lib:score_to_health_wrapper/proc/

scoreboard players operation @s ScoreToHealth >< @s ScoreToHPFluc
scoreboard players operation @s ScoreToHealth += @s ScoreToHPFluc
scoreboard players operation @s ScoreToHealth > $0 Const
scoreboard players operation @s ScoreToHealth < $MaxHealth Temporary
scoreboard players operation @s ScoreToHPFluc -= @s ScoreToHealth
scoreboard players operation @s ScoreToHPFluc *= $-1 Const
