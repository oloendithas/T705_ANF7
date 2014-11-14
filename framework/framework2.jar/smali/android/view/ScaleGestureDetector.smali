.class public Landroid/view/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScaleGestureDetector$SaveState;,
        Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;,
        Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_MODE_IN_PROGRESS:I = 0x1

.field private static final DOUBLE_TAP_MODE_NONE:I = 0x0

.field private static final SCALE_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"

.field private static final TOUCH_STABILIZE_TIME:J = 0x80L


# instance fields
.field private AREA_RATE_THRESHOLD:F

.field private AREA_THRESHOLD:F

.field private mAreaRateCalculating:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrLenBeforeSqrt:F

.field private mCurrSpanX:F

.field private mCurrSpanY:F

.field private mCurrTime:J

.field private mDoubleTapEvent:Landroid/view/MotionEvent;

.field private mDoubleTapMode:I

.field private mEventBeforeOrAboveStartingGestureEvent:Z

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mInProgress:Z

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mPrevLenBeforeSqrt:F

.field private mPrevSpanX:F

.field private mPrevSpanY:F

.field private mPrevTime:J

.field private mQuickScaleEnabled:Z

.field private final mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

.field private mTempLenBeforeSqrt:F

.field private mTouchHistoryDirection:I

.field private mTouchHistoryLastAccepted:F

.field private mTouchHistoryLastAcceptedTime:J

.field private mTouchLower:F

.field private mTouchMinMajor:I

.field private mTouchUpper:F

.field private mUpdatePrevious:Z

.field private mUseTwoFingerSweep:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-boolean v4, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    .line 134
    iput-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    .line 135
    iput-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    .line 136
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mTempLenBeforeSqrt:F

    .line 152
    const v2, 0x45bb8000

    iput v2, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F

    .line 153
    const/high16 v2, 0x3f800000

    iput v2, p0, Landroid/view/ScaleGestureDetector;->AREA_RATE_THRESHOLD:F

    .line 154
    new-instance v2, Landroid/view/ScaleGestureDetector$SaveState;

    invoke-direct {v2, p0}, Landroid/view/ScaleGestureDetector$SaveState;-><init>(Landroid/view/ScaleGestureDetector;)V

    iput-object v2, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    .line 164
    iput v3, p0, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    .line 221
    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 222
    iput-object p2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 225
    :try_start_24
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 226
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 227
    iget v2, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_40} :catch_5d

    .line 232
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    :goto_40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 233
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x105000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mTouchMinMajor:I

    .line 235
    iput-object p3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x12

    if-le v2, v3, :cond_5c

    .line 238
    invoke-virtual {p0, v4}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 240
    :cond_5c
    return-void

    .line 228
    .end local v1    # "res":Landroid/content/res/Resources;
    :catch_5d
    move-exception v2

    goto :goto_40
.end method

