.class public Lcom/samsung/android/sdk/cover/ScoverState;
.super Ljava/lang/Object;
.source "ScoverState.java"


# static fields
.field public static final COLOR_BLACK:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_BLUSH_PINK:I = 0x3

.field public static final COLOR_CARBON_METAL:I = 0x9

.field public static final COLOR_CHARCOAL_GRAY:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_CLASSIC_WHITE:I = 0x2

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final COLOR_GRAYISH_BLUE:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_INDIGO_BLUE:I = 0x6

.field public static final COLOR_JET_BLACK:I = 0x1

.field public static final COLOR_MAGENTA:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_MINT_BLUE:I = 0x8

.field public static final COLOR_MUSTARD_YELLOW:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_OATMEAL:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_OATMEAL_BEIGE:I = 0x5

.field public static final COLOR_ORANGE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_PEAKCOCK_GREEN:I = 0xa

.field public static final COLOR_PEARL_WHITE:I = 0xd

.field public static final COLOR_PINK:I = 0xc

.field public static final COLOR_PLUM_RED:I = 0x7

.field public static final COLOR_ROSE_GOLD:I = 0xb

.field public static final COLOR_SOFT_PINK:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_WHITE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLOR_WILD_ORANGE:I = 0x4

.field public static final COVER_ATTACHED:Z = true

.field public static final COVER_DETACHED:Z = false

.field public static final SWITCH_STATE_COVER_CLOSE:Z = false

.field public static final SWITCH_STATE_COVER_OPEN:Z = true

.field private static final TAG:Ljava/lang/String; = "ScoverState"

.field public static final TYPE_FLIP_COVER:I = 0x0

.field public static final TYPE_HEALTH_COVER:I = 0x4

.field public static final TYPE_NONE:I = 0x2

.field public static final TYPE_SVIEW_CHARGER_COVER:I = 0x3

.field public static final TYPE_SVIEW_COVER:I = 0x1

.field public static final TYPE_S_CHARGER_COVER:I = 0x5


# instance fields
.field public attached:Z

.field public color:I

.field private heightPixel:I

.field private switchState:Z

.field public type:I

.field private widthPixel:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    .line 259
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    .line 260
    iput v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    .line 261
    iput v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    .line 262
    iput v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    .line 263
    iput-boolean v1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    .line 264
    return-void
.end method

.method public constructor <init>(ZIIII)V
    .locals 1
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-boolean p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    .line 277
    iput p2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    .line 278
    iput p3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    .line 279
    iput p4, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    .line 280
    iput p5, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    .line 282
    return-void
.end method

.method public constructor <init>(ZIIIIZ)V
    .locals 0
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I
    .param p6, "attached"    # Z

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-boolean p1, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    .line 295
    iput p2, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    .line 296
    iput p3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    .line 297
    iput p4, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    .line 298
    iput p5, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    .line 299
    iput-boolean p6, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    .line 300
    return-void
.end method


# virtual methods
.method public getAttachState()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    return v0
.end method

.method public getSwitchState()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    return v0
.end method

.method public getWindowHeight()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    return v0
.end method

.method public getWindowWidth()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 364
    const-string v0, "ScoverState(switchState=%b type=%d color=%d widthPixel=%d heightPixel=%d)"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->switchState:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->color:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->widthPixel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->heightPixel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
