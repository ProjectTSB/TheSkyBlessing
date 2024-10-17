#> lib:score_to_health_wrapper/core/absorb_damage/
# @within function lib:score_to_health_wrapper/proc

#> Private
# @within function
#   lib:score_to_health_wrapper/core/absorb_damage/
#   lib:score_to_health_wrapper/core/absorb_damage/foreach
#declare score_holder $BaseDamage

# EntityStorage 呼び出し
    function oh_my_dat:please

# 計算用に値を移す
    scoreboard players operation $BaseDamage Temporary = @s ScoreToHPFluc
    scoreboard players operation $BaseDamage Temporary *= $-1 Const

# OMD から緩衝体力を Priority の昇順で取得する (OMD -> Absorptions)
    function lib:score_to_health_wrapper/core/absorb_damage/get_absorptions
# ダメージを緩衝体力で軽減する (Absorptions -> NewAbsorptions)
    data modify storage lib: NewAbsorptions set value []
    execute if data storage lib: Absorptions[0] run function lib:score_to_health_wrapper/core/absorb_damage/foreach
# 残った緩衝体力を戻す (NewAbsorptions -> OMD)
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Absorptions set from storage lib: NewAbsorptions

# ダメージを戻す
    scoreboard players operation $BaseDamage Temporary *= $-1 Const
    scoreboard players operation @s ScoreToHPFluc = $BaseDamage Temporary

# リセット
    scoreboard players reset $BaseDamage Temporary