.method static synthetic access$002(Landroid/view/ScaleGestureDetector;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 2
    .param p0, "x0"    # Landroid/view/ScaleGestureDetector;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 46
    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mDoubleTapEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$102(Landroid/view/ScaleGestureDetector;I)I
    .registers 2
    .param p0, "x0"    # Landroid/view/ScaleGestureDetector;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    return p1
.end method

.method private addTouchHistory(Landroid/view/MotionEvent;)V
    .registers 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 248
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 249
    .local v6, "currentTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .line 250
    .local v5, "count":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    move-wide/from16 v20, v0

    sub-long v20, v6, v20

    const-wide/16 v22, 0x80

    cmp-long v20, v20, v22

    if-ltz v20, :cond_c6

    const/4 v3, 0x1

    .line 251
    .local v3, "accept":Z
    :goto_17
    const/16 v19, 0x0

    .line 252
    .local v19, "total":F
    const/16 v16, 0x0

    .line 253
    .local v16, "sampleCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1c
    if-ge v12, v5, :cond_df

    .line 254
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->isNaN(F)Z

    move-result v20

    if-nez v20, :cond_c9

    const/4 v10, 0x1

    .line 255
    .local v10, "hasLastAccepted":Z
    :goto_2b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v11

    .line 256
    .local v11, "historySize":I
    add-int/lit8 v15, v11, 0x1

    .line 257
    .local v15, "pointerSampleCount":I
    const/4 v9, 0x0

    .local v9, "h":I
    :goto_32
    if-ge v9, v15, :cond_d9

    .line 259
    if-ge v9, v11, :cond_cc

    .line 260
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v9}, Landroid/view/MotionEvent;->getHistoricalTouchMajor(II)F

    move-result v13

    .line 264
    .local v13, "major":F
    :goto_3c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchMinMajor:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpg-float v20, v13, v20

    if-gez v20, :cond_54

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchMinMajor:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v13, v0

    .line 265
    :cond_54
    add-float v19, v19, v13

    .line 267
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->isNaN(F)Z

    move-result v20

    if-nez v20, :cond_6c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    move/from16 v20, v0

    cmpl-float v20, v13, v20

    if-lez v20, :cond_70

    .line 268
    :cond_6c
    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    .line 270
    :cond_70
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->isNaN(F)Z

    move-result v20

    if-nez v20, :cond_86

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    move/from16 v20, v0

    cmpg-float v20, v13, v20

    if-gez v20, :cond_8a

    .line 271
    :cond_86
    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    .line 274
    :cond_8a
    if-eqz v10, :cond_c2

    .line 275
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    move/from16 v20, v0

    sub-float v20, v13, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->signum(F)F

    move-result v20

    move/from16 v0, v20

    float-to-int v8, v0

    .line 276
    .local v8, "directionSig":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v8, v0, :cond_af

    if-nez v8, :cond_c2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    move/from16 v20, v0

    if-nez v20, :cond_c2

    .line 278
    :cond_af
    move-object/from16 v0, p0

    iput v8, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    .line 279
    if-ge v9, v11, :cond_d4

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v17

    .line 281
    .local v17, "time":J
    :goto_bb
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    .line 282
    const/4 v3, 0x0

    .line 257
    .end local v8    # "directionSig":I
    .end local v17    # "time":J
    :cond_c2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_32

    .line 250
    .end local v3    # "accept":Z
    .end local v9    # "h":I
    .end local v10    # "hasLastAccepted":Z
    .end local v11    # "historySize":I
    .end local v12    # "i":I
    .end local v13    # "major":F
    .end local v15    # "pointerSampleCount":I
    .end local v16    # "sampleCount":I
    .end local v19    # "total":F
    :cond_c6
    const/4 v3, 0x0

    goto/16 :goto_17

    .line 254
    .restart local v3    # "accept":Z
    .restart local v12    # "i":I
    .restart local v16    # "sampleCount":I
    .restart local v19    # "total":F
    :cond_c9
    const/4 v10, 0x0

    goto/16 :goto_2b

    .line 262
    .restart local v9    # "h":I
    .restart local v10    # "hasLastAccepted":Z
    .restart local v11    # "historySize":I
    .restart local v15    # "pointerSampleCount":I
    :cond_cc
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v13

    .restart local v13    # "major":F
    goto/16 :goto_3c

    .line 279
    .restart local v8    # "directionSig":I
    :cond_d4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v17

    goto :goto_bb

    .line 286
    .end local v8    # "directionSig":I
    .end local v13    # "major":F
    :cond_d9
    add-int v16, v16, v15

    .line 253
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1c

    .line 289
    .end local v9    # "h":I
    .end local v10    # "hasLastAccepted":Z
    .end local v11    # "historySize":I
    .end local v15    # "pointerSampleCount":I
    :cond_df
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v4, v19, v20

    .line 291
    .local v4, "avg":F
    if-eqz v3, :cond_136

    .line 292
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    move/from16 v21, v0

    add-float v20, v20, v21

    add-float v20, v20, v4

    const/high16 v21, 0x40400000

    div-float v14, v20, v21

    .line 293
    .local v14, "newAccepted":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    move/from16 v20, v0

    add-float v20, v20, v14

    const/high16 v21, 0x40000000

    div-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    .line 294
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    move/from16 v20, v0

    add-float v20, v20, v14

    const/high16 v21, 0x40000000

    div-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    .line 295
    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    .line 296
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    .line 297
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    .line 299
    .end local v14    # "newAccepted":F
    :cond_136
    return-void
.end method

.method private clearTouchHistory()V
    .registers 3

    .prologue
    const/high16 v0, 0x7fc00000

    .line 306
    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    .line 307
    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    .line 308
    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    .line 309
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    .line 310
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    .line 311
    return-void
