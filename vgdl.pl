  BasicGame
    SpriteSet
        floor > Immovable img=oryx/backBiege
        structure > Immovable
        goal  > color=GREEN img=oryx/door2
        avatar > MovingAvatar img=oryx/mage1
        wall > Immovable img=oryx/dirtWall_0 autotiling=True

    InteractionSet
        random wall structure     > stepBack
        avatar wall      > stepBack
        goal   avatar    > killSprite scoreChange=1
        avatar portalentry > teleportToExit

    TerminationSet
        SpriteCounter stype=goal   limit=0 win=True
        SpriteCounter stype=avatar limit=0 win=False

    LevelMapping
        g > floor goal
        w > floor wall
        A > floor avatar
        + > floor
