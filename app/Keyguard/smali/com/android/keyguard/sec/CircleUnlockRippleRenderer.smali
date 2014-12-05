.class public Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;
.super Ljava/lang/Object;
.source "CircleUnlockRippleRenderer.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$SoundPoolThread;
    }
.end annotation


# instance fields
.field private CurrentState:I

.field private final DBG:Z

.field private final GRAVITY_EFFECT_LEFT:I

.field private final GRAVITY_EFFECT_RIGHT:I

.field private HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

.field private HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

.field private HOVER_EXPONENT_RATIO_MAX:F

.field private HOVER_EXPONENT_RATIO_MIN:F

.field private HOVER_FRESENL_MAX:F

.field private HOVER_FRESENL_MIN:F

.field private HOVER_INTENSITY_MAX:F

.field private HOVER_SPECULAR_RATIO_MAX:F

.field private HOVER_SPECULAR_RATIO_MIN:F

.field private MESH_SIZE_HEIGHT:I

.field private MESH_SIZE_WIDTH:I

.field MarkcuasticsTMix:F

.field private NUM_DETAILS_HEIGHT:I

.field private NUM_DETAILS_WIDTH:I

.field private final REDUCTION_RATE_NORMAL:F

.field private final REDUCTION_RATE_RAIN:F

.field private final REDUCTION_RATE_WAVE:F

.field private final REDUCTION_RATE_WAVE2:F

.field RIPPLE_DRAG_THRESHOLD:D

.field private final RIPPLE_WAIT_TIME:J

.field ReferencePoint:F

.field final SOUND_ID_DOWN:I

.field final SOUND_ID_GRAVITY:I

.field final SOUND_ID_UP:I

.field private SURFACE_DETAILS_HEIGHT:I

.field private SURFACE_DETAILS_WIDTH:I

.field private final TAG:Ljava/lang/String;

.field private final TOUCH_EXPONENT:F

.field private final TOUCH_FRESENL:F

.field private final TOUCH_SPECULAR:F

.field TexMoveU:F

.field TiltStartU:F

.field private VCOUNT:I

.field XRatioAdjustLandscape:F

.field XRatioAdjustPortrait:F

.field XRatioForLandscape:F

.field XRatioForPortrait:F

.field YRatioForLandscape:F

.field YRatioForPortrait:F

.field alphaRatio1:F

.field alphaRatio2:F

.field private animationSpeed:F

.field bGravityDirection:Z

.field bitmapBG:Landroid/graphics/Bitmap;

.field bitmapCaustics:Landroid/graphics/Bitmap;

.field bitmapCaustics2:Landroid/graphics/Bitmap;

.field bitmapGravity:Landroid/graphics/Bitmap;

.field bitmapWater:Landroid/graphics/Bitmap;

.field private calledIsScreenTurnedOn:Z

.field causticsTimeMix:F

.field causticsTimeRatio:F

.field causticsTimeRatio2:F

.field private defaultX:F

.field private defaultY:F

.field private diffPressTime:J

.field private downX:F

.field private downY:F

.field private drawCount:I

.field fWaterBrightness:F

.field glX:F

.field glY:F