.end method

.method private getArea(Landroid/view/MotionEvent;)V
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, "bInitialized":Z
    const/4 v2, 0x0

    .local v2, "focusX":F
    const/4 v3, 0x0

    .line 411
    .local v3, "focusY":F
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    invoke-virtual {v7}, Landroid/view/ScaleGestureDetector$SaveState;->reset()V

    .line 413
    invoke-direct {p0, p1}, Landroid/view/ScaleGestureDetector;->addTouchHistory(Landroid/view/MotionEvent;)V

    .line 415
    iget v7, p0, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    if-ne v7, v8, :cond_5f

    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 419
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 420
    .local v6, "y":F
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mDoubleTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 421
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mDoubleTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 422
    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    cmpl-float v7, v2, v5

    if-lez v7, :cond_57

    sub-float v7, v2, v5

    :goto_2c
    iget v10, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    add-float/2addr v7, v10

    iput v7, v9, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    .line 423
    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    cmpl-float v7, v3, v6

    if-lez v7, :cond_5a

    sub-float v7, v3, v6

    :goto_39
    iget v10, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    add-float/2addr v7, v10

    iput v7, v9, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    .line 424
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iget-object v10, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v10, v10, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    mul-float/2addr v9, v10

    iput v9, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    .line 425
    cmpg-float v7, v6, v3

    if-gez v7, :cond_5d

    move v7, v8

    :goto_50
    iput-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    .line 466
    .end local v5    # "x":F
    .end local v6    # "y":F
    :goto_52
    iput v2, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 467
    iput v3, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 468
    return-void

    .line 422
    .restart local v5    # "x":F
    .restart local v6    # "y":F
    :cond_57
    sub-float v7, v5, v2

    goto :goto_2c

    .line 423
    :cond_5a
    sub-float v7, v6, v3

    goto :goto_39

    .line 425
    :cond_5d
    const/4 v7, 0x0

    goto :goto_50

    .line 427
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_5f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 428
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_64
    if-ge v4, v1, :cond_b7

    .line 430
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 431
    .restart local v5    # "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 433
    .restart local v6    # "y":F
    if-eqz v0, :cond_a5

    .line 434
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    cmpl-float v7, v7, v5

    if-lez v7, :cond_7c

    .line 435
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v5, v7, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    .line 437
    :cond_7c
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    cmpl-float v7, v7, v6

    if-lez v7, :cond_88

    .line 438
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v6, v7, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    .line 440
    :cond_88
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    cmpg-float v7, v7, v5

    if-gez v7, :cond_94

    .line 441
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v5, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    .line 443
    :cond_94
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    cmpg-float v7, v7, v6

    if-gez v7, :cond_a0

    .line 444
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v6, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    .line 454
    :cond_a0
    :goto_a0
    add-float/2addr v2, v5

    .line 455
    add-float/2addr v3, v6

    .line 428
    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    .line 447
    :cond_a5
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v5, v7, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    .line 448
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v5, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    .line 449
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v6, v7, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    .line 450
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v6, v7, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    .line 451
    const/4 v0, 0x1

    goto :goto_a0

    .line 458
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_b7
    int-to-float v7, v1

    div-float/2addr v2, v7

    .line 459
    int-to-float v7, v1

    div-float/2addr v3, v7

    .line 460
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    .line 461
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    .line 462
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    mul-float/2addr v8, v9

    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v9, v9, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iget-object v10, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v10, v10, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, v7, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    goto/16 :goto_52
.end method

.method private inDoubleTapMode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 479
    iget v1, p0, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 471
    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    .line 473
    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    .line 474
    iput v1, p0, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    .line 475
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->clearTouchHistory()V

    .line 476
    return-void
.end method


# virtual methods
.method public getAreaRateThreshold()F
    .registers 2

    .prologue
    .line 685
    iget v0, p0, Landroid/view/ScaleGestureDetector;->AREA_RATE_THRESHOLD:F

    return v0
.end method

.method public getAreaThreshold()F
    .registers 2

    .prologue
    .line 669
    iget v0, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F

    return v0
.end method

