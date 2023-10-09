#> asset:mob/0317.haruclaire/_index.d
# @private

#> tag
# @within function asset:mob/0317.haruclaire/**
    ## API用
    #declare tag SpreadMarker
    #declare tag Attacker
    
    ## 処理用
    #declare tag 8T.ModelRoot animated_javaモデルにつける処理簡略化用のタグ
    #declare tag 8T.ModelRoot.Target animated_javaモデルにつける処理簡略化用のタグ(紐付け)
    #declare tag 8T.ModelRoot.Death animated_javaモデルにつける処理簡略化用のタグ(死亡処理用)
    #declare tag 8T.Marker.SpawnPoint 召喚中心点の記録
    #declare tag 8T.Weapon.HasSword 剣モード
    #declare tag 8T.Armorstand.Ice 死亡演出用の氷

    ## 処理用(一時)
    #declare tag 8T.Temp.Me 汎用処理に使う一時的なタグ，自身に付与
    #declare tag 8T.Temp.GeneralTarget 汎用処理に使う一時的なタグ，対象に付与
    #declare tag 8T.Temp.NotArmor 非スーパーアーマー状態，この間に攻撃されると怯む
    #declare tag 8T.Temp.Damage 怯み中判別用処理
    #declare tag 8T.Temp.Counter カウンター待機中判別用処理
    #declare tag 8T.Temp.PlayCounterAnimation カウンターアニメーション再生用

    #declare tag 8T.Temp.TargetModel  animated_javaモデルにつける対応付け用
    #declare tag 8T.Temp.PlayRareAnimation レアアニメーション再生用
    #declare tag 8T.Temp.AttackTarget 攻撃対象の決定

    ## スキル処理用
    #declare tag 8T.SkillEv.Rod.Idle.MoveToHome 待機移動モード・初期位置に移動
    #declare tag 8T.SkillEv.Rod.Idle.MoveToSide 待機移動モード・すべる
    #declare tag 8T.SkillEv.Rod.IcePillar.AttackPos つらら攻撃位置
    #declare tag 8T.SkillEv.Sword.Laser.AttackPos 交差レーザー攻撃位置

    ## スキル：杖モード
    #declare tag 8T.Skill.Rod.Start 登場
    #declare tag 8T.Skill.Rod.Idle 待機
    #declare tag 8T.Skill.Rod.Attack 杖殴り
    #declare tag 8T.Skill.Rod.IcePillar つらら
    #declare tag 8T.Skill.Rod.Laser レーザー
    #declare tag 8T.Skill.Rod.IceBullet あられ
    #declare tag 8T.Skill.Rod.Shot 射撃
    #declare tag 8T.Skill.Rod.MoveShot.Right 移動射撃
    #declare tag 8T.Skill.Rod.MoveShot.Left 移動射撃
    #declare tag 8T.Skill.Rod.Teleport テレポート
    #declare tag 8T.Skill.Rod.ToSword 武器持ち替え

    ## スキル：剣モード
    #declare tag 8T.Skill.Sword.Idle 待機
    #declare tag 8T.Skill.Sword.Damage 怯み
    #declare tag 8T.Skill.Sword.Slash 斬撃コンボ
    #declare tag 8T.Skill.Sword.Warp ワープ斬りコンボ
    #declare tag 8T.Skill.Sword.Throw 武器投げコンボ
    #declare tag 8T.Skill.Sword.Charge 溜め斬りコンボ
    #declare tag 8T.Skill.Sword.Laser レーザー斬りコンボ
    #declare tag 8T.Skill.Sword.IceRain ひさめコンボ

    ## 残像Mob処理用
    #declare tag 8Z.MarkerRoot
    #declare tag 8Z.Upper
    #declare tag 8Z.Lower
    #declare tag 8Z.WarpStart
    #declare tag 8Z.WarpSlash
    #declare tag 8Z.Laser0
    #declare tag 8Z.Laser1
    #declare tag 8Z.Laser2
    #declare tag 8Z.Charge
    #declare tag 8Z.ChargeSlash0
    #declare tag 8Z.ChargeSlash1
    #declare tag 8Z.RainStart
    #declare tag 8Z.RainShot0
    #declare tag 8Z.RainShot1
    #declare tag 8Z.RainLaser
