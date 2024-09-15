#> lib:score_to_health_wrapper/core/absorb_damage
#
#
#
# @within function lib:score_to_health_wrapper/proc

#> Private
# @private
#declare score_holder $PrevDamage
#declare score_holder $PrevAbsorption

# 計算用に値を移す
    scoreboard players operation $PrevAbsorption Temporary = @s PlayerAbsorption
    scoreboard players operation $PrevDamage Temporary = @s ScoreToHPFluc
    scoreboard players operation $PrevDamage Temporary *= $-1 Const

# 緩衝体力よりもダメージのほうが大きい場合、緩衝体力を全て削除し、その分ダメージを軽減する (ScoreToHPFluc は体力の増減値なので注意)
    execute if score $PrevAbsorption Temporary < $PrevDamage Temporary run scoreboard players operation @s ScoreToHPFluc += $PrevAbsorption Temporary
    execute if score $PrevAbsorption Temporary < $PrevDamage Temporary run scoreboard players set @s PlayerAbsorption 0
# ダメージよりも緩衝体力のほうが大きい場合、ダメージを全て削除し、その分緩衝体力を減少させる
    execute if score $PrevAbsorption Temporary >= $PrevDamage Temporary run scoreboard players operation @s PlayerAbsorption -= $PrevDamage Temporary
    execute if score $PrevAbsorption Temporary >= $PrevDamage Temporary run scoreboard players set @s ScoreToHPFluc 0

# リセット
    scoreboard players reset $PrevDamage Temporary