.method public getCurrentSpan()F
    .registers 2

    .prologue
    .line 563
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public getCurrentSpanX()F
    .registers 2

    .prologue
    .line 573
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getCurrentSpanY()F
    .registers 2

    .prologue
    .line 583
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getEnableEdgeZoom()Z
    .registers 2

    .prologue
    .line 693
    const/4 v0, 0x0

    return v0
.end method

.method public getEventTime()J
    .registers 3

    .prologue
    .line 653
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    return-wide v0
.end method

.method public getFocusX()F
    .registers 2

    .prologue
    .line 539
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .registers 2

    .prologue
    .line 553
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .registers 2

    .prologue
    .line 593
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public getPreviousSpanX()F
    .registers 2

    .prologue
    .line 603
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getPreviousSpanY()F
    .registers 2

    .prologue
    .line 613
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getScaleFactor()F
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/high16 v2, 0x3f800000

    .line 624
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inDoubleTapMode()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 628
    iget-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-eqz v3, :cond_15

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_21

    :cond_15
    iget-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-nez v3, :cond_3c

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3c

    :cond_21
    const/4 v0, 0x1

    .line 631
    .local v0, "scaleUp":Z
    :goto_22
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    div-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v3

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000

    mul-float v1, v3, v4

    .line 632
    .local v1, "spanDiff":F
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_3e

    .line 634
    .end local v0    # "scaleUp":Z
    .end local v1    # "spanDiff":F
    :cond_3b
    :goto_3b
    return v2

    .line 628
    :cond_3c
    const/4 v0, 0x0

    goto :goto_22

    .line 632
    .restart local v0    # "scaleUp":Z
    .restart local v1    # "spanDiff":F
    :cond_3e
    if-eqz v0, :cond_42

    add-float/2addr v2, v1

    goto :goto_3b

    :cond_42
    sub-float/2addr v2, v1

    goto :goto_3b

    .line 634
    .end local v0    # "scaleUp":Z
    .end local v1    # "spanDiff":F
    :cond_44
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3b

    iget v2, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    div-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    goto :goto_3b
.end method

.method public getTimeDelta()J
    .registers 5

    .prologue
    .line 644
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iget-wide v2, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isEdgeZoomInProgress()Z
    .registers 2

    .prologue
    .line 525
    const/4 v0, 0x0

    return v0
.end method

.method public isInProgress()Z
    .registers 2

    .prologue
    .line 517
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    return v0
.end method

