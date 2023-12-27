#> asset:artifact/0769.shaking_splash/trigger/_index.d
# @private

#> 弾に持たせるTag
# @within function
#   asset:artifact/0769.shaking_splash/trigger/4.shoot
#   asset:artifact/0769.shaking_splash/trigger/rejoin_process
#   asset:artifact/0769.shaking_splash/trigger/bullet/**
    #declare tag LD.Bullet

#> Init Tag
# @within function asset:artifact/0769.shaking_splash/trigger/4.shoot
    #declare tag LD.Init

#> ビームで使うTag
# @within function
#   asset:artifact/0769.shaking_splash/trigger/5.beam
#   asset:artifact/0769.shaking_splash/trigger/beam_recursive
    #declare tag LandingTarget
