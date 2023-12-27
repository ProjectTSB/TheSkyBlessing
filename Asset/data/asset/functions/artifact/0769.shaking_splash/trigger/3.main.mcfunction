#> asset:artifact/0769.shaking_splash/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0769.shaking_splash/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# スニークしていないときは普通の弾を発射
    execute unless predicate lib:is_sneaking run function asset:artifact/0769.shaking_splash/trigger/4.shoot

# スニークしているときは再帰ビームを発射
    execute if predicate lib:is_sneaking run function asset:artifact/0769.shaking_splash/trigger/5.beam

# ラスト1回でgive
    execute unless data storage asset:context Items.mainhand.id run data modify storage api: Argument.ID set value 770
    execute unless data storage asset:context Items.mainhand.id run function api:artifact/give/from_id