#> player_manager:cache_max_health
#
# 最大体力を OhMyDat にキャッシュする
# ScoreToHealth が干渉中 (Modified / AntiGlitch.Protected タグあり) はキャッシュ更新を skip し、
# 直近の正常値を温存することで、 干渉中の attribute 不整合を api:modifier/max_health/get の利用者から隠す
#
# @within function core:tick/player/pre

# PlayerStorage 呼び出し
    function oh_my_dat:please
# キャッシュ更新
    execute if entity @s[tag=!ScoreToHealth.Modified, tag=!ScoreToHealth.AntiGlitch.Protected] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.MaxHealth double 0.01 run attribute @s max_health get 100
