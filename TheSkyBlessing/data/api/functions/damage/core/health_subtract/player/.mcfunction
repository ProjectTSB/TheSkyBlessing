#> api:damage/core/health_subtract/player/
#
#
#
# @within function api:damage/core/health_subtract/

# 難易度補正を掛ける
    execute if data storage api: Argument{BypassDifficulty:false} run function api:damage/core/health_subtract/player/difficulty_modifier
# 引数として代入
    execute store result storage api: Argument.Fluctuation double -0.01 run scoreboard players get $Damage Temporary
# 統計送りにする
    execute at @s if entity @e[type=#lib:living,type=!player,tag=Enemy.Boss,distance=..100,limit=1] run function metric:angel/damage/
# onAttackのトリガー
    function api:damage/core/trigger_events/player/attack_and_damage/
# 体力の減少を反映させる
    function lib:score_to_health_wrapper/fluctuation
