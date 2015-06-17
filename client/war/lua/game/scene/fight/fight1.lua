return {
    folder= "image/fight/scene/1/",
    size={width = 1136,height = 640},
    symbol= {
        --只有图片元件才支持scale
        back1= {
            name="back1.jpg",
            x= 0,
            y= 0,
            scale=2,
        },
        back2= {
            name="back2.jpg",
            x= 0,
            y= -84,
            scale=2,
        },
        fore1= {
            name="fore1.png",
            x= 0,
            y= 92
        },
        fore2= {
            name="fore2.png",
            x= 0,
            y= 92
        },
        fore3= {
            name="fore3.png",
            x= 0,
            y= 66
        },
        splitlight={
            type="AnimateSprite",
            name="splitlight.plist",
            texture="splitlight.png",
            pattern="f_s_1_split_%s.png",
            frame=19,
            interval=2,
        },
        firework={
            type="Particle",
            name="fire.plist",
            texture="fire.png"
        },
        leaf={
            type="Particle",
            name="leaf.plist",
            texture="leaf.png"
        },
        fall={
            type="AnimateSprite",
            name="ry.plist",
            texture="ry.png",
            pattern="ry-000%s.png",
            loop=true,
            frame=5,
            interval=3,
        },
--        smoke={
--            type="Particle",
--            name="smoke.plist",
--        },
        boo={
            type="Particle",
            name="boo.plist",
            texture="boo.png",
            emissionRate=400
        },
        lightning={
            type="Particle",
            name="lightning.plist",
            texture="lightning.png"
        }
    },
    normal= {
        {
            layer="BG1",
            symbolName= "back1",
            x= 0,
            y= -74
        },
        {
            layer="BG_E1",
            symbolName="fall",
            x=225,
            y=85,
            action={
                {
                    type="play"
                }
            },
        },
        {
            layer="BG_E1",
            symbolName="boo",
            x=305,
            y=270
        },
        {
            layer="BG_E1",
            symbolName="boo",
            x=615,
            y=220
        },
        {
            layer="BG_E1",
            symbolName="firework",
            x=468,
            y=200
        },
        {
            layer="FL1",
            symbolName= "fore1",
            x=0,
            y=56
        },
    },
    special= {
        {
            layer="BG2",
            symbolName= "back2",
            x= 0,
            y= -8
        },
        {
            layer="FR2",
            symbolName= "fore3",
            x= 684,
            y= 56
        },
        {
            layer="FL2",
            symbolName= "fore2",
            x= 0,
            y= 56
        },
        {
            layer="BG_E2",
            symbolName="leaf",
            x=0,
            y=180
        },
        {
            layer="BG_E2",
            symbolName="lightning",
            x=550,
            y=100,
            scale=2
        }
    },
    change={
        start=210, --切换开始的帧
        stop=430, --结束的帧
        targetScene="special", --结束后切换到什么场景
        {
            layer="BG_E1",
            symbolName="fall",
            x=225,
            y=85,
            action={
                {
                    type="play"
                },
                {
                    start=311,
                    type="remove",
                }
            }
        },
        {
            layer="BG_E1",
            symbolName="boo",
            x=305,
            y=270,
            action={
                {
                    start=311,
                    type="remove",
                }
            }
        },
        {
            layer="BG_E1",
            symbolName="boo",
            x=615,
            y=220,
            action={
                {
                    start=311,
                    type="remove",
                }
            }
        },
        {
            layer="BG_E1",
            symbolName="firework",
            x=468,
            y=200,
            action={
                {
                    start=311,
                    type="remove",
                }
            }
        },
        {
            layer="BG1",
            symbolName="back1",
            x= 0,
            y= -74,
            action={
                {
                    start=304,
                    stop=335,
                    type="shake",
                    strength=4
                },
                {
                    start=311,
                    stop=335,
                    type="fadeout",
                }
            }
        },
        {
            start=311,
            layer= "BG2",
            symbolName="back2",
            x=0,
            y=-8,
            alpha=0,
            add=false,
            action={
                {
                    start=311,
                    stop=335,
                    type="fadein",
                },
                {
                    start=311,
                    stop=416,
                    type="shake",
                    strength=4
                }
            }
        },
        {
            layer="FL1",
            symbolName="fore1",
            x= 0,
            y= 56,
            action={
                {
                    start=210,
                    stop=327,
                    type="shake",
                    strength=7
                },
                {
                    start=311,
                    stop=335,
                    type="fadeout"
                }
            }
        },
        {
            layer="FL1_E",
            symbolName= "splitlight",
            x= 700,
            y= 360, --455
            scale=4,
            action={
                {
                    start=210,
                    type="play"
                },
                {
                    start=210,
                    stop=330,
                    type="shake",
                    strength=7
                },
                {
                    start=304,
                    stop=330,
                    type="fadeout"
                }
            }
        },
        {
            start=304,
            layer="FR2",
            symbolName="fore3",
            x=448,
            y=85,
            alpha=0,
            add=false,
            action={
                {
                    start=304,
                    stop=335,
                    type="fadein"
                },
                {
                    start=304,
                    stop=428,
                    type="shake",
                    strength=7
                },
                {
                    start=304,
                    stop=335,
                    type="move",
                    tox=601,
                    toy=85,
                },
                {
                    start=335,
                    stop=357,
                    type="move",
                    tox=684,
                    toy=56,
                }
            }
        },
        {
            start=304,
            layer="FL2",
            symbolName="fore2",
            x=0,
            y=56,
            alpha=0,
            add=false,
            action={
                {
                    start=304,
                    stop=327,
                    type="fadein"
                },
                {
                    start=304,
                    stop=421,
                    type="shake"
                },
            }
        },
        {
            start=304,
            stop=365,
            layer="BG_E1",
            symbolName="smoke",
            x=200,
            y=200,
            positionVarX=40,
            positionVarY=40,
        },
        {
            start=304,
            stop=365,
            layer="BG_E1",
            symbolName="smoke",
            x=300,
            y=200,
            positionVarX=40,
            positionVarY=40,
        },
        {
            start=304,
            stop=365,
            layer="BG_E1",
            symbolName="smoke",
            x=400,
            y=200,
            positionVarX=40,
            positionVarY=40,
        },
        {
            start=304,
            stop=365,
            layer="BG_E1",
            symbolName="smoke",
            x=500,
            y=200,
            positionVarX=40,
            positionVarY=40,
        },
        {
            start=304,
            stop=365,
            layer="BG_E1",
            symbolName="smoke",
            x=600,
            y=180,
            positionVarX=40,
            positionVarY=40,
        },
        {
            start=304,
            stop=365,
            layer="BG_E1",
            symbolName="smoke",
            x=690,
            y=250,
            positionVarX=40,
            positionVarY=40,
        },
        {
            start=304,
            stop=365,
            layer="BG_E1",
            symbolName="smoke",
            x=780,
            y=320,
            positionVarX=40,
            positionVarY=50,
        },
        {
            start=304,
            stop=365,
            layer="BG_E1",
            symbolName="smoke",
            x=880,
            y=240,
            positionVarX=40,
            positionVarY=50,
        },
        {
            start=304,
            stop=365,
            layer="BG_E1",
            symbolName="smoke",
            x=980,
            y=190,
            positionVarX=40,
            positionVarY=50,
        },
        {
            start=304,
            stop=365,
            layer="FL2_E",
            symbolName="smoke",
            x=100,
            y=650,
            positionVarX=40,
            positionVarY=40,
        },
        {
            start=304,
            stop=365,
            layer="FL2_E",
            symbolName="smoke",
            x=200,
            y=650,
            positionVarX=40,
            positionVarY=40,
        },
        {
            start=304,
            stop=365,
            layer="FL2_E",
            symbolName="smoke",
            x=300,
            y=650,
            positionVarX=40,
            positionVarY=40,
        },
        {
            start=304,
            stop=365,
            layer="FL2_E",
            symbolName="smoke",
            x=400,
            y=650,
            positionVarX=40,
            positionVarY=40,
        },
        {
            start=304,
            stop=365,
            layer="FL2_E",
            symbolName="smoke",
            x=500,
            y=650,
            positionVarX=40,
            positionVarY=40,
        },
        {
            start=304,
            stop=365,
            layer="FL2_E",
            symbolName="smoke",
            x=600,
            y=650,
            positionVarX=40,
            positionVarY=40,
        },
        {
            start=304,
            stop=365,
            layer="FL2_E",
            symbolName="smoke",
            x=700,
            y=600,
            positionVarX=40,
            positionVarY=40,
        },
        {
            start=304,
            stop=365,
            layer="FL2_E",
            symbolName="smoke",
            x=800,
            y=600,
            positionVarX=40,
            positionVarY=40,
        },
        {
            start=304,
            stop=365,
            layer="FL2_E",
            symbolName="smoke",
            x=900,
            y=550,
            positionVarX=40,
            positionVarY=60,
        },
        {
            start=304,
            stop=365,
            layer="FL2_E",
            symbolName="smoke",
            x=1070,
            y=450,
            positionVarX=40,
            positionVarY=60,
        },
        {
            start=304,
            stop=365,
            layer="FL2_E",
            symbolName="smoke",
            x=1170,
            y=600,
            positionVarX=40,
            positionVarY=50,
        },
    }
}