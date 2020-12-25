#> asset:sacred_treasure/0035.malleus_maleficarum/3.1.1.flying 
# 
# エンダーパール着弾地点にいるアーマースタンドを起点として、魔女化処理を行う
#
# @within function
#   asset:sacred_treasure/0035.malleus_maleficarum/3.main
#   asset:sacred_treasure/0035.malleus_maleficarum/3.1.check_hit_manager

#> private
# @private 
#  declare tag MalleusMaleficarumInit
#  declare tag MalleusMaleficarumIndicator
#  declare tag MalleusMaleficarumEntity
#  declare storage data asset:temp

# 軌跡表示用パーティクル
particle soul_fire_flame ~ ~ ~ 0 0 0 0 2 force

# 次tickのmanager実行予約
schedule function asset:sacred_treasure/0035.malleus_maleficarum/3.1.check_hit_manager 1t replace
