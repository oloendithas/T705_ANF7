.class public Lcom/android/server/ssrm/TouchSeparation;
.super Ljava/lang/Object;
.source "TouchSeparation.java"


# static fields
.field static final TOUCH_DEFAULT:I

.field static final TOUCH_DEFAULT_REAL:Ljava/lang/String;

.field static final TOUCH_MID:I

.field static final TOUCH_MID_REAL:Ljava/lang/String;

.field static final TOUCH_ZERO:I

.field static final TOUCH_ZERO_REAL:Ljava/lang/String;

.field private static instance:Lcom/android/server/ssrm/TouchSeparation;


# instance fields
.field final ACTION_DVFS_SSRM_REQUEST:Ljava/lang/String;

.field final ACTION_DVFS_SSRM_REQUEST_KNOX:Ljava/lang/String;

.field final IS_VISIBLE_WINDOW:Ljava/lang/String;

.field final RESPONSE_AXT9INFO:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field private final handler:Landroid/os/Handler;

.field mCurrentTouchState:I

.field mIsSetDefault:Z

.field mTouchMidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTouchStateByIntent:I

.field mTouchStateByMap:I

.field mTouchStateBySIP:Z

.field mTouchZeroMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUpdateForceTouchState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x4b

    const/16 v4, 0x14

    const/16 v1, 0x12

    const/4 v3, -0x1

    const/16 v2, 0x13

    .line 69
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_LT03:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_V1:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_V2:Z

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    const/4 v0, 0x3

    sput v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    .line 71
    const/4 v0, 0x4

    sput v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID:I

    .line 72
    const/4 v0, 0x4

    sput v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO:I

    .line 74
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/TouchSeparation;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT_REAL:Ljava/lang/String;

    .line 78
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/server/ssrm/TouchSeparation;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID_REAL:Ljava/lang/String;

    .line 82
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/android/server/ssrm/TouchSeparation;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO_REAL:Ljava/lang/String;

    .line 153
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->instance:Lcom/android/server/ssrm/TouchSeparation;

    return-void

    .line 85
    :cond_1
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v1, "_ha_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v1, "_hf_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    :cond_2
    sput v5, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    .line 89
    sput v4, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID:I

    .line 90
    sput v4, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO:I

    .line 92
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Lcom/android/server/ssrm/TouchSeparation;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT_REAL:Ljava/lang/String;

    .line 96
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    invoke-static {v0}, Lcom/android/server/ssrm/TouchSeparation;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID_REAL:Ljava/lang/String;

    .line 100
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    invoke-static {v0}, Lcom/android/server/ssrm/TouchSeparation;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO_REAL:Ljava/lang/String;

    goto :goto_0

    .line 103
    :cond_3
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_CHAGALL:Z

    if-eqz v0, :cond_4

    .line 104
    const/16 v0, 0x64

    sput v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    .line 105
    sput v5, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID:I

    .line 106
    sput v5, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO:I

    .line 108
    new-array v0, v4, [I

    fill-array-data v0, :array_6

    invoke-static {v0}, Lcom/android/server/ssrm/TouchSeparation;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT_REAL:Ljava/lang/String;

    .line 112
    new-array v0, v2, [I

    fill-array-data v0, :array_7

    invoke-static {v0}, Lcom/android/server/ssrm/TouchSeparation;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID_REAL:Ljava/lang/String;

    .line 116
    new-array v0, v2, [I

    fill-array-data v0, :array_8

    invoke-static {v0}, Lcom/android/server/ssrm/TouchSeparation;->x([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO_REAL:Ljava/lang/String;

    goto :goto_0

    .line 120
    :cond_4
    sput v3, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    .line 121
    sput v3, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID:I

    .line 122
    sput v3, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO:I

    .line 123
    const-string v0, ""

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT_REAL:Ljava/lang/String;

    .line 124
    const-string v0, ""

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID_REAL:Ljava/lang/String;

    .line 125
    const-string v0, ""

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO_REAL:Ljava/lang/String;

    goto/16 :goto_0

    .line 74
    nop

    :array_0
    .array-data 4
        0x9
        0x1f
        0xe
        0x25
        0x10
        0x13
        0xe
        0xe
        0x1f
        0x8
        0x25
        0x16
        0x1f
        0xc
        0x1f
        0x16
        0x56
        0x49
    .end array-data

    .line 78
    :array_1
    .array-data 4
        0x9
        0x1f
        0xe
        0x25
        0x10
        0x13
        0xe
        0xe
        0x1f
        0x8
        0x25
        0x16
        0x1f
        0xc
        0x1f
        0x16
        0x56
        0x4e
    .end array-data

    .line 82
    :array_2
    .array-data 4
        0x9
        0x1f
        0xe
        0x25
        0x10
        0x13
        0xe
        0xe
        0x1f
        0x8
        0x25
        0x16
        0x1f
        0xc
        0x1f
        0x16
        0x56
        0x4e
    .end array-data

    .line 92
    :array_3
    .array-data 4
        0x9
        0x1f
        0xe
        0x25
        0x10
        0x13
        0xe
        0xe
        0x1f
        0x8
        0x25
        0x16
        0x1f
        0xc
        0x1f
        0x16
        0x56
        0x4d
        0x4f
    .end array-data

    .line 96
    :array_4
    .array-data 4
        0x9
        0x1f
        0xe
        0x25
        0x10
        0x13
        0xe
        0xe
        0x1f
        0x8
        0x25
        0x16
        0x1f
        0xc
        0x1f
        0x16
        0x56
        0x48
        0x4a
    .end array-data

    .line 100
    :array_5
    .array-data 4
        0x9
        0x1f
        0xe
        0x25
        0x10
        0x13
        0xe
        0xe
        0x1f
        0x8
        0x25
        0x16
        0x1f
        0xc
        0x1f
        0x16
        0x56
        0x48
        0x4a
    .end array-data

    .line 108
    :array_6
    .array-data 4
        0x9
        0x1f
        0xe
        0x25
        0x10
        0x13
        0xe
        0xe
        0x1f
        0x8
        0x25
        0x16
        0x1f
        0xc
        0x1f
        0x16
        0x56
        0x4b
        0x4a
        0x4a
    .end array-data

    .line 112
    :array_7
    .array-data 4
        0x9
        0x1f
        0xe
        0x25
        0x10
        0x13
        0xe
        0xe
        0x1f
        0x8
        0x25
        0x16
        0x1f
        0xc
        0x1f
        0x16
        0x56
        0x4d
        0x4f
    .end array-data

    .line 116
    :array_8
    .array-data 4
        0x9
        0x1f
        0xe
        0x25
        0x10
        0x13
        0xe
        0xe
        0x1f
        0x8
        0x25
        0x16
        0x1f
        0xc
        0x1f
        0x16
        0x56
        0x4d
        0x4f
    .end array-data
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/16 v2, 0x1c

    const/16 v3, 0x19

    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/server/ssrm/TouchSeparation;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->TAG:Ljava/lang/String;

    .line 34
    const/16 v0, 0x2a

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/android/server/ssrm/TouchSeparation;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->ACTION_DVFS_SSRM_REQUEST:Ljava/lang/String;

    .line 40
    const/16 v0, 0x3a

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/android/server/ssrm/TouchSeparation;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->ACTION_DVFS_SSRM_REQUEST_KNOX:Ljava/lang/String;

    .line 47
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Lcom/android/server/ssrm/TouchSeparation;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->RESPONSE_AXT9INFO:Ljava/lang/String;

    .line 52
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    invoke-static {v0}, Lcom/android/server/ssrm/TouchSeparation;->x([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->IS_VISIBLE_WINDOW:Ljava/lang/String;

    .line 129
    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    iput v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mCurrentTouchState:I

    .line 131
    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    iput v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateByMap:I

    .line 133
    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    iput v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateByIntent:I

    .line 135
    iput-boolean v1, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateBySIP:Z

    .line 137
    iput-boolean v1, p0, Lcom/android/server/ssrm/TouchSeparation;->mUpdateForceTouchState:Z

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchZeroMap:Ljava/util/HashMap;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchMidMap:Ljava/util/HashMap;

    .line 210
    new-instance v0, Lcom/android/server/ssrm/TouchSeparation$1;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/TouchSeparation$1;-><init>(Lcom/android/server/ssrm/TouchSeparation;)V

    iput-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->handler:Landroid/os/Handler;

    .line 218
    iput-boolean v1, p0, Lcom/android/server/ssrm/TouchSeparation;->mIsSetDefault:Z

    .line 163
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_LT03:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_V1:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_V2:Z

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchZeroMap:Ljava/util/HashMap;

    const-string v1, "Launcher"

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    invoke-static {v2}, Lcom/android/server/ssrm/TouchSeparation;->x([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :goto_0
    return-void

    .line 169
    :cond_1
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_CHAGALL:Z

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchZeroMap:Ljava/util/HashMap;

    const-string v1, "Snote"

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    invoke-static {v2}, Lcom/android/server/ssrm/TouchSeparation;->x([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchZeroMap:Ljava/util/HashMap;

    const-string v1, "Launcher"

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    invoke-static {v2}, Lcom/android/server/ssrm/TouchSeparation;->x([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchZeroMap:Ljava/util/HashMap;

    const-string v1, "Gallery"

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    invoke-static {v2}, Lcom/android/server/ssrm/TouchSeparation;->x([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 29
    nop

    :array_0
    .array-data 4
        0x29
        0x29
        0x28
        0x37
        0xc
        0x48
        0x40
        0x2e
        0x15
        0xf
        0x19
        0x12
        0x29
        0x1f
        0xa
        0x1b
        0x8
        0x1b
        0xe
        0x13
        0x15
        0x14
    .end array-data

    .line 34
    :array_1
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x13
        0x14
        0xe
        0x1f
        0x14
        0xe
        0x54
        0x1b
        0x19
        0xe
        0x13
        0x15
        0x14
        0x54
        0x29
        0x29
        0x28
        0x37
        0x25
        0x28
        0x3f
        0x2b
        0x2f
        0x3f
        0x29
        0x2e
    .end array-data

    .line 40
    :array_2
    .array-data 4
        0x9
        0x1f
        0x19
        0x25
        0x19
        0x15
        0x14
        0xe
        0x1b
        0x13
        0x14
        0x1f
        0x8
        0x25
        0x4b
        0x54
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x13
        0x14
        0xe
        0x1f
        0x14
        0xe
        0x54
        0x1b
        0x19
        0xe
        0x13
        0x15
        0x14
        0x54
        0x29
        0x29
        0x28
        0x37
        0x25
        0x28
        0x3f
        0x2b
        0x2f
        0x3f
        0x29
        0x2e
    .end array-data

    .line 47
    :array_3
    .array-data 4
        0x28
        0x1f
        0x9
        0xa
        0x15
        0x14
        0x9
        0x1f
        0x3b
        0x2
        0x2e
        0x43
        0x33
        0x14
        0x1c
        0x15
    .end array-data

    .line 52
    :array_4
    .array-data 4
        0x3b
        0x2
        0x2e
        0x43
        0x33
        0x37
        0x3f
        0x54
        0x13
        0x9
        0x2c
        0x13
        0x9
        0x13
        0x18
        0x16
        0x1f
        0x2d
        0x13
        0x14
        0x1e
        0x15
        0xd
    .end array-data

    .line 165
    :array_5
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x54
        0x16
        0x1b
        0xf
        0x14
        0x19
        0x12
        0x1f
        0x8
    .end array-data

    .line 171
    :array_6
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x9
        0x14
        0x15
        0xe
        0x1f
    .end array-data

    .line 177
    :array_7
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x54
        0x16
        0x1b
        0xf
        0x14
        0x19
        0x12
        0x1f
        0x8
    .end array-data

    .line 182
    :array_8
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x1b
        0x16
        0x16
        0x1f
        0x8
        0x3
        0x49
        0x1e
    .end array-data
.end method

.method public static getInstance()Lcom/android/server/ssrm/TouchSeparation;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/android/server/ssrm/TouchSeparation;->instance:Lcom/android/server/ssrm/TouchSeparation;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/android/server/ssrm/TouchSeparation;

    invoke-direct {v0}, Lcom/android/server/ssrm/TouchSeparation;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->instance:Lcom/android/server/ssrm/TouchSeparation;

    .line 159
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/TouchSeparation;->instance:Lcom/android/server/ssrm/TouchSeparation;

    return-object v0
.end method

.method public static notifyFgAppChanged(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    .line 272
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->SSRM_TOUCH_SEPARATION:Z

    if-eqz v1, :cond_0

    .line 273
    invoke-static {}, Lcom/android/server/ssrm/TouchSeparation;->getInstance()Lcom/android/server/ssrm/TouchSeparation;

    move-result-object v0

    .line 274
    .local v0, "instace":Lcom/android/server/ssrm/TouchSeparation;
    if-eqz v0, :cond_0

    .line 275
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/ssrm/TouchSeparation;->onFgAppChanged(Landroid/content/Context;Ljava/lang/String;I)V

    .line 278
    .end local v0    # "instace":Lcom/android/server/ssrm/TouchSeparation;
    :cond_0
    return-void
.end method

.method private onFgAppChanged(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I

    .prologue
    .line 282
    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/TouchSeparation;->checkTouchFilterPackage(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateByMap:I

    .line 283
    invoke-virtual {p0}, Lcom/android/server/ssrm/TouchSeparation;->updateTouchMode()V

    .line 284
    return-void
.end method

.method static x([I)Ljava/lang/String;
    .locals 1
    .param p0, "raw"    # [I

    .prologue
    .line 287
    invoke-static {p0}, Lcom/android/server/ssrm/SSRMUtil;->x([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected calculateCurrentTouchMode()I
    .locals 2

    .prologue
    .line 238
    iget v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateByIntent:I

    sget v1, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    if-eq v0, v1, :cond_0

    .line 239
    iget v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateByIntent:I

    .line 249
    :goto_0
    return v0

    .line 242
    :cond_0
    iget v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateByMap:I

    sget v1, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    if-eq v0, v1, :cond_2

    .line 243
    iget-boolean v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateBySIP:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 244
    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    goto :goto_0

    .line 246
    :cond_1
    iget v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateByMap:I

    goto :goto_0

    .line 249
    :cond_2
    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    goto :goto_0
.end method

.method checkTouchFilterPackage(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchZeroMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO:I

    .line 145
    :goto_0
    return v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchMidMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID:I

    goto :goto_0

    .line 145
    :cond_1
    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 191
    iget-object v1, p0, Lcom/android/server/ssrm/TouchSeparation;->ACTION_DVFS_SSRM_REQUEST:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ssrm/TouchSeparation;->ACTION_DVFS_SSRM_REQUEST_KNOX:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    :cond_0
    const-string v1, "SSRM_STATUS_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "StatusName":Ljava/lang/String;
    const-string v1, "TouchSeparation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    const-string v1, "SSRM_STATUS_VALUE"

    sget v2, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateByIntent:I

    .line 196
    invoke-virtual {p0}, Lcom/android/server/ssrm/TouchSeparation;->updateTouchMode()V

    .line 208
    .end local v0    # "StatusName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 198
    :cond_2
    iget-object v1, p0, Lcom/android/server/ssrm/TouchSeparation;->RESPONSE_AXT9INFO:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 199
    iget-object v1, p0, Lcom/android/server/ssrm/TouchSeparation;->IS_VISIBLE_WINDOW:Ljava/lang/String;

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateBySIP:Z

    .line 200
    invoke-virtual {p0}, Lcom/android/server/ssrm/TouchSeparation;->updateTouchMode()V

    goto :goto_0

    .line 201
    :cond_3
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 202
    iput-boolean v4, p0, Lcom/android/server/ssrm/TouchSeparation;->mUpdateForceTouchState:Z

    .line 203
    iget-object v1, p0, Lcom/android/server/ssrm/TouchSeparation;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 204
    :cond_4
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ssrm/TouchSeparation;->mUpdateForceTouchState:Z

    .line 206
    iget-object v1, p0, Lcom/android/server/ssrm/TouchSeparation;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected updateTouchMode()V
    .locals 1

    .prologue
    .line 221
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mIsSetDefault:Z

    if-nez v0, :cond_1

    .line 223
    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/TouchSeparation;->updateTouchModeSysFS(I)V

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mIsSetDefault:Z

    .line 230
    :cond_1
    :goto_0
    return-void

    .line 228
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mIsSetDefault:Z

    .line 229
    invoke-virtual {p0}, Lcom/android/server/ssrm/TouchSeparation;->calculateCurrentTouchMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/TouchSeparation;->updateTouchModeSysFS(I)V

    goto :goto_0
.end method

.method protected updateTouchModeSysFS(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 257
    iget v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mCurrentTouchState:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mUpdateForceTouchState:Z

    if-eqz v0, :cond_1

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTouchModeSysFS :: new value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO:I

    if-ne p1, v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO_REAL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->sendTspCmd(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :goto_0
    iput p1, p0, Lcom/android/server/ssrm/TouchSeparation;->mCurrentTouchState:I

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mUpdateForceTouchState:Z

    .line 269
    :cond_1
    return-void

    .line 261
    :cond_2
    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID:I

    if-ne p1, v0, :cond_3

    .line 262
    iget-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID_REAL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->sendTspCmd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_3
    iget-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT_REAL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->sendTspCmd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
