.class public final Lcom/diotek/ime/framework/repository/RepositoryImpl;
.super Ljava/lang/Object;
.source "RepositoryImpl.java"

# interfaces
.implements Lcom/diotek/ime/framework/repository/Repository;


# static fields
.field private static sInstance:Lcom/diotek/ime/framework/repository/Repository;


# instance fields
.field protected mBooleanStateSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mByteStateSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field protected mDoubleStateSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field protected mFloatStateSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected mIntegerStateSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mLongStateSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mObjectStateSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefContext:Landroid/content/Context;

.field private mPreference:Landroid/content/SharedPreferences;

.field protected mShortStateSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field protected mStringStateSet:Ljava/util/HashMap;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->sInstance:Lcom/diotek/ime/framework/repository/Repository;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mPreference:Landroid/content/SharedPreferences;

    .line 22
    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mPrefContext:Landroid/content/Context;

    .line 38
    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mBooleanStateSet:Ljava/util/HashMap;

    .line 39
    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mByteStateSet:Ljava/util/HashMap;

    .line 40
    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mShortStateSet:Ljava/util/HashMap;

    .line 41
    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mIntegerStateSet:Ljava/util/HashMap;

    .line 42
    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mLongStateSet:Ljava/util/HashMap;

    .line 43
    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mFloatStateSet:Ljava/util/HashMap;

    .line 44
    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mDoubleStateSet:Ljava/util/HashMap;

    .line 45
    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mStringStateSet:Ljava/util/HashMap;

    .line 46
    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mObjectStateSet:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mBooleanStateSet:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mByteStateSet:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mShortStateSet:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mIntegerStateSet:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mLongStateSet:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mFloatStateSet:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mDoubleStateSet:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mStringStateSet:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mObjectStateSet:Ljava/util/HashMap;

    .line 58
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/diotek/ime/framework/repository/Repository;
    .locals 4

    .prologue
    .line 25
    const-class v2, Lcom/diotek/ime/framework/repository/RepositoryImpl;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/diotek/ime/framework/repository/RepositoryImpl;->sInstance:Lcom/diotek/ime/framework/repository/Repository;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/diotek/ime/framework/repository/RepositoryImpl;

    invoke-direct {v1}, Lcom/diotek/ime/framework/repository/RepositoryImpl;-><init>()V

    sput-object v1, Lcom/diotek/ime/framework/repository/RepositoryImpl;->sInstance:Lcom/diotek/ime/framework/repository/Repository;

    .line 28
    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyLoader;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyLoader;-><init>()V

    .line 30
    .local v0, "loader":Lcom/diotek/ime/framework/repository/PropertyLoader;
    sget-object v1, Lcom/diotek/ime/framework/repository/RepositoryImpl;->sInstance:Lcom/diotek/ime/framework/repository/Repository;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/diotek/ime/framework/repository/PropertyLoader;->load(Lcom/diotek/ime/framework/repository/Repository;Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    const-string v1, "SamsungIME"

    const-string v3, "Repository initialization was failed!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    sget-object v1, Lcom/diotek/ime/framework/repository/RepositoryImpl;->sInstance:Lcom/diotek/ime/framework/repository/Repository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 25
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public getData(Ljava/lang/String;B)B
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B

    .prologue
    .line 197
    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mByteStateSet:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 198
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mByteStateSet:Ljava/util/HashMap;

    .line 209
    .end local p2    # "defaultValue":B
    :cond_0
    :goto_0
    return p2

    .line 201
    .restart local p2    # "defaultValue":B
    :cond_1
    if-eqz p1, :cond_0

    .line 204
    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mByteStateSet:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    .line 205
    .local v0, "b":Ljava/lang/Byte;
    move v1, p2

    .line 206
    .local v1, "result":B
    if-eqz v0, :cond_2

    .line 207
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    :cond_2
    move p2, v1

    .line 209
    goto :goto_0
.end method

.method public getData(Ljava/lang/String;C)C
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # C

    .prologue
    .line 323
    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mIntegerStateSet:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 324
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mIntegerStateSet:Ljava/util/HashMap;

    .line 335
    .end local p2    # "defaultValue":C
    :cond_0
    :goto_0
    return p2

    .line 327
    .restart local p2    # "defaultValue":C
    :cond_1
    if-eqz p1, :cond_0

    .line 330
    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mIntegerStateSet:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 331
    .local v0, "i":Ljava/lang/Integer;
    move v1, p2

    .line 332
    .local v1, "result":C
    if-eqz v0, :cond_2

    .line 333
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-char v1, v2

    :cond_2
    move p2, v1

    .line 335
    goto :goto_0
.end method

.method public getData(Ljava/lang/String;D)D
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 302
    iget-object v3, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mDoubleStateSet:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 303
    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mDoubleStateSet:Ljava/util/HashMap;

    .line 314
    .end local p2    # "defaultValue":D
    :cond_0
    :goto_0
    return-wide p2

    .line 306
    .restart local p2    # "defaultValue":D
    :cond_1
    if-eqz p1, :cond_0

    .line 309
    iget-object v3, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mDoubleStateSet:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 310
    .local v0, "d":Ljava/lang/Double;
    move-wide v1, p2

    .line 311
    .local v1, "result":D
    if-eqz v0, :cond_2

    .line 312
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :cond_2
    move-wide p2, v1

    .line 314
    goto :goto_0
.end method

.method public getData(Ljava/lang/String;F)F
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    .line 281
    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mFloatStateSet:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 282
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mFloatStateSet:Ljava/util/HashMap;

    .line 293
    .end local p2    # "defaultValue":F
    :cond_0
    :goto_0
    return p2

    .line 285
    .restart local p2    # "defaultValue":F
    :cond_1
    if-eqz p1, :cond_0

    .line 288
    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mFloatStateSet:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 289
    .local v0, "f":Ljava/lang/Float;
    move v1, p2

    .line 290
    .local v1, "result":F
    if-eqz v0, :cond_2

    .line 291
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :cond_2
    move p2, v1

    .line 293
    goto :goto_0
.end method

.method public getData(Ljava/lang/String;I)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 239
    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mIntegerStateSet:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 240
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mIntegerStateSet:Ljava/util/HashMap;

    .line 251
    .end local p2    # "defaultValue":I
    :cond_0
    :goto_0
    return p2

    .line 243
    .restart local p2    # "defaultValue":I
    :cond_1
    if-eqz p1, :cond_0

    .line 246
    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mIntegerStateSet:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 247
    .local v0, "i":Ljava/lang/Integer;
    move v1, p2

    .line 248
    .local v1, "result":I
    if-eqz v0, :cond_2

    .line 249
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    move p2, v1

    .line 251
    goto :goto_0
.end method

.method public getData(Ljava/lang/String;J)J
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 260
    iget-object v3, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mLongStateSet:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 261
    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mLongStateSet:Ljava/util/HashMap;

    .line 272
    .end local p2    # "defaultValue":J
    :cond_0
    :goto_0
    return-wide p2

    .line 264
    .restart local p2    # "defaultValue":J
    :cond_1
    if-eqz p1, :cond_0

    .line 267
    iget-object v3, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mLongStateSet:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 268
    .local v0, "l":Ljava/lang/Long;
    move-wide v1, p2

    .line 269
    .local v1, "result":J
    if-eqz v0, :cond_2

    .line 270
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_2
    move-wide p2, v1

    .line 272
    goto :goto_0
.end method

.method public getData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 365
    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mObjectStateSet:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 366
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mObjectStateSet:Ljava/util/HashMap;

    .line 377
    .end local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p2

    .line 369
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_0

    .line 372
    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mObjectStateSet:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 373
    .local v0, "o":Ljava/lang/Object;
    move-object v1, p2

    .line 374
    .local v1, "result":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 375
    move-object v1, v0

    :cond_2
    move-object p2, v1

    .line 377
    goto :goto_0
.end method

.method public getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 344
    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mStringStateSet:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 345
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mStringStateSet:Ljava/util/HashMap;

    .line 356
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 348
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_0

    .line 351
    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mStringStateSet:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 352
    .local v1, "s":Ljava/lang/String;
    move-object v0, p2

    .line 353
    .local v0, "result":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 354
    move-object v0, v1

    :cond_2
    move-object p2, v0

    .line 356
    goto :goto_0
.end method

.method public getData(Ljava/lang/String;S)S
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # S

    .prologue
    .line 218
    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mShortStateSet:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 219
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mShortStateSet:Ljava/util/HashMap;

    .line 230
    .end local p2    # "defaultValue":S
    :cond_0
    :goto_0
    return p2

    .line 222
    .restart local p2    # "defaultValue":S
    :cond_1
    if-eqz p1, :cond_0

    .line 225
    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mShortStateSet:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    .line 226
    .local v1, "s":Ljava/lang/Short;
    move v0, p2

    .line 227
    .local v0, "result":S
    if-eqz v1, :cond_2

    .line 228
    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    :cond_2
    move p2, v0

    .line 230
    goto :goto_0
.end method

.method public getData(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 176
    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mBooleanStateSet:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 177
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mBooleanStateSet:Ljava/util/HashMap;

    .line 188
    .end local p2    # "defaultValue":Z
    :cond_0
    :goto_0
    return p2

    .line 180
    .restart local p2    # "defaultValue":Z
    :cond_1
    if-eqz p1, :cond_0

    .line 183
    iget-object v2, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mBooleanStateSet:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 184
    .local v0, "b":Ljava/lang/Boolean;
    move v1, p2

    .line 185
    .local v1, "result":Z
    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_2
    move p2, v1

    .line 188
    goto :goto_0
.end method

.method public getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public setData(Ljava/lang/String;B)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # B

    .prologue
    .line 77
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mByteStateSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mByteStateSet:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_0
    return-void
.end method

.method public setData(Ljava/lang/String;C)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C

    .prologue
    .line 143
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mIntegerStateSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mIntegerStateSet:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_0
    return-void
.end method

.method public setData(Ljava/lang/String;D)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 132
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mDoubleStateSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mDoubleStateSet:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    return-void
.end method

.method public setData(Ljava/lang/String;F)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 121
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mFloatStateSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mFloatStateSet:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    return-void
.end method

.method public setData(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mIntegerStateSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mIntegerStateSet:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_0
    return-void
.end method

.method public setData(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 110
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mLongStateSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mLongStateSet:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_0
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mObjectStateSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mObjectStateSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_0
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mStringStateSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mStringStateSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_0
    return-void
.end method

.method public setData(Ljava/lang/String;S)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .prologue
    .line 88
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mShortStateSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mShortStateSet:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_0
    return-void
.end method

.method public setData(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 66
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mBooleanStateSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mBooleanStateSet:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    return-void
.end method

.method public setdefaultPreferenceContext(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mPrefContext:Landroid/content/Context;

    .line 383
    iget-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mPrefContext:Landroid/content/Context;

    const-string v1, "com.sec.android.inputmethod_preferences"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/RepositoryImpl;->mPreference:Landroid/content/SharedPreferences;

    .line 384
    return-void
.end method