.method public isQuickScaleEnabled()Z
    .registers 2

    .prologue
    .line 510
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 332
    .local v0, "action":I
    iget-boolean v5, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz v5, :cond_16

    .line 333
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 336
    :cond_16
    iget-boolean v5, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-nez v5, :cond_ef

    .line 337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_26

    if-eq v0, v3, :cond_26

    const/4 v5, 0x3

    if-ne v0, v5, :cond_2a

    .line 338
    :cond_26
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->reset()V

    .line 403
    :cond_29
    :goto_29
    return v3

    .line 340
    :cond_2a
    invoke-direct {p0, p1}, Landroid/view/ScaleGestureDetector;->getArea(Landroid/view/MotionEvent;)V

    .line 341
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v6, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_d7

    .line 342
    iget-boolean v5, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    if-nez v5, :cond_47

    iget-boolean v5, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    if-nez v5, :cond_47

    .line 343
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v5, p0, Landroid/view/ScaleGestureDetector;->mTempLenBeforeSqrt:F

    .line 344
    iput-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    .line 346
    :cond_47
    iget-boolean v5, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    if-eqz v5, :cond_51

    .line 347
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v5, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    .line 351
    :cond_51
    iget-boolean v5, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    if-eqz v5, :cond_ab

    .line 352
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v6, p0, Landroid/view/ScaleGestureDetector;->mTempLenBeforeSqrt:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a2

    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v6, p0, Landroid/view/ScaleGestureDetector;->mTempLenBeforeSqrt:F

    div-float v1, v5, v6

    .line 359
    .local v1, "areaRate":F
    :goto_67
    iget-boolean v5, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    if-eqz v5, :cond_c9

    iget v5, p0, Landroid/view/ScaleGestureDetector;->AREA_RATE_THRESHOLD:F

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_c7

    move v2, v3

    .line 361
    .local v2, "scaleDecision":Z
    :goto_72
    if-eqz v2, :cond_29

    .line 362
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iput v5, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v5, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 363
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iput v5, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v5, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 364
    iget-wide v5, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v5, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    .line 365
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v5, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iput v5, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    .line 366
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v5, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v5

    iput-boolean v5, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 367
    const-string v5, "ScaleGestureDetector"

    const-string v6, "TwScaleGestureDetector"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iput-boolean v4, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    goto :goto_29

    .line 352
    .end local v1    # "areaRate":F
    .end local v2    # "scaleDecision":Z
    :cond_a2
    iget v5, p0, Landroid/view/ScaleGestureDetector;->mTempLenBeforeSqrt:F

    iget-object v6, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v6, v6, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    div-float v1, v5, v6

    goto :goto_67

    .line 355
    :cond_ab
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v6, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_be

    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v6, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    div-float v1, v5, v6

    .restart local v1    # "areaRate":F
    :goto_bd
    goto :goto_67

    .end local v1    # "areaRate":F
    :cond_be
    iget v5, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    iget-object v6, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v6, v6, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    div-float v1, v5, v6

    goto :goto_bd

    .restart local v1    # "areaRate":F
    :cond_c7
    move v2, v4

    .line 359
    goto :goto_72

    :cond_c9
    iget-boolean v5, p0, Landroid/view/ScaleGestureDetector;->mAreaRateCalculating:Z

    if-eqz v5, :cond_d5

    iget v5, p0, Landroid/view/ScaleGestureDetector;->AREA_RATE_THRESHOLD:F

    cmpl-float v5, v1, v5

    if-lez v5, :cond_d5

    move v2, v3

    goto :goto_72

    :cond_d5
    move v2, v4

    goto :goto_72

    .line 371
    .end local v1    # "areaRate":F
    :cond_d7
    if-ne v0, v7, :cond_29

    .line 372
    iget-boolean v4, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    if-eqz v4, :cond_29

    .line 373
    iget v4, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 374
    iget v4, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 375
    iget v4, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iput v4, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    .line 376
    iget-wide v4, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v4, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    goto/16 :goto_29

    .line 382
    :cond_ef
    if-ne v0, v7, :cond_12d

    .line 383
    invoke-direct {p0, p1}, Landroid/view/ScaleGestureDetector;->getArea(Landroid/view/MotionEvent;)V

    .line 384
    iget-object v4, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v4, v4, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-lez v4, :cond_29

    .line 385
    iget-object v4, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v4, v4, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iput v4, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    .line 386
    iget-object v4, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v4, v4, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    iput v4, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    .line 387
    iget-object v4, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v4, v4, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v4, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    .line 389
    iget-object v4, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v4, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    .line 395
    :goto_117
    iget-boolean v4, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    if-eqz v4, :cond_29

    .line 396
    iget v4, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 397
    iget v4, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 398
    iget v4, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iput v4, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    .line 399
    iget-wide v4, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v4, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    goto/16 :goto_29

    .line 391
    :cond_12d
    iget-object v4, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v4, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 392
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto :goto_117
.end method

.method public setAreaRateThreshold(F)V
    .registers 2
    .param p1, "areaRate"    # F

    .prologue
    .line 677
    iput p1, p0, Landroid/view/ScaleGestureDetector;->AREA_RATE_THRESHOLD:F

    .line 678
    return-void
.end method

.method public setAreaThreshold(F)V
    .registers 2
    .param p1, "threshold"    # F

    .prologue
    .line 661
    iput p1, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F

    .line 662
    return-void
.end method

.method public setEnableEdgeZoom(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 701
    return-void
.end method

.method public setQuickScaleEnabled(Z)V
    .registers 6
    .param p1, "scales"    # Z

    .prologue
    .line 489
    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    .line 490
    iget-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v1, :cond_1a

    .line 491
    new-instance v0, Landroid/view/ScaleGestureDetector$1;

    invoke-direct {v0, p0}, Landroid/view/ScaleGestureDetector$1;-><init>(Landroid/view/ScaleGestureDetector;)V

    .line 501
    .local v0, "gestureListener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    .line 503
    .end local v0    # "gestureListener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    :cond_1a
    return-void
.end method

.method public setUseTwoFingerSweep(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 711
    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mUseTwoFingerSweep:Z

    .line 712
    return-void
.end method