.field private gpuHeights:[F

.field private hasSystemNavBar:Z

.field private heights:[F

.field private heightsSub1:[F

.field private heightsSub2:[F

.field private hoverPlus_Frenel:F

.field private hoverPlus_Specular:F

.field private hoverPlus_exponent:F

.field private indices:[S

.field private inkColorFromSetting:[[F

.field intensityForLandscape:F

.field intensityForPortrait:F

.field intensityForRipple:F

.field private isFirstTouched:Z

.field private isInkEnable:Z

.field private isMakedASpenToucdUp:Z

.field private isSystemSoundChecked:Z

.field isTouched:Z

.field private isUseLCD:Z

.field private is_JBP_Upgrade:Z

.field keyguardManager:Landroid/app/KeyguardManager;

.field leftDirectionTilt:F

.field mBgChangeCheckArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapRatio:F

.field private mBottomWaveReductionRate:F

.field private mBottomWaveVelocity:F

.field private mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mDefaultRunnable:Ljava/lang/Runnable;

.field private mEnableArcMotion:Z

.field private mExponentRatio:F

.field private mFresnelRatio:F

.field private mGravityHeightWeight:F

.field private mHoverEnabled:Z

.field private mHoverIntensity:F

.field private mInkEffectColor:I

.field private mLandscape:Z

.field private mLightHeight:F

.field private mLongPressRunnable:Ljava/lang/Runnable;

.field mParent:Landroid/view/View;

.field private mPreviousRippleTime:J

.field private mRDownId:I

.field private mRUpId:I

.field private mReductionRate:F

.field private mReductionRateSub:F

.field mRunDirectionAni:Z

.field private final mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSelectEffect:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPool_Gravity:Landroid/media/SoundPool;

.field private mSpecularRatio:F

.field private mSubWaveTime:J

.field private mTranslateX:F

.field private mTranslateY:F

.field private mTranslateZ:F

.field private mWallpaperPath:Ljava/lang/String;

.field private mWaveEnable:Z

.field private mWaveVelocity:F

.field private max:I

.field private mouseInputCount:I

.field private mouseX:F

.field private mouseY:F

.field private moveCount:I

.field private prevPressTime:J

.field private prevWidth_sufaceChanged:I

.field private proj:[F

.field reflectionRatio:F

.field refractiveIndex:F

.field rightDirectionTilt:F

.field private rippleDistance:I

.field rippleDragThreshold:D

.field private soundNum:I

.field private soundTime:I

.field private sounds:[I

.field private sounds_gravity:[I

.field spanXForLandscape:I

.field spanXForPortrait:I

.field spanYForLandscape:I

.field spanYForPortrait:I

.field textures0:[I

.field textures1:[I

.field tmx:F

.field tmy:F

.field translateXForLandscape:F

.field translateXForPortrait:F

.field translateYForLandscape:F

.field translateYForPortrait:F

.field translateZForLandscape:F

.field translateZForPortrait:F

.field unitCellHeight:F

.field unitCellWidth:F

.field private velocity:[F

.field private velocitySub1:[F

.field private velocitySub2:[F

.field private vertices:[F

.field private view:[F

.field windowHeight:I

.field windowWidth:I

.field private world:[F

.field private wv:[F

.field private wvp:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/high16 v9, 0x3f800000

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 105
    iput-boolean v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->DBG:Z

    .line 106
    const-string v2, "CircleUnlockRippleRenderer"

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TAG:Ljava/lang/String;

    .line 109
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 110
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 112
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 113
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 115
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 116
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 118
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    .line 119
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 121
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->unitCellWidth:F

    .line 122
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->unitCellHeight:F

    .line 124
    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    .line 125
    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    .line 127
    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    .line 128
    new-array v2, v6, [F

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    .line 130
    new-array v2, v6, [F

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    .line 131
    new-array v2, v6, [F

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    .line 134
    new-array v2, v6, [F

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    .line 135
    new-array v2, v6, [F

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    .line 136
    new-array v2, v6, [S

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    .line 138
    new-array v2, v6, [I

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->textures0:[I

    .line 139
    new-array v2, v6, [I

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->textures1:[I

    .line 142
    const/16 v2, 0x10

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->view:[F

    .line 143
    const/16 v2, 0x10

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->proj:[F

    .line 144
    const/16 v2, 0x10

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    .line 145
    const/16 v2, 0x10

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    .line 146
    const/16 v2, 0x10

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    .line 148
    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    .line 150
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 151
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 153
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    .line 154
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    .line 157
    const/high16 v2, 0x3f000000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mWaveVelocity:F

    .line 158
    iput-boolean v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mWaveEnable:Z

    .line 161
    const v2, 0x3f70a3d7

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->REDUCTION_RATE_NORMAL:F

    .line 162
    const v2, 0x3f75c28f

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->REDUCTION_RATE_RAIN:F

    .line 163
    const v2, 0x3f70a3d7

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->REDUCTION_RATE_WAVE:F

    .line 164
    iput v9, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->REDUCTION_RATE_WAVE2:F

    .line 167
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBitmapRatio:F

    .line 170
    const v2, 0x3dcccccd

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TOUCH_FRESENL:F

    .line 171
    const/high16 v2, 0x3f000000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TOUCH_SPECULAR:F

    .line 172
    const/high16 v2, 0x41a00000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TOUCH_EXPONENT:F

    .line 174
    const v2, 0x3dcccccd

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    .line 175
    const/high16 v2, 0x3f000000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    .line 176
    const/high16 v2, 0x41a00000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    .line 179
    const v2, 0x3dcccccd

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_FRESENL_MIN:F

    .line 180
    const/high16 v2, 0x3f000000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_SPECULAR_RATIO_MIN:F

    .line 181
    const/high16 v2, 0x41a00000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_EXPONENT_RATIO_MIN:F

    .line 183
    iput v9, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_FRESENL_MAX:F

    .line 184
    const/high16 v2, 0x41200000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_SPECULAR_RATIO_MAX:F

    .line 185
    const/high16 v2, 0x41a00000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_EXPONENT_RATIO_MAX:F

    .line 186
    const v2, 0x3ccccccd

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_INTENSITY_MAX:F

    .line 187
    const v2, 0x3c23d70a

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->hoverPlus_Frenel:F

    .line 188
    const v2, 0x3dcccccd

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->hoverPlus_Specular:F

    .line 189
    const v2, 0x3dcccccd

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->hoverPlus_exponent:F

    .line 190
    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_INTENSITY_MAX:F

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mHoverIntensity:F

    .line 191
    iput-boolean v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mHoverEnabled:Z

    .line 192
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mPreviousRippleTime:J

    .line 193
    const-wide/16 v4, 0x640

    iput-wide v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->RIPPLE_WAIT_TIME:J

    .line 196
    iput-boolean v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    .line 199
    const v2, 0x3f70a3d7

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mReductionRate:F

    .line 200
    const v2, 0x3f7d70a4

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mReductionRateSub:F

    .line 201
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSubWaveTime:J

    .line 204
    const/high16 v2, 0x3fc00000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLightHeight:F

    .line 206
    const v2, 0x3f6e147b

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    .line 207
    const v2, 0x3e051eb8

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    .line 208
    iput v9, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    .line 209
    iput v9, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    .line 214
    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    .line 215
    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 217
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->tmx:F

    .line 218
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->tmy:F

    .line 220
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    .line 221
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    .line 224
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    .line 225
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    .line 227
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeMix:F

    .line 228
    const v2, 0x3dcccccd

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MarkcuasticsTMix:F

    .line 229
    const/high16 v2, 0x42200000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ReferencePoint:F

    .line 230
    const/high16 v2, 0x3f000000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TexMoveU:F

    .line 231
    iput-boolean v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bGravityDirection:Z

    .line 232
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    .line 233
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->CurrentState:I

    .line 234
    iput v9, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    .line 243
    const/high16 v2, 0x3f000000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 244
    iput v9, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 248
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 249
    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 252
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 253
    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 256
    const/high16 v2, -0x3dd00000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 257
    const/high16 v2, -0x3e480000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 260
    iput v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 261
    const/16 v2, 0x10

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 262
    const/16 v2, 0x10

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 263
    iput v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 266
    const/high16 v2, 0x42340000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 267
    const/high16 v2, 0x41c80000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 268
    const/high16 v2, 0x41c80000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 269
    const/high16 v2, 0x42380000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 270
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 271
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 276
    iput v9, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    .line 277
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    .line 278
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    .line 281
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->downX:F

    .line 282
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->downY:F

    .line 283
    const-wide v4, 0x4062c00000000000L

    iput-wide v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 284
    iget-wide v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    iput-wide v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rippleDragThreshold:D

    .line 285
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 286
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 289
    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 290
    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool_Gravity:Landroid/media/SoundPool;

    .line 291
    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    .line 292
    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds_gravity:[I

    .line 293
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    .line 294
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->prevPressTime:J

    .line 295
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->soundNum:I

    .line 296
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->soundTime:I

    .line 297
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SOUND_ID_DOWN:I

    .line 298
    iput v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SOUND_ID_UP:I

    .line 299
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SOUND_ID_GRAVITY:I

    .line 300
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRDownId:I

    .line 301
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRUpId:I

    .line 302
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    .line 303
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->moveCount:I

    .line 304
    iput-boolean v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    .line 305
    iput-boolean v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z

    .line 309
    iput-boolean v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isFirstTouched:Z

    .line 310
    iput-boolean v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->calledIsScreenTurnedOn:Z

    .line 313
    iput-boolean v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isMakedASpenToucdUp:Z

    .line 315
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->defaultX:F

    .line 316
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->defaultY:F

    .line 330
    iput-boolean v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->is_JBP_Upgrade:Z

    .line 331
    iput-boolean v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isInkEnable:Z

    .line 332
    iput-boolean v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isUseLCD:Z

    move-object v2, v3

    .line 337
    check-cast v2, [[F

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    .line 338
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    .line 339
    iput-boolean v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 344
    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    .line 349
    const/16 v2, 0x2f0

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

    .line 350
    const/16 v2, 0x2d0

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

    .line 357
    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravity:Landroid/graphics/Bitmap;

    .line 358
    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapCaustics:Landroid/graphics/Bitmap;

    .line 359
    iput-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapCaustics2:Landroid/graphics/Bitmap;

    .line 361
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->GRAVITY_EFFECT_LEFT:I

    .line 362
    iput v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->GRAVITY_EFFECT_RIGHT:I

    .line 364
    iput-boolean v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mEnableArcMotion:Z

    .line 369
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    .line 375
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    .line 376
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    .line 377
    const v2, 0x3d8f5c29

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TiltStartU:F

    .line 378
    iput-boolean v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    .line 380
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateX:F

    .line 381
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateY:F

    .line 382
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateZ:F

    .line 384
    const v2, 0x3e99999a

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveVelocity:F

    .line 385
    const/high16 v2, 0x40400000

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mGravityHeightWeight:F

    .line 387
    const v2, 0x3f70a3d7

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveReductionRate:F

    .line 390
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->prevWidth_sufaceChanged:I

    .line 392
    new-instance v2, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$1;-><init>(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 409
    const-string v2, "CircleUnlockRippleRenderer"

    const-string v3, "CircleUnlockRippleRenderer Constructor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iput-boolean v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z

    .line 421
    iput-object p1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    .line 423
    iput-object p2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    .line 425
    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->keyguardManager:Landroid/app/KeyguardManager;

    .line 426
    new-instance v2, Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 432
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isRippleInkEffectEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isInkEnable:Z

    .line 433
    iput-boolean v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->is_JBP_Upgrade:Z

    .line 434
    iput-boolean v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isUseLCD:Z

    .line 436
    const-string v2, "CircleUnlockRippleRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is_JBP_Upgrade = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->is_JBP_Upgrade:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const-string v2, "CircleUnlockRippleRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInkEnable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isInkEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-string v2, "CircleUnlockRippleRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUseLCD = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isUseLCD:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-boolean v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isUseLCD:Z

    if-eqz v2, :cond_2c4

    .line 442
    sget-object v2, Lcom/android/keyguard/sec/inkeffect/Def;->inkColorFromSettingForLCD:[[F

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    .line 449
    :goto_281
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 450
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 451
    .local v1, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 452
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    .line 453
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    .line 454
    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setModeleConfiguration()V

    .line 456
    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->initWaters()V

    .line 458
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    .line 460
    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setRippleVersion()V

    .line 461
    invoke-direct {p0, v8}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    .line 463
    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    const-string v3, "scontext"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextManager;

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 464
    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setSound_gravity()V

    .line 465
    return-void

    .line 446
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v1    # "mWindowManager":Landroid/view/WindowManager;
    :cond_2c4
    sget-object v2, Lcom/android/keyguard/sec/inkeffect/Def;->inkColorFromSettingForLED:[[F

    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    goto :goto_281
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;FFFZ)V
    .registers 5
    .param p0, "x0"    # Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ripple(FFFZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->defaultY:F

    return v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setFalseDefaultEffectFlag()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->soundNum:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->soundTime:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->defaultX:F

    return v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    .prologue
    .line 100
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    return v0
.end method

.method private checkSound()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1636
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1641
    :try_start_8
    const-string v2, "lockscreen_sounds_enabled"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_d} :catch_13

    move-result v0

    .line 1649
    :goto_e
    if-ne v0, v3, :cond_19

    .line 1650
    iput-boolean v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    .line 1654
    :goto_12
    return-void

    .line 1643
    :catch_13
    move-exception v0

    .line 1645
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v1

    goto :goto_e

    .line 1652
    :cond_19
    iput-boolean v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    goto :goto_12
.end method

.method private initWaters()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1375
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "initWaters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    .line 1378
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x6

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    .line 1380
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    .line 1381
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    .line 1382
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    .line 1383
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    .line 1384
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    .line 1385
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    .line 1387
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    .line 1389
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iget v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    invoke-static/range {v0 .. v6}, Lcom/android/keyguard/sec/JniWaterRippleRender;->initWaters([F[SIIIII)V

    .line 1394
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1395
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1396
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1397
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1398
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1399
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1400
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1401
    return-void
.end method

.method private loadBitmapIfBitmapNull()V
    .registers 3

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_4c

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravity:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapCaustics:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4c

    .line 1738
    :cond_16
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-nez v0, :cond_21

    .line 1740
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "bitmapWater == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    :cond_21
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2c

    .line 1745
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "bitmapBG == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    :cond_2c
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_48

    .line 1749
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravity:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3d

    .line 1750
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "bitmapGravity == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    :cond_3d
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapCaustics:Landroid/graphics/Bitmap;

    if-nez v0, :cond_48

    .line 1754
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "bitmapCaustics == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    :cond_48
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    .line 1760
    :cond_4c
    return-void
.end method

.method private move()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    const/4 v8, 0x1

    .line 1408
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    if-nez v0, :cond_26

    .line 1417
    :cond_1e
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "initWaters don\'t called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    :cond_25
    return-void

    .line 1425
    :cond_26
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    if-eqz v0, :cond_15e

    .line 1426
    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 1427
    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 1428
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v4, v0, v2

    .line 1429
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int v5, v0, v3

    .line 1440
    :goto_36
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_20d

    .line 1442
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    iget v9, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveReductionRate:F

    iget v10, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveVelocity:F

    invoke-static/range {v0 .. v10}, Lcom/android/keyguard/sec/JniWaterRippleRender;->move([F[FIIIIIIZFF)I

    move-result v11

    .line 1446
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    iget v9, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveReductionRate:F

    iget v10, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveVelocity:F

    const v12, 0x3f333333

    mul-float/2addr v10, v12

    invoke-static/range {v0 .. v10}, Lcom/android/keyguard/sec/JniWaterRippleRender;->move([F[FIIIIIIZFF)I

    move-result v0

    move v12, v11

    move v11, v0

    .line 1452
    :goto_62
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    iget v9, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mReductionRate:F

    const/high16 v10, 0x3f000000

    invoke-static/range {v0 .. v10}, Lcom/android/keyguard/sec/JniWaterRippleRender;->move([F[FIIIIIIZFF)I

    move-result v0

    if-eqz v0, :cond_90

    if-eqz v12, :cond_90

    if-eqz v11, :cond_90

    .line 1456
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_90

    .line 1458
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v0, v1, :cond_89

    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_16c

    .line 1460
    :cond_89
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    if-nez v0, :cond_90

    .line 1462
    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setRenderModeDirty()V

    :cond_90
    :goto_90
    move v0, v13

    .line 1475
    :goto_91
    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    if-ge v0, v1, :cond_25

    move v1, v13

    .line 1476
    :goto_96
    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    if-ge v1, v2, :cond_209

    .line 1477
    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x3

    .line 1478
    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v4, v2, 0x0

    iget-object v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    add-int/lit8 v6, v1, 0x2

    iget v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x2

    aget v5, v5, v6

    aput v5, v3, v4

    .line 1480
    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    add-int/lit8 v6, v1, 0x2

    iget v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    .line 1482
    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v4, v2, 0x2

    iget-object v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    add-int/lit8 v6, v1, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x2

    aget v5, v5, v6

    aput v5, v3, v4

    .line 1485
    sget-object v3, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v4, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v3, v4, :cond_185

    .line 1486
    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v4, v2, 0x0

    aget v5, v3, v4

    iget-object v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    add-int/lit8 v7, v1, 0x2

    iget v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 1488
    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v4, v2, 0x1

    aget v5, v3, v4

    iget-object v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    add-int/lit8 v7, v1, 0x2

    iget v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 1490
    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v4, v2, 0x2

    aget v5, v3, v4

    iget-object v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    add-int/lit8 v7, v1, 0x1

    iget v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 1493
    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v4, v2, 0x0

    aget v5, v3, v4

    iget-object v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    add-int/lit8 v7, v1, 0x2

    iget v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 1495
    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v4, v2, 0x1

    aget v5, v3, v4

    iget-object v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    add-int/lit8 v7, v1, 0x2

    iget v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 1497
    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v2, v2, 0x2

    aget v4, v3, v2

    iget-object v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    add-int/lit8 v6, v1, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x2

    aget v5, v5, v6

    add-float/2addr v4, v5

    aput v4, v3, v2

    .line 1476
    :cond_15a
    :goto_15a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_96

    .line 1431
    :cond_15e
    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 1432
    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 1433
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v4, v0, v2

    .line 1434
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int v5, v0, v3

    goto/16 :goto_36

    .line 1464
    :cond_16c
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_180

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_180

    .line 1466
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    if-nez v0, :cond_90

    .line 1467
    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setRenderModeDirty()V

    goto/16 :goto_90

    .line 1470
    :cond_180
    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setRenderModeDirty()V

    goto/16 :goto_90

    .line 1501
    :cond_185
    add-int/lit8 v3, v0, -0x7

    if-lez v3, :cond_15a

    .line 1502
    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v4, v2, 0x0

    aget v5, v3, v4

    iget-object v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    add-int/lit8 v7, v1, 0x2

    iget v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, -0x6

    aget v6, v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 1504
    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v4, v2, 0x1

    aget v5, v3, v4

    iget-object v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    add-int/lit8 v7, v1, 0x2

    iget v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, -0x7

    aget v6, v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 1506
    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v4, v2, 0x2

    aget v5, v3, v4

    iget-object v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    add-int/lit8 v7, v1, 0x1

    iget v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, -0x6

    aget v6, v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 1508
    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v4, v2, 0x0

    aget v5, v3, v4

    iget-object v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    add-int/lit8 v7, v1, 0x2

    iget v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, -0x6

    aget v6, v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 1510
    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v4, v2, 0x1

    aget v5, v3, v4

    iget-object v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    add-int/lit8 v7, v1, 0x2

    iget v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, -0x7

    aget v6, v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 1512
    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v2, v2, 0x2

    aget v4, v3, v2

    iget-object v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    add-int/lit8 v6, v1, 0x1

    iget v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v0

    add-int/lit8 v6, v6, -0x6

    aget v5, v5, v6

    add-float/2addr v4, v5

    aput v4, v3, v2

    goto/16 :goto_15a

    .line 1475
    :cond_209
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_91

    :cond_20d
    move v11, v8

    move v12, v8

    goto/16 :goto_62
.end method

.method private perspectiveM([FFFFF)V
    .registers 13

    .prologue
    const/4 v6, 0x0

    .line 1552
    const-wide/high16 v0, 0x3fe0000000000000L

    const-wide v2, 0x400921fb54442d18L

    float-to-double v4, p2

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1553
    sub-float v1, p4, p5

    .line 1554
    const/4 v2, 0x0

    div-float v3, v0, p3

    aput v3, p1, v2

    .line 1555
    const/4 v2, 0x1

    aput v6, p1, v2

    .line 1556
    const/4 v2, 0x2

    aput v6, p1, v2

    .line 1557
    const/4 v2, 0x3

    aput v6, p1, v2

    .line 1558
    const/4 v2, 0x4

    aput v6, p1, v2

    .line 1559
    const/4 v2, 0x5

    aput v0, p1, v2

    .line 1560
    const/4 v0, 0x6

    aput v6, p1, v0

    .line 1561
    const/4 v0, 0x7

    aput v6, p1, v0

    .line 1562
    const/16 v0, 0x8

    aput v6, p1, v0

    .line 1563
    const/16 v0, 0x9

    aput v6, p1, v0

    .line 1564
    const/16 v0, 0xa

    div-float v2, p5, v1

    aput v2, p1, v0

    .line 1565
    const/16 v0, 0xb

    const/high16 v2, -0x40800000

    aput v2, p1, v0

    .line 1566
    const/16 v0, 0xc

    aput v6, p1, v0

    .line 1567
    const/16 v0, 0xd

    aput v6, p1, v0

    .line 1568
    const/16 v0, 0xe

    mul-float v2, p4, p5

    div-float v1, v2, v1

    aput v1, p1, v0

    .line 1569
    const/16 v0, 0xf

    aput v6, p1, v0

    .line 1570
    return-void
.end method

.method private playDragSound(I)V
    .registers 11
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000

    .line 1287
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_22

    .line 1288
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v8

    .line 1289
    .local v8, "streanID":I
    add-int/lit8 v8, v8, -0x1

    .line 1290
    new-instance v7, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$SoundPoolThread;

    invoke-direct {v7, p0, v8}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$SoundPoolThread;-><init>(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;I)V

    .line 1291
    .local v7, "soundpoolThread":Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$SoundPoolThread;
    invoke-virtual {v7}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$SoundPoolThread;->run()V

    .line 1293
    .end local v7    # "soundpoolThread":Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$SoundPoolThread;
    .end local v8    # "streanID":I
    :cond_22
    return-void
.end method

.method private playSound(I)V
    .registers 9
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000

    .line 1280
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_17

    .line 1281
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1283
    :cond_17
    return-void
.end method

.method private playSound_gravity(I)V
    .registers 9
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000

    .line 1296
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool_Gravity:Landroid/media/SoundPool;

    if-eqz v0, :cond_17

    .line 1297
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool_Gravity:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds_gravity:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1299
    :cond_17
    return-void
.end method

.method private removeDefaultRunnable()V
    .registers 3

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_15

    .line 2098
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "mDefaultRunnable isn\'t null, mParent.removeCallbacks(mDefaultRunnable)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    .line 2103
    :cond_15
    return-void
.end method

.method private ripple(FFFZ)V
    .registers 13

    .prologue
    .line 1536
    if-eqz p4, :cond_8

    .line 1537
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mPreviousRippleTime:J

    .line 1539
    :cond_8
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ripple(), mx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", my = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", intensity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 1542
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/android/keyguard/sec/JniWaterRippleRender;->ripple([FIIIIFFF)V

    .line 1543
    return-void
.end method

.method private setBackground(Z)V
    .registers 7

    .prologue
    .line 1792
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "setBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    :try_start_7
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper_path"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    .line 1798
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    const-string v1, "com.sec.android.slidingGallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1799
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getScaledBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1800
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V

    .line 1801
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->transferBitmapToJni(Z)V

    .line 1898
    :goto_30
    return-void

    .line 1806
    :cond_31
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->showMultiWallpaper()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1807
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/MultiSimUtils;->getCurrentWallpaper(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    .line 1808
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiSim Device wallpaperPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    :cond_5f
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    if-nez v0, :cond_67

    .line 1812
    const-string v0, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    .line 1816
    :cond_67
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1821
    new-instance v2, Ljava/io/File;

    const-string v1, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1822
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_108

    .line 1824
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1825
    const-string v0, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    .line 1862
    :goto_84
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1864
    if-eqz v0, :cond_9d

    if-eqz v0, :cond_bc

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-nez v2, :cond_bc

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-nez v2, :cond_bc

    .line 1866
    :cond_9d
    if-nez v0, :cond_179

    .line 1868
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "pBitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    :goto_a6
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 1876
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1879
    :cond_bc
    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V

    .line 1881
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1882
    if-eqz p1, :cond_103

    .line 1883
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201be

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setWaterTexture(Landroid/graphics/Bitmap;)V

    .line 1884
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_103

    .line 1885
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f020000

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003b

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02003c

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setGravityTexture(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_103} :catch_115

    .line 1897
    :cond_103
    :goto_103
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->transferBitmapToJni(Z)V

    goto/16 :goto_30

    .line 1828
    :cond_108
    :try_start_108
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_11a

    .line 1829
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_113} :catch_115

    goto/16 :goto_84

    .line 1891
    :catch_115
    move-exception v0

    .line 1893
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_103

    .line 1833
    :cond_11a
    :try_start_11a
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/wallpaper/lockscreen_default_wallpaper.jpg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1834
    new-instance v2, Ljava/io/File;

    const-string v1, "/system/csc_contents/lockscreen_default_wallpaper.jpg"

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1835
    new-instance v3, Ljava/io/File;

    const-string v1, "/system/wallpaper/lockscreen_default_wallpaper.png"

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1836
    new-instance v4, Ljava/io/File;

    const-string v1, "/system/csc_contents/lockscreen_default_wallpaper.png"

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1838
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_143

    .line 1840
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto/16 :goto_84

    .line 1842
    :cond_143
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_150

    .line 1844
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto/16 :goto_84

    .line 1846
    :cond_150
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_15d

    .line 1848
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto/16 :goto_84

    .line 1850
    :cond_15d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_16a

    .line 1852
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto/16 :goto_84

    .line 1856
    :cond_16a
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    goto/16 :goto_84

    .line 1872
    :cond_179
    const-string v1, "CircleUnlockRippleRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pBitmap.width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pBitmap.height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_1a3} :catch_115

    goto/16 :goto_a6
.end method

.method private setFalseDefaultEffectFlag()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 2108
    iput-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isFirstTouched:Z

    .line 2109
    iput-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->calledIsScreenTurnedOn:Z

    .line 2110
    return-void
.end method

.method private setHoverEnable(Z)V
    .registers 4

    .prologue
    .line 1212
    if-eqz p1, :cond_19

    .line 1214
    const-string v0, "Fresnel"

    const-string v1, "setHoverEnable is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_FRESENL_MIN:F

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    .line 1216
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_SPECULAR_RATIO_MIN:F

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    .line 1217
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_EXPONENT_RATIO_MIN:F

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    .line 1218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mHoverEnabled:Z

    .line 1228
    :goto_18
    return-void

    .line 1222
    :cond_19
    const-string v0, "Fresnel"

    const-string v1, "setHoverEnable is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    const v0, 0x3dcccccd

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    .line 1224
    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    .line 1225
    const/high16 v0, 0x41a00000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    .line 1226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mHoverEnabled:Z

    goto :goto_18
.end method

.method private setModeleConfiguration()V
    .registers 8

    .prologue
    const/16 v6, 0x15

    const/16 v5, 0x68

    const/4 v4, 0x3

    const/16 v3, 0x32

    const/4 v2, 0x0

    .line 534
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_14

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x500

    if-eq v0, v1, :cond_20

    :cond_14
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_7a

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_7a

    .line 536
    :cond_20
    iput v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 537
    iput v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 538
    iput v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 539
    iput v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 540
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 541
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 542
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 545
    const v0, 0x3eb33333

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 546
    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 550
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 551
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 554
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 555
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 558
    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 559
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 562
    iput v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 563
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 564
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 565
    iput v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 568
    const/high16 v0, 0x42340000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 569
    const/high16 v0, 0x41c80000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 570
    const/high16 v0, 0x41f00000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 571
    const/high16 v0, 0x42380000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 572
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 573
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 746
    :goto_72
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    .line 747
    return-void

    .line 576
    :cond_7a
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x21c

    if-ne v0, v1, :cond_86

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x3c0

    if-eq v0, v1, :cond_92

    :cond_86
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x3c0

    if-ne v0, v1, :cond_e5

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x21c

    if-ne v0, v1, :cond_e5

    .line 579
    :cond_92
    iput v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 580
    iput v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 582
    iput v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 583
    iput v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 584
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 585
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 586
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 589
    const v0, 0x3eb33333

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 590
    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 594
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 595
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 598
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 599
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 602
    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 603
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 606
    iput v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 607
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 608
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 609
    iput v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 612
    const/high16 v0, 0x42340000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 613
    const/high16 v0, 0x41c80000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 614
    const/high16 v0, 0x41f00000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 615
    const/high16 v0, 0x42380000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 616
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 617
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    goto :goto_72

    .line 620
    :cond_e5
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_f1

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x320

    if-eq v0, v1, :cond_fd

    :cond_f1
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x320

    if-ne v0, v1, :cond_15b

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_15b

    .line 623
    :cond_fd
    iput v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 624
    iput v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 625
    iput v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 626
    iput v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 627
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 628
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 629
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 632
    const v0, 0x3eb33333

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 633
    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 637
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 638
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 641
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 642
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 645
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z

    if-eqz v0, :cond_157

    const v0, -0x3ddacccd

    :goto_130
    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 646
    const v0, -0x3e388937

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 649
    iput v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 650
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 651
    const/16 v0, 0x13

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 652
    iput v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 655
    const/high16 v0, 0x42400000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 656
    const/high16 v0, 0x41d80000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 657
    const/high16 v0, 0x41f00000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 658
    const/high16 v0, 0x42380000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 659
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 660
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    goto/16 :goto_72

    .line 645
    :cond_157
    const v0, -0x3dd3cccd

    goto :goto_130

    .line 664
    :cond_15b
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_167

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x320

    if-eq v0, v1, :cond_173

    :cond_167
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x320

    if-ne v0, v1, :cond_1cd

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_1cd

    .line 667
    :cond_173
    const/16 v0, 0x4a

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 668
    const/16 v0, 0x4a

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 669
    iput v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 670
    iput v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 671
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 672
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 673
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 676
    const v0, 0x3eb33333

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 677
    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 681
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 682
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 685
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 686
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 689
    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 690
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 693
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 694
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 695
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 696
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 699
    const/high16 v0, 0x42340000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 700
    const/high16 v0, 0x41c80000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 701
    const/high16 v0, 0x41e00000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 702
    const/high16 v0, 0x42340000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    goto/16 :goto_72

    .line 706
    :cond_1cd
    iput v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 707
    iput v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 708
    iput v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 709
    iput v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 710
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 711
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 712
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 715
    const v0, 0x3eb33333

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 716
    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 720
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 721
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 724
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 725
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 728
    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 729
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 732
    iput v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 733
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 734
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 735
    iput v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 738
    const/high16 v0, 0x42340000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 739
    const/high16 v0, 0x41c80000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 740
    const/high16 v0, 0x41f00000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 741
    const/high16 v0, 0x42380000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 742
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 743
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    goto/16 :goto_72
.end method

.method private setRenderModeDirty()V
    .registers 3

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 1523
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "RENDERMODE_WHEN_DIRTY!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    return-void
.end method

.method private setRippleVersion()V
    .registers 4

    .prologue
    .line 1710
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "setRippleVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isRippleInkEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1715
    :try_start_d
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering_ink_effect"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    .line 1716
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInkEffectColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_36} :catch_4a

    .line 1722
    :cond_36
    :goto_36
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isInkEnable:Z

    if-eqz v0, :cond_4f

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    if-eqz v0, :cond_4f

    .line 1723
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "Def.MODE = ModeType.RIPPLE_LIGHT_WITH_INK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sput-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    .line 1732
    :goto_49
    return-void

    .line 1717
    :catch_4a
    move-exception v0

    .line 1718
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_36

    .line 1725
    :cond_4f
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isArcMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1726
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "ModeType.RIPPLE_GRAVITY_LIGHT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sput-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    goto :goto_49

    .line 1729
    :cond_61
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "ModeType.RIPPLE_LIGHT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sput-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    goto :goto_49
.end method

.method private setSound()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1908
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_4a

    .line 1911
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "show mSoundPool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1915
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "KeyguardUpdateMonitor hasBootCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 1917
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    .line 1918
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRDownId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 1919
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRUpId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 1923
    :cond_4a
    return-void
.end method

.method private setSound_gravity()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1927
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool_Gravity:Landroid/media/SoundPool;

    if-nez v0, :cond_3c

    .line 1929
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "show mSoundPool_Gravity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1933
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "KeyguardUpdateMonitor hasBootCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool_Gravity:Landroid/media/SoundPool;

    .line 1935
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds_gravity:[I

    .line 1936
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds_gravity:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool_Gravity:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    const v3, 0x7f050006

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 1939
    :cond_3c
    return-void
.end method

.method private transferBitmapToJni(Z)V
    .registers 5

    .prologue
    .line 1695
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "transferBitmapToJni"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "transferBGBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/android/keyguard/sec/JniWaterRippleRender;->transferBGBitmap(Landroid/graphics/Bitmap;)V

    .line 1698
    if-eqz p1, :cond_30

    .line 1699
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "transferWaterBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/android/keyguard/sec/JniWaterRippleRender;->transferWaterBitmap(Landroid/graphics/Bitmap;)V

    .line 1701
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_30

    .line 1702
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravity:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapCaustics:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapCaustics2:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/sec/JniWaterRippleRender;->transferGravityBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 1706
    :cond_30
    return-void
.end method


# virtual methods
.method public EffectDisable()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 2530
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->CurrentState:I

    packed-switch v0, :pswitch_data_22

    .line 2546
    :goto_7
    return-void

    .line 2532
    :pswitch_8
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 2533
    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->unbindLeftDirectionEffect()V

    .line 2535
    iput v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->CurrentState:I

    goto :goto_7

    .line 2539
    :pswitch_15
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 2540
    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->unbindRightDirectionEffect()V

    .line 2542
    iput v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->CurrentState:I

    goto :goto_7

    .line 2530
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_8
        :pswitch_15
    .end packed-switch
.end method

.method public EffectEnable(I)V
    .registers 6
    .param p1, "effectType"    # I

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000

    const/4 v1, 0x1

    .line 2502
    packed-switch p1, :pswitch_data_2c

    .line 2521
    :goto_7
    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setSound_gravity()V

    .line 2522
    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->playSound_gravity(I)V

    .line 2523
    return-void

    .line 2504
    :pswitch_e
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 2505
    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bindLeftDirectionEffect()V

    .line 2506
    iput v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->CurrentState:I

    .line 2507
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveReductionRate:F

    goto :goto_7

    .line 2513
    :pswitch_1d
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 2514
    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bindRightDirectionEffect()V

    .line 2515
    iput v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->CurrentState:I

    .line 2516
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveReductionRate:F

    goto :goto_7

    .line 2502
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_e
        :pswitch_1d
    .end packed-switch
.end method

.method public bindLeftDirectionEffect()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000

    .line 2332
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v3}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 2334
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    .line 2335
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    .line 2336
    iput v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    .line 2337
    iput-boolean v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    .line 2338
    iput v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TexMoveU:F

    .line 2339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bGravityDirection:Z

    .line 2340
    iput v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    .line 2341
    const v0, 0x3ea8f5c3

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    .line 2342
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    .line 2344
    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->onMakeLeftDirectionStartRipple()V

    .line 2345
    return-void
.end method

.method public bindRightDirectionEffect()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/high16 v1, 0x3f800000

    .line 2212
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 2214
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    .line 2215
    iput v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    .line 2216
    iput-boolean v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    .line 2217
    iput v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TexMoveU:F

    .line 2218
    iput-boolean v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bGravityDirection:Z

    .line 2219
    iput v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    .line 2220
    iput v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    .line 2221
    const v0, 0x3ea8f5c3

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    .line 2222
    iput v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    .line 2223
    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->onMakeRightDirectionStartRipple()V

    .line 2224
    return-void
.end method

.method public cleanUp()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1980
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_16

    .line 1983
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1984
    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 1985
    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    .line 1988
    :cond_16
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool_Gravity:Landroid/media/SoundPool;

    if-eqz v0, :cond_23

    .line 1989
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool_Gravity:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1990
    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool_Gravity:Landroid/media/SoundPool;

    .line 1991
    iput-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds_gravity:[I

    .line 1995
    :cond_23
    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->removeDefaultRunnable()V

    .line 1996
    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setFalseDefaultEffectFlag()V

    .line 1997
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 1999
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v0, v1, :cond_38

    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_50

    .line 2001
    :cond_38
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isMakedASpenToucdUp:Z

    if-nez v0, :cond_50

    .line 2003
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "Spen onTouch(ACTION UP) , because touch up wasn\'t maked by uper layer until cleanUp "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    float-to-int v0, v0

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    float-to-int v1, v1

    const/high16 v2, 0x3f800000

    invoke-static {v0, v1, v3, v2}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onTouch(IIIF)V

    .line 2005
    iput-boolean v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isMakedASpenToucdUp:Z

    .line 2010
    :cond_50
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$4;-><init>(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2017
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_6b

    .line 2018
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 2021
    :cond_6b
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_76

    .line 2022
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    invoke-virtual {v0, p0}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;)V

    .line 2024
    :cond_76
    return-void
.end method

.method public clearAllEffect()V
    .registers 3

    .prologue
    .line 1678
    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->clearRipple()V

    .line 1680
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v0, v1, :cond_f

    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_19

    .line 1682
    :cond_f
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "clearInkValue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    invoke-static {}, Lcom/android/keyguard/sec/JniWaterRippleRender;->clearInkValue()V

    .line 1685
    :cond_19
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_2c

    .line 1687
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "clear gravity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->clearGravityEffect()V

    .line 1689
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    .line 1691
    :cond_2c
    return-void
.end method

.method public clearGravityEffect()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2609
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TexMoveU:F

    .line 2610
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->CurrentState:I

    .line 2611
    iput v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    .line 2612
    iput v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    .line 2613
    iput v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    .line 2614
    iput v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeMix:F

    .line 2615
    const v0, 0x3f70a3d7

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveReductionRate:F

    .line 2616
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 2617
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 2618
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 2619
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 2620
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 2621
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 2622
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 2623
    return-void
.end method

.method public clearRipple()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1657
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "clearRipple"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    if-nez v0, :cond_d

    .line 1674
    :cond_c
    :goto_c
    return-void

    .line 1662
    :cond_d
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    array-length v0, v0

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    if-lt v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    array-length v0, v0

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    if-lt v0, v1, :cond_c

    .line 1667
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1668
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1669
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1670
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1671
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1672
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1673
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_c
.end method

.method public getInterpolation70(F)F
    .registers 15
    .param p1, "input"    # F

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x3f800000

    .line 2649
    div-float v0, p1, v11

    .line 2650
    .local v0, "_loc_5":F
    sget-object v6, Lcom/android/keyguard/sec/Value$SineInOut70;->segments:[[F

    array-length v1, v6

    .line 2651
    .local v1, "_loc_6":I
    int-to-float v6, v1

    mul-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 2652
    .local v4, "_loc_9":I
    sget-object v6, Lcom/android/keyguard/sec/Value$SineInOut70;->segments:[[F

    array-length v6, v6

    if-lt v4, v6, :cond_1a

    sget-object v6, Lcom/android/keyguard/sec/Value$SineInOut70;->segments:[[F

    array-length v6, v6

    add-int/lit8 v4, v6, -0x1

    .line 2654
    :cond_1a
    int-to-float v6, v4

    int-to-float v7, v1

    div-float v7, v11, v7

    mul-float/2addr v6, v7

    sub-float v6, v0, v6

    int-to-float v7, v1

    mul-float v2, v6, v7

    .line 2655
    .local v2, "_loc_7":F
    sget-object v6, Lcom/android/keyguard/sec/Value$SineInOut70;->segments:[[F

    aget-object v3, v6, v4

    .line 2656
    .local v3, "_loc_8":[F
    const/4 v6, 0x0

    aget v7, v3, v12

    const/high16 v8, 0x40000000

    sub-float v9, v11, v2

    mul-float/2addr v8, v9

    const/4 v9, 0x1

    aget v9, v3, v9

    aget v10, v3, v12

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    const/4 v9, 0x2

    aget v9, v3, v9

    aget v10, v3, v12

    sub-float/2addr v9, v10

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    mul-float/2addr v7, v11

    add-float v5, v6, v7

    .line 2658
    .local v5, "ret":F
    return v5
.end method

.method public getInterpolation80(F)F
    .registers 15
    .param p1, "input"    # F

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x3f800000

    .line 2631
    div-float v0, p1, v11

    .line 2632
    .local v0, "_loc_5":F
    sget-object v6, Lcom/android/keyguard/sec/Value$SineInOut80;->segments:[[F

    array-length v1, v6

    .line 2633
    .local v1, "_loc_6":I
    int-to-float v6, v1

    mul-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 2634
    .local v4, "_loc_9":I
    sget-object v6, Lcom/android/keyguard/sec/Value$SineInOut80;->segments:[[F

    array-length v6, v6

    if-lt v4, v6, :cond_1a

    sget-object v6, Lcom/android/keyguard/sec/Value$SineInOut80;->segments:[[F

    array-length v6, v6

    add-int/lit8 v4, v6, -0x1

    .line 2636
    :cond_1a
    int-to-float v6, v4

    int-to-float v7, v1

    div-float v7, v11, v7

    mul-float/2addr v6, v7

    sub-float v6, v0, v6

    int-to-float v7, v1

    mul-float v2, v6, v7

    .line 2637
    .local v2, "_loc_7":F
    sget-object v6, Lcom/android/keyguard/sec/Value$SineInOut80;->segments:[[F

    aget-object v3, v6, v4

    .line 2638
    .local v3, "_loc_8":[F
    const/4 v6, 0x0

    aget v7, v3, v12

    const/high16 v8, 0x40000000

    sub-float v9, v11, v2

    mul-float/2addr v8, v9

    const/4 v9, 0x1

    aget v9, v3, v9

    aget v10, v3, v12

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    const/4 v9, 0x2

    aget v9, v3, v9

    aget v10, v3, v12

    sub-float/2addr v9, v10

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    mul-float/2addr v7, v11

    add-float v5, v6, v7

    .line 2640
    .local v5, "ret":F
    return v5
.end method

.method public mouseMove(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 14

    .prologue
    const-wide/high16 v9, 0x4000000000000000L

    const/4 v6, 0x2

    const/high16 v5, 0x40000000

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 985
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event  action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", src = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%x"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    if-nez v0, :cond_56

    .line 993
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "drawCount == 0 Touch Return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 1206
    :goto_55
    return v0

    .line 997
    :cond_56
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isFirstTouched:Z

    if-eqz v0, :cond_67

    .line 999
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "isFirstTouched is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->removeDefaultRunnable()V

    .line 1001
    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setFalseDefaultEffectFlag()V

    .line 1004
    :cond_67
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    .line 1005
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    .line 1007
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_a6

    .line 1009
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a6

    .line 1012
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    packed-switch v0, :pswitch_data_322

    :cond_83
    move v0, v7

    .line 1031
    :goto_84
    if-ne v0, v8, :cond_a6

    move v0, v8

    .line 1032
    goto :goto_55

    .line 1017
    :pswitch_88
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    const v1, 0x3e99999a

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_83

    move v0, v8

    .line 1018
    goto :goto_84

    .line 1025
    :pswitch_97
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    const v1, 0x3f333333

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_83

    move v0, v8

    .line 1026
    goto :goto_84

    .line 1036
    :cond_a6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v8, :cond_b0

    .line 1038
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    move v0, v7

    .line 1039
    goto :goto_55

    .line 1043
    :cond_b0
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    if-le v0, v8, :cond_be

    .line 1045
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 1046
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->downX:F

    .line 1047
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->downY:F

    .line 1052
    :cond_be
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    if-eqz v0, :cond_226

    .line 1054
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    .line 1055
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    .line 1056
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    .line 1057
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    neg-float v0, v0

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    .line 1067
    :goto_f2
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v0, v1, :cond_fe

    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_123

    .line 1069
    :cond_fe
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    .line 1071
    float-to-double v1, v0

    const-wide/high16 v3, 0x3ff0000000000000L

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_10b

    .line 1073
    const/high16 v0, 0x3f800000

    .line 1076
    :cond_10b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_118

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v8, :cond_258

    .line 1078
    :cond_118
    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    float-to-int v2, v2

    invoke-static {v1, v2, v8, v0}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onTouch(IIIF)V

    .line 1079
    iput-boolean v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isMakedASpenToucdUp:Z

    .line 1088
    :cond_123
    :goto_123
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_273

    .line 1091
    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    .line 1092
    iput-boolean v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 1094
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_175

    .line 1097
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "MotionEvent.ACTION_DOWN mSoundPool == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_175

    .line 1100
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "KeyguardUpdateMonitor hasBootCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v8, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 1102
    new-array v0, v6, [I

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    .line 1103
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRDownId:I

    invoke-virtual {v1, v2, v3, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v7

    .line 1104
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRUpId:I

    invoke-virtual {v1, v2, v3, v8}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v8

    .line 1108
    :cond_175
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 1109
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->downX:F

    .line 1110
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->downY:F

    .line 1111
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 1112
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->prevPressTime:J

    .line 1113
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    .line 1115
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v3, 0x40800000

    mul-float/2addr v2, v3

    invoke-direct {p0, v0, v1, v2, v8}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ripple(FFFZ)V

    .line 1116
    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->playSound(I)V

    .line 1157
    :cond_19a
    :goto_19a
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v0, v1, :cond_1ac

    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v0, v1, :cond_1ac

    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_223

    .line 1161
    :cond_1ac
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1bb

    .line 1163
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "========================= ACTION_HOVER_ENTER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_1bb
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_311

    .line 1167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1169
    iget-wide v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mPreviousRippleTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x640

    cmp-long v0, v0, v2

    if-lez v0, :cond_1dd

    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mHoverEnabled:Z

    if-nez v0, :cond_1dd

    .line 1171
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "setHoverEnable true ======================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    invoke-direct {p0, v8}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    .line 1175
    :cond_1dd
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mHoverEnabled:Z

    if-eqz v0, :cond_21a

    .line 1177
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->hoverPlus_Frenel:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    .line 1178
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->hoverPlus_Specular:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    .line 1179
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->hoverPlus_exponent:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    .line 1181
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_FRESENL_MAX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_202

    .line 1183
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_FRESENL_MAX:F

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    .line 1186
    :cond_202
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_SPECULAR_RATIO_MAX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_20e

    .line 1188
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_SPECULAR_RATIO_MAX:F

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    .line 1191
    :cond_20e
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_EXPONENT_RATIO_MAX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_21a

    .line 1193
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_EXPONENT_RATIO_MAX:F

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    .line 1198
    :cond_21a
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mHoverIntensity:F

    invoke-direct {p0, v0, v1, v2, v7}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ripple(FFFZ)V

    :cond_223
    :goto_223
    move v0, v7

    .line 1206
    goto/16 :goto_55

    .line 1061
    :cond_226
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    .line 1062
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    .line 1063
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    .line 1064
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    neg-float v0, v0

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    goto/16 :goto_f2

    .line 1081
    :cond_258
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit16 v1, v1, 0x4002

    const/16 v2, 0x4002

    if-ne v1, v2, :cond_123

    .line 1083
    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-static {v1, v2, v3, v0}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onTouch(IIIF)V

    .line 1084
    iput-boolean v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isMakedASpenToucdUp:Z

    goto/16 :goto_123

    .line 1118
    :cond_273
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_2d2

    .line 1120
    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    .line 1121
    iput-boolean v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 1122
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->downX:F

    sub-float/2addr v0, v1

    .line 1123
    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->downY:F

    sub-float/2addr v1, v2

    .line 1124
    float-to-double v2, v0

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v0, v1

    invoke-static {v0, v1, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 1125
    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 1126
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->downX:F

    .line 1127
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->downY:F

    .line 1129
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rippleDragThreshold:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_19a

    .line 1130
    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    .line 1131
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 1133
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v3, 0x40400000

    mul-float/2addr v2, v3

    invoke-direct {p0, v0, v1, v2, v8}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ripple(FFFZ)V

    .line 1134
    invoke-direct {p0, v8}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->playDragSound(I)V

    .line 1135
    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    const-wide/16 v4, 0x14

    const/high16 v6, 0x40400000

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->startLongPressCheck2(Landroid/view/View;FFJF)V

    goto/16 :goto_19a

    .line 1138
    :cond_2d2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v8, :cond_301

    .line 1140
    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    .line 1141
    iput-boolean v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 1143
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->prevPressTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    .line 1144
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 1146
    iget-wide v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-lez v0, :cond_19a

    .line 1148
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v3, 0x40800000

    mul-float/2addr v2, v3

    invoke-direct {p0, v0, v1, v2, v8}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ripple(FFFZ)V

    .line 1149
    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->playSound(I)V

    goto/16 :goto_19a

    .line 1151
    :cond_301
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_19a

    .line 1152
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 1153
    iput-boolean v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 1154
    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    goto/16 :goto_19a

    .line 1201
    :cond_311
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_223

    .line 1203
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "ACTION_HOVER_EXIT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_223

    .line 1012
    :pswitch_data_322
    .packed-switch 0x0
        :pswitch_88
        :pswitch_88
        :pswitch_97
        :pswitch_97
    .end packed-switch
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 32

    .prologue
    .line 883
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    if-nez v1, :cond_4f

    .line 884
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setRippleVersion()V

    .line 885
    const-string v1, "CircleUnlockRippleRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ondrawfrmae drawCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    invoke-static {}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onLoadBGTextures()V

    .line 888
    invoke-static {}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onLoadWaterTextures()V

    .line 890
    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_156

    .line 891
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onInitSetting(IIZ)V

    .line 892
    invoke-static {}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onInitGPU()V

    .line 899
    :cond_40
    :goto_40
    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v1, v2, :cond_4c

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_4f

    .line 901
    :cond_4c
    invoke-static {}, Lcom/android/keyguard/sec/JniWaterRippleRender;->clearInkValue()V

    .line 905
    :cond_4f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_16d

    .line 907
    const-string v1, "CircleUnlockRippleRenderer"

    const-string v2, "Change opengl BG Texture"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-static {}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onFreeBGTextures()V

    .line 909
    invoke-static {}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onLoadBGTextures()V

    .line 910
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 919
    :cond_6e
    :goto_6e
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    if-nez v1, :cond_215

    .line 921
    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_17e

    .line 922
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    array-length v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    array-length v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBitmapRatio:F

    div-float/2addr v8, v9

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeMix:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ReferencePoint:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TexMoveU:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bGravityDirection:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    move/from16 v29, v0

    invoke-static/range {v1 .. v29}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onDrawGravity([F[F[SIII[FIIIIFFFFFFFFFFIFFFFFZF)V

    .line 972
    :goto_13b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    if-lez v1, :cond_144

    .line 973
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->move()V

    .line 975
    :cond_144
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_155

    .line 977
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    .line 979
    :cond_155
    return-void

    .line 894
    :cond_156
    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_40

    .line 895
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onInitSetting(IIZ)V

    .line 896
    invoke-static {}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onInitGPU()V

    goto/16 :goto_40

    .line 912
    :cond_16d
    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_6e

    .line 914
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->updateGravityRippleEffect()V

    .line 915
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->updateBGTiltAnimation()V

    .line 916
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->updateCausticsMixRatio()V

    goto/16 :goto_6e

    .line 934
    :cond_17e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    array-length v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    array-length v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBitmapRatio:F

    div-float/2addr v8, v9

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    move/from16 v21, v0

    invoke-static/range {v1 .. v21}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onDraw([F[F[SIII[FIIIIFFFFFFFFFF)V

    goto/16 :goto_13b

    .line 946
    :cond_215
    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_2de

    .line 947
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    array-length v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    array-length v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBitmapRatio:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeMix:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ReferencePoint:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TexMoveU:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bGravityDirection:Z

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    move/from16 v29, v0

    invoke-static/range {v1 .. v29}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onDrawGravity([F[F[SIII[FIIIIFFFFFFFFFFIFFFFFZF)V

    goto/16 :goto_13b

    .line 960
    :cond_2de
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    array-length v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    array-length v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBitmapRatio:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mExponentRatio:F

    move/from16 v21, v0

    invoke-static/range {v1 .. v21}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onDraw([F[F[SIII[FIIIIFFFFFFFFFF)V

    goto/16 :goto_13b
.end method

.method public onMakeLeftDirectionEndRipple()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 2573
    .line 2574
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    :goto_5
    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_39

    move v1, v2

    .line 2575
    :goto_b
    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    if-ge v1, v3, :cond_36

    .line 2576
    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    iget v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int v5, v0, v2

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v1

    sget-object v5, Lcom/android/keyguard/sec/Value$SideWave;->velocity:[F

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v0, v6

    iget v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v1

    aget v5, v5, v6

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mGravityHeightWeight:F

    mul-float/2addr v5, v6

    const v6, 0x3a83126f

    mul-float/2addr v5, v6

    aput v5, v3, v4

    .line 2575
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2574
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2579
    :cond_39
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 2580
    return-void
.end method

.method public onMakeLeftDirectionStartRipple()V
    .registers 10

    .prologue
    const v8, 0x3fd9999a

    const/4 v1, 0x0

    .line 2477
    move v0, v1

    :goto_5
    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_2a

    move v2, v1

    .line 2478
    :goto_c
    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    if-ge v2, v3, :cond_27

    .line 2479
    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    iget v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v2

    sget-object v5, Lcom/android/keyguard/sec/Value$TotalWave1;->velocity:[F

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v2

    aget v5, v5, v6

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mGravityHeightWeight:F

    mul-float/2addr v5, v6

    mul-float/2addr v5, v8

    aput v5, v3, v4

    .line 2478
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2477
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2483
    :cond_2a
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    :goto_2e
    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    if-ge v0, v2, :cond_57

    move v2, v1

    .line 2484
    :goto_33
    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    if-ge v2, v3, :cond_54

    .line 2485
    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    iget v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v2

    sget-object v5, Lcom/android/keyguard/sec/Value$TotalWave2;->velocity:[F

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v0, v6

    iget v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v2

    aget v5, v5, v6

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mGravityHeightWeight:F

    mul-float/2addr v5, v6

    mul-float/2addr v5, v8

    aput v5, v3, v4

    .line 2484
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 2483
    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 2489
    :cond_57
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 2491
    const v0, 0x3ea8f5c3

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    .line 2492
    const/high16 v0, 0x42200000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ReferencePoint:F

    .line 2493
    return-void
.end method

.method public onMakeRightDirectionEndRipple()V
    .registers 9

    .prologue
    .line 2557
    const/4 v0, 0x0

    .line 2558
    .local v0, "EndshiftVal":I
    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v1, v3, 0x2

    .local v1, "i":I
    :goto_5
    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_34

    .line 2559
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_b
    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    if-ge v2, v3, :cond_31

    .line 2560
    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    add-int v4, v1, v0

    iget v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v2

    sget-object v5, Lcom/android/keyguard/sec/Value$SideWave;->velocity:[F

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v2

    aget v5, v5, v6

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mGravityHeightWeight:F

    mul-float/2addr v5, v6

    const v6, 0x3c23d70a

    mul-float/2addr v5, v6

    aput v5, v3, v4

    .line 2559
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2558
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2563
    .end local v2    # "j":I
    :cond_34
    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v3, Landroid/opengl/GLSurfaceView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 2564
    return-void
.end method

.method public onMakeRightDirectionStartRipple()V
    .registers 10

    .prologue
    const v8, 0x3fd9999a

    const/4 v1, 0x0

    .line 2450
    move v0, v1

    :goto_5
    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_2f

    move v2, v1

    .line 2451
    :goto_c
    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    if-ge v2, v3, :cond_2c

    .line 2452
    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    iget v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v2

    sget-object v5, Lcom/android/keyguard/sec/Value$TotalWave1;->velocity:[F

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v2

    aget v5, v5, v6

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mGravityHeightWeight:F

    mul-float/2addr v5, v6

    mul-float/2addr v5, v8

    aput v5, v3, v4

    .line 2451
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2450
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2456
    :cond_2f
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    :goto_33
    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    if-ge v0, v2, :cond_61

    move v2, v1

    .line 2457
    :goto_38
    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    if-ge v2, v3, :cond_5e

    .line 2458
    iget-object v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    iget v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v2

    sget-object v5, Lcom/android/keyguard/sec/Value$TotalWave2;->velocity:[F

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v0, v6

    iget v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v2

    aget v5, v5, v6

    iget v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mGravityHeightWeight:F

    mul-float/2addr v5, v6

    mul-float/2addr v5, v8

    aput v5, v3, v4

    .line 2457
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 2456
    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 2462
    :cond_61
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 2466
    const v0, 0x3ea8f5c3

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    .line 2467
    const/high16 v0, 0x42200000

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ReferencePoint:F

    .line 2468
    return-void
.end method

.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .registers 12
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 469
    iget-object v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "master_motion"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_25

    move v2, v5

    .line 470
    .local v2, "mMasterArcMotion":Z
    :goto_11
    iget-object v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "arc_motion_ripple_effect"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_27

    move v3, v5

    .line 471
    .local v3, "mRippleEffect":Z
    :goto_20
    if-eqz v2, :cond_24

    if-nez v3, :cond_29

    .line 529
    :cond_24
    :goto_24
    return-void

    .end local v2    # "mMasterArcMotion":Z
    .end local v3    # "mRippleEffect":Z
    :cond_25
    move v2, v6

    .line 469
    goto :goto_11

    .restart local v2    # "mMasterArcMotion":Z
    :cond_27
    move v3, v6

    .line 470
    goto :goto_20

    .line 475
    .restart local v3    # "mRippleEffect":Z
    :cond_29
    const-string v7, "CircleUnlockRippleRenderer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isKeyguardHidden() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->isKeyguardHidden()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->keyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardHidden()Z

    move-result v7

    if-nez v7, :cond_24

    .line 480
    iget-object v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v7, :cond_61

    .line 481
    iget-object v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    .line 482
    .local v0, "State":Lcom/samsung/android/sdk/cover/ScoverState;
    if-eqz v0, :cond_61

    .line 483
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v7

    if-eqz v7, :cond_24

    .line 489
    .end local v0    # "State":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_61
    iget-object v4, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 490
    .local v4, "scontext":Landroid/hardware/scontext/SContext;
    invoke-virtual {v4}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v7

    const/16 v8, 0x12

    if-ne v7, v8, :cond_24

    .line 492
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getBounceLongMotionContext()Landroid/hardware/scontext/SContextBounceLongMotion;

    move-result-object v1

    .line 495
    .local v1, "bounceLongMotionContext":Landroid/hardware/scontext/SContextBounceLongMotion;
    invoke-virtual {v1}, Landroid/hardware/scontext/SContextBounceLongMotion;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_f0

    goto :goto_24

    .line 497
    :pswitch_77
    const-string v5, "CircleUnlockRippleRenderer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BOUNCE_LONG_NONE type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 500
    :pswitch_92
    const-string v6, "CircleUnlockRippleRenderer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BOUNCE_LONG_RIGHT type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {p0, v5}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->EffectEnable(I)V

    goto/16 :goto_24

    .line 504
    :pswitch_b1
    const-string v5, "CircleUnlockRippleRenderer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BOUNCE_LONG_LEFT type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-virtual {p0, v6}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->EffectEnable(I)V

    goto/16 :goto_24

    .line 508
    :pswitch_d0
    const-string v5, "CircleUnlockRippleRenderer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BOUNCE_LONG_UNHAND type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->EffectDisable()V

    goto/16 :goto_24

    .line 495
    nop

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_77
        :pswitch_92
        :pswitch_b1
        :pswitch_d0
    .end packed-switch
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 16

    .prologue
    .line 766
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "onSurfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->prevWidth_sufaceChanged:I

    if-ne v0, p2, :cond_60

    .line 771
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prevWidth_sufaceChanged is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->prevWidth_sufaceChanged:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :goto_5f
    return-void

    .line 774
    :cond_60
    iput p2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->prevWidth_sufaceChanged:I

    .line 776
    if-le p2, p3, :cond_14b

    .line 778
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    .line 785
    :goto_67
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    if-eqz v0, :cond_15e

    .line 788
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    .line 789
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 790
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 792
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z

    if-eqz v0, :cond_99

    .line 795
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

    if-ne p3, v0, :cond_150

    .line 797
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 798
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 823
    :cond_99
    :goto_99
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    div-float v11, v0, v1

    .line 825
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->view:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 826
    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->proj:[F

    const/high16 v2, 0x42340000

    const v4, 0x3dcccccd

    const/high16 v5, 0x43fa0000

    move-object v0, p0

    move v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->perspectiveM([FFFFF)V

    .line 832
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    if-eqz v0, :cond_188

    .line 834
    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 835
    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 836
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    move v6, v0

    move v7, v1

    move v8, v2

    .line 846
    :goto_cd
    iput v8, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateX:F

    .line 847
    iput v7, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateY:F

    .line 848
    iput v6, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateZ:F

    .line 849
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 850
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->view:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 851
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, v8, v7, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 853
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_112

    .line 855
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v1, 0x0

    const v2, 0x3f83d70a

    const v3, 0x3f83d70a

    const v4, 0x3f83d70a

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 856
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 857
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 859
    :cond_112
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->proj:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 861
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_132

    .line 862
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onInitSetting(IIZ)V

    .line 863
    invoke-static {}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onInitGPUGravity()V

    .line 864
    invoke-static {}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onLoadGravityTextures()V

    .line 866
    :cond_132
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_146

    .line 867
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onInitSetting(IIZ)V

    .line 868
    invoke-static {}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onInitGPUGravity()V

    .line 869
    invoke-static {}, Lcom/android/keyguard/sec/JniWaterRippleRender;->onLoadGravityTextures()V

    .line 872
    :cond_146
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    goto/16 :goto_5f

    .line 782
    :cond_14b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    goto/16 :goto_67

    .line 802
    :cond_150
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 803
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    goto/16 :goto_99

    .line 810
    :cond_15e
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    .line 811
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 812
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 814
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z

    if-eqz v0, :cond_99

    .line 816
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 817
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    goto/16 :goto_99

    .line 840
    :cond_188
    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 841
    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 842
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    move v6, v0

    move v7, v1

    move v8, v2

    goto/16 :goto_cd
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 5

    .prologue
    .line 755
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->prevWidth_sufaceChanged:I

    .line 757
    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->loadBitmapIfBitmapNull()V

    .line 758
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 2027
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->clearAllEffect()V

    .line 2030
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 2032
    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->removeDefaultRunnable()V

    .line 2033
    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setFalseDefaultEffectFlag()V

    .line 2035
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_22

    .line 2036
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 2039
    :cond_22
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_2d

    .line 2040
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    invoke-virtual {v0, p0}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;)V

    .line 2042
    :cond_2d
    return-void
.end method

.method public screenTurnedOn()V
    .registers 3

    .prologue
    .line 1958
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->removeDefaultRunnable()V

    .line 1962
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->calledIsScreenTurnedOn:Z

    .line 1964
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_1c

    .line 1965
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 1969
    :cond_1c
    sget-object v0, Lcom/android/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_GRAVITY:Lcom/android/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_3f

    .line 1970
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1971
    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3f

    .line 1972
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "register SContext"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/16 v1, 0x12

    invoke-virtual {v0, p0, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 1977
    :cond_3f
    return-void
.end method

.method public setContextualWallpaper(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2662
    if-nez p1, :cond_3

    .line 2668
    :goto_2
    return-void

    .line 2665
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V

    .line 2666
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->transferBitmapToJni(Z)V

    .line 2667
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public setGravityTexture(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "pGravityBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "pCausticsBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "pCausticsBitmap2"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 1604
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravity:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 1606
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravity:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1607
    iput-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravity:Landroid/graphics/Bitmap;

    .line 1610
    :cond_c
    iput-object p1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapGravity:Landroid/graphics/Bitmap;

    .line 1612
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapCaustics:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_19

    .line 1614
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapCaustics:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1615
    iput-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapCaustics:Landroid/graphics/Bitmap;

    .line 1617
    :cond_19
    iput-object p2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapCaustics:Landroid/graphics/Bitmap;

    .line 1619
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapCaustics2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_26

    .line 1621
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapCaustics2:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1622
    iput-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapCaustics2:Landroid/graphics/Bitmap;

    .line 1624
    :cond_26
    iput-object p3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapCaustics2:Landroid/graphics/Bitmap;

    .line 1625
    return-void
.end method

.method public setRippleBackground()V
    .registers 3

    .prologue
    .line 1901
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "setRippleBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    .line 1903
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1904
    return-void
.end method

.method public setSoundRID(II)V
    .registers 3
    .param p1, "RDownId"    # I
    .param p2, "RUpId"    # I

    .prologue
    .line 1629
    iput p1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRDownId:I

    .line 1630
    iput p2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRUpId:I

    .line 1631
    return-void
.end method

.method public setTexture(Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 1580
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1581
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    .line 1584
    :cond_c
    iput-object p1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    .line 1586
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBitmapRatio:F

    .line 1587
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitmapBG.width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bitmapBG.height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    return-void
.end method

.method public setWaterTexture(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "pBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 1594
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 1598
    :cond_c
    iput-object p1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 1600
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 1944
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setSound()V

    .line 1947
    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setSound_gravity()V

    .line 1948
    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->checkSound()V

    .line 1949
    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setRippleVersion()V

    .line 1952
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->isFirstTouched:Z

    .line 1953
    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->setFalseDefaultEffectFlag()V

    .line 1955
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .registers 7

    .prologue
    .line 2047
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "showUnlockAffordance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calledIsScreenTurnedOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->calledIsScreenTurnedOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    invoke-direct {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->removeDefaultRunnable()V

    .line 2051
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->calledIsScreenTurnedOn:Z

    if-eqz v0, :cond_62

    .line 2053
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->defaultX:F

    .line 2054
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->defaultY:F

    .line 2056
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_54

    .line 2058
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "mDefaultRunnable,  new Runnable()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    new-instance v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$5;-><init>(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    .line 2087
    :cond_54
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "mDefaultRunnable, postDelayed()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2090
    :cond_62
    return-void
.end method

.method public startLongPressCheck(Landroid/view/View;FFJF)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mouseX"    # F
    .param p3, "mouseY"    # F
    .param p4, "delay"    # J
    .param p6, "pIntensity"    # F

    .prologue
    .line 1232
    iput p2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->tmx:F

    .line 1233
    iput p3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->tmy:F

    .line 1235
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_f

    .line 1237
    new-instance v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$2;

    invoke-direct {v0, p0, p6}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$2;-><init>(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;F)V

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 1248
    :cond_f
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1249
    return-void
.end method

.method public startLongPressCheck2(Landroid/view/View;FFJF)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mouseX"    # F
    .param p3, "mouseY"    # F
    .param p4, "delay"    # J
    .param p6, "pIntensity"    # F

    .prologue
    .line 1253
    iput p2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->tmx:F

    .line 1254
    iput p3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->tmy:F

    .line 1256
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_f

    .line 1258
    new-instance v0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$3;

    invoke-direct {v0, p0, p6, p4, p5}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$3;-><init>(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;FJ)V

    iput-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 1272
    :cond_f
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1273
    return-void
.end method

.method public stopLongPressCheck(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1277
    return-void
.end method

.method public unbindLeftDirectionEffect()V
    .registers 2

    .prologue
    .line 2352
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    .line 2353
    const v0, 0x3ecccccd

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    .line 2354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    .line 2355
    const v0, 0x3f6a3d71

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveReductionRate:F

    .line 2356
    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->onMakeLeftDirectionEndRipple()V

    .line 2357
    return-void
.end method

.method public unbindRightDirectionEffect()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2232
    iput v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    .line 2233
    const v0, 0x3ecccccd

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    .line 2234
    iput-boolean v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    .line 2236
    const v0, 0x3f6a3d71

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mBottomWaveReductionRate:F

    .line 2237
    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->onMakeRightDirectionEndRipple()V

    .line 2238
    return-void
.end method

.method public updateBGTiltAnimation()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const v8, 0x3f83d70a

    const/high16 v7, 0x3f800000

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 2153
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_163

    .line 2156
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    if-nez v0, :cond_66

    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    if-ne v0, v9, :cond_66

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    const v2, 0x3e99999a

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_66

    .line 2158
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2159
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->view:[F

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2160
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateX:F

    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateY:F

    iget v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateZ:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2161
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    const/high16 v3, 0x41a00000

    mul-float/2addr v2, v3

    move v3, v6

    move v4, v7

    move v5, v6

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 2162
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    invoke-static {v0, v1, v8, v8, v7}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 2163
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2164
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2165
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->proj:[F

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2169
    :cond_66
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    if-ne v0, v9, :cond_b6

    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    if-ne v0, v9, :cond_b6

    .line 2171
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2172
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->view:[F

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2173
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateX:F

    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateY:F

    iget v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateZ:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2174
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    const/high16 v3, 0x41700000

    mul-float/2addr v2, v3

    move v3, v6

    move v4, v7

    move v5, v6

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 2175
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    invoke-static {v0, v1, v8, v8, v7}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 2176
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2177
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2178
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->proj:[F

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2181
    :cond_b6
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_111

    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    if-ne v0, v9, :cond_111

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    const v2, 0x3e99999a

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_111

    .line 2183
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2184
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->view:[F

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2185
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateX:F

    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateY:F

    iget v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateZ:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2186
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    neg-float v2, v2

    const/high16 v3, 0x41a00000

    mul-float/2addr v2, v3

    move v3, v6

    move v4, v7

    move v5, v6

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 2187
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    invoke-static {v0, v1, v8, v8, v7}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 2188
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2189
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2190
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->proj:[F

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2193
    :cond_111
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_163

    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    if-ne v0, v9, :cond_163

    .line 2195
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2196
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->view:[F

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2197
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateX:F

    iget v3, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateY:F

    iget v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mTranslateZ:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 2198
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    neg-float v2, v2

    const/high16 v3, 0x41700000

    mul-float/2addr v2, v3

    move v3, v6

    move v4, v7

    move v5, v6

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 2199
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    invoke-static {v0, v1, v8, v8, v7}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 2200
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2201
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wv:[F

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2202
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    iget-object v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->proj:[F

    iget-object v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2205
    :cond_163
    return-void
.end method

.method public updateCausticsMixRatio()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2588
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeMix:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MarkcuasticsTMix:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeMix:F

    .line 2589
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeMix:F

    const/high16 v1, 0x3f800000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1c

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MarkcuasticsTMix:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1c

    .line 2591
    const v0, -0x43dc28f6

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MarkcuasticsTMix:F

    .line 2601
    :cond_1b
    :goto_1b
    return-void

    .line 2593
    :cond_1c
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeMix:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2e

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MarkcuasticsTMix:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2e

    .line 2595
    const v0, 0x3c23d70a

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->MarkcuasticsTMix:F

    goto :goto_1b

    .line 2597
    :cond_2e
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeMix:F

    float-to-double v0, v0

    const-wide v2, 0x3ff199999999999aL

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1b

    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeMix:F

    float-to-double v0, v0

    const-wide v2, -0x4046666666666666L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1b

    .line 2599
    iput v4, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeMix:F

    goto :goto_1b
.end method

.method public updateGravityRippleEffect()V
    .registers 2

    .prologue
    .line 2127
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    packed-switch v0, :pswitch_data_e

    .line 2141
    :goto_5
    return-void

    .line 2132
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->updateRightDirectionAnimation()V

    goto :goto_5

    .line 2138
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->updateLeftDirectionAnimation()V

    goto :goto_5

    .line 2127
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public updateLeftDirectionAnimation()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/high16 v3, 0x3f000000

    const v4, 0x3c23d70a

    const/4 v2, 0x0

    .line 2365
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    if-nez v0, :cond_c

    .line 2440
    :cond_b
    :goto_b
    return-void

    .line 2368
    :cond_c
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8a

    .line 2370
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    const v1, 0x3ecccccd

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_85

    .line 2372
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ReferencePoint:F

    const/high16 v1, 0x42480000

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_27

    .line 2373
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ReferencePoint:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ReferencePoint:F

    .line 2376
    :cond_27
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    const v1, 0x38d1b717

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    .line 2377
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_37

    .line 2379
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    .line 2381
    :cond_37
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->getInterpolation80(F)F

    move-result v0

    mul-float/2addr v0, v4

    .line 2382
    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    .line 2385
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TiltStartU:F

    add-float/2addr v0, v1

    sub-float v0, v3, v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TexMoveU:F

    .line 2386
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    const v1, 0x3f7ae148

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    .line 2394
    :goto_54
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    const v1, 0x3fb33333

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_62

    .line 2395
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    .line 2398
    :cond_62
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_73

    .line 2399
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    .line 2402
    :cond_73
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_b

    .line 2403
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    const v1, 0x3dcccccd

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    goto :goto_b

    .line 2390
    :cond_85
    iput-boolean v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    .line 2391
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    goto :goto_54

    .line 2409
    :cond_8a
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_e3

    .line 2411
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    const v1, 0x3b449ba6

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    .line 2412
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->getInterpolation70(F)F

    move-result v0

    .line 2413
    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    sub-float v0, v1, v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    .line 2414
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    const v1, 0x3f75c28f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    .line 2416
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->leftDirectionTilt:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TiltStartU:F

    add-float/2addr v0, v1

    sub-float v0, v3, v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TexMoveU:F

    .line 2427
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    const/high16 v1, 0x3f800000

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_c5

    .line 2428
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    const v1, 0x3c75c28f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    .line 2431
    :cond_c5
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_d3

    .line 2432
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    const v1, 0x3ba3d70a

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    .line 2435
    :cond_d3
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_b

    .line 2436
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    const v1, 0x3ca3d70a

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    goto/16 :goto_b

    .line 2421
    :cond_e3
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    .line 2422
    iput-boolean v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    goto/16 :goto_b
.end method

.method public updateRightDirectionAnimation()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/high16 v3, 0x3f000000

    const v4, 0x3c23d70a

    const/4 v2, 0x0

    .line 2247
    iget-boolean v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    if-nez v0, :cond_c

    .line 2324
    :cond_b
    :goto_b
    return-void

    .line 2251
    :cond_c
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    if-nez v0, :cond_81

    .line 2253
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    const v1, 0x3ecccccd

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_7c

    .line 2256
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ReferencePoint:F

    const/high16 v1, 0x42480000

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_26

    .line 2257
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ReferencePoint:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->ReferencePoint:F

    .line 2259
    :cond_26
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    const v1, 0x38d1b717

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    .line 2260
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_36

    .line 2262
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    .line 2264
    :cond_36
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->getInterpolation80(F)F

    move-result v0

    mul-float/2addr v0, v4

    .line 2266
    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    .line 2267
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TiltStartU:F

    add-float/2addr v0, v1

    sub-float v0, v3, v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TexMoveU:F

    .line 2276
    :goto_4b
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    const v1, 0x3fb33333

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_59

    .line 2277
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    .line 2281
    :cond_59
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_6a

    .line 2282
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    sub-float/2addr v0, v4

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    .line 2284
    :cond_6a
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_b

    .line 2285
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    const v1, 0x3dcccccd

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    goto :goto_b

    .line 2272
    :cond_7c
    iput-boolean v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    .line 2273
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    goto :goto_4b

    .line 2292
    :cond_81
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_da

    .line 2295
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    const v1, 0x3b449ba6

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    .line 2296
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->getInterpolation70(F)F

    move-result v0

    .line 2297
    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    sub-float v0, v1, v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    .line 2298
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    const v1, 0x3f75c28f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    .line 2300
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->rightDirectionTilt:F

    iget v1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TiltStartU:F

    add-float/2addr v0, v1

    sub-float v0, v3, v0

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->TexMoveU:F

    .line 2310
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    const/high16 v1, 0x3f800000

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_bc

    .line 2311
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    const v1, 0x3c75c28f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->fWaterBrightness:F

    .line 2314
    :cond_bc
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_ca

    .line 2315
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    const v1, 0x3ba3d70a

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio:F

    .line 2318
    :cond_ca
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_b

    .line 2319
    iget v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    const v1, 0x3ca3d70a

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->causticsTimeRatio2:F

    goto/16 :goto_b

    .line 2304
    :cond_da
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mSelectEffect:I

    .line 2305
    iput-boolean v5, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->mRunDirectionAni:Z

    .line 2306
    iput v2, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->animationSpeed:F

    goto/16 :goto_b
.end method
