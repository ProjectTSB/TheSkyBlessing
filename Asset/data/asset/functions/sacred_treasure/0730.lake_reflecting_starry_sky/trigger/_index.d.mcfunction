#> asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/_index.d
# @private

#> tag
# @within function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/main
    #declare score_holder $Interval

#> 湖本体のTag
# @within function
#   asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/3.main
#   asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/rejoin_branch
#   asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/damage
#   asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/loop
#   asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/wave/**
    #declare tag KA.Lake
    #declare tag Target

#> 湖が召喚する波紋のTag
# @within function
#   asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/ripple/**
#   asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/rejoin_branch
    #declare tag KA.Ripple
    #declare tag RippleTarget
    #declare tag SpreadMarker

#> 補正用Tag
# @within function asset:sacred_treasure/0730.lake_reflecting_starry_sky/trigger/lake/buff/**
    #declare tag KA.Buff

#> rejoin_processでコマンドの記述が増えすぎないための共通のTag
    #declare tag KA.RejoinTarget