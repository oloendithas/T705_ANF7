.class Landroid/webkitsec/WebHistoryItemClassic;
.super Landroid/webkitsec/WebHistoryItem;
.source "WebHistoryItemClassic.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static sNextId:I


# instance fields
.field private mCustomData:Ljava/lang/Object;

.field private mFavicon:Landroid/graphics/Bitmap;

.field private mFlattenedData:[B

.field private final mId:I

.field private mNativeBridge:I

.field private mTouchIconUrlFromLink:Ljava/lang/String;

.field private mTouchIconUrlServerDefault:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput v0, Landroid/webkitsec/WebHistoryItemClassic;->sNextId:I

    return-void
.end method

.method private constructor <init>(I)V
    .registers 5
    .param p1, "nativeBridge"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/webkitsec/WebHistoryItem;-><init>()V

    .line 49
    const-class v1, Landroid/webkitsec/WebHistoryItemClassic;

    monitor-enter v1

    .line 50
    :try_start_6
    sget v0, Landroid/webkitsec/WebHistoryItemClassic;->sNextId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Landroid/webkitsec/WebHistoryItemClassic;->sNextId:I

    iput v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mId:I

    .line 51
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_17

    .line 52
    iput p1, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    .line 53
    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebHistoryItemClassic;->nativeRef(I)V

    .line 54
    return-void

    .line 51
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method private constructor <init>(Landroid/webkitsec/WebHistoryItemClassic;)V
    .registers 3
    .param p1, "item"    # Landroid/webkitsec/WebHistoryItemClassic;

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/webkitsec/WebHistoryItem;-><init>()V

    .line 79
    iget-object v0, p1, Landroid/webkitsec/WebHistoryItemClassic;->mFlattenedData:[B

    iput-object v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mFlattenedData:[B

    .line 80
    iget v0, p1, Landroid/webkitsec/WebHistoryItemClassic;->mId:I

    iput v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mId:I

    .line 81
    iget-object v0, p1, Landroid/webkitsec/WebHistoryItemClassic;->mFavicon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mFavicon:Landroid/graphics/Bitmap;

    .line 82
    iget v0, p1, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    iput v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    .line 83
    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    if-eqz v0, :cond_1c

    .line 84
    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebHistoryItemClassic;->nativeRef(I)V

    .line 86
    :cond_1c
    return-void
.end method

.method constructor <init>([B)V
    .registers 5
    .param p1, "data"    # [B

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/webkitsec/WebHistoryItem;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/webkitsec/WebHistoryItemClassic;->mFlattenedData:[B

    .line 69
    const-class v1, Landroid/webkitsec/WebHistoryItemClassic;

    monitor-enter v1

    .line 70
    :try_start_8
    sget v0, Landroid/webkitsec/WebHistoryItemClassic;->sNextId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Landroid/webkitsec/WebHistoryItemClassic;->sNextId:I

    iput v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mId:I

    .line 71
    monitor-exit v1

    .line 72
    return-void

    .line 71
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private native inflate(I[B)I
.end method

.method private native nativeGetFavicon(I)Landroid/graphics/Bitmap;
.end method

.method private native nativeGetFlattenedData(I)[B
.end method

.method private native nativeGetOriginalUrl(I)Ljava/lang/String;
.end method

.method private native nativeGetTitle(I)Ljava/lang/String;
.end method

.method private native nativeGetUrl(I)Ljava/lang/String;
.end method

.method private native nativeRef(I)V
.end method

.method private native nativeUnref(I)V
.end method


# virtual methods
.method public bridge synthetic clone()Landroid/webkitsec/WebHistoryItem;
    .registers 2

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/webkitsec/WebHistoryItemClassic;->clone()Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized clone()Landroid/webkitsec/WebHistoryItemClassic;
    .registers 2

    .prologue
    .line 207
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/WebHistoryItemClassic;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebHistoryItemClassic;-><init>(Landroid/webkitsec/WebHistoryItemClassic;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/webkitsec/WebHistoryItemClassic;->clone()Landroid/webkitsec/WebHistoryItemClassic;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 57
    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    if-eqz v0, :cond_c

    .line 58
    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebHistoryItemClassic;->nativeUnref(I)V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    .line 61
    :cond_c
    return-void
.end method

.method public getCustomData()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mCustomData:Ljava/lang/Object;

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mFavicon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_10

    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    if-eqz v0, :cond_10

    .line 110
    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebHistoryItemClassic;->nativeGetFavicon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mFavicon:Landroid/graphics/Bitmap;

    .line 112
    :cond_10
    iget-object v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mFavicon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getFlattenedData()[B
    .registers 2

    .prologue
    .line 190
    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    if-eqz v0, :cond_b

    .line 191
    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebHistoryItemClassic;->nativeGetFlattenedData(I)[B

    move-result-object v0

    .line 193
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mFlattenedData:[B

    goto :goto_a
.end method

.method public getId()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 90
    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mId:I

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 100
    :goto_5
    return-object v0

    :cond_6
    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebHistoryItemClassic;->nativeGetOriginalUrl(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 105
    :goto_5
    return-object v0

    :cond_6
    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebHistoryItemClassic;->nativeGetTitle(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .registers 8

    .prologue
    .line 125
    iget-object v2, p0, Landroid/webkitsec/WebHistoryItemClassic;->mTouchIconUrlFromLink:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 126
    iget-object v2, p0, Landroid/webkitsec/WebHistoryItemClassic;->mTouchIconUrlFromLink:Ljava/lang/String;

    .line 138
    :goto_6
    return-object v2

    .line 127
    :cond_7
    iget-object v2, p0, Landroid/webkitsec/WebHistoryItemClassic;->mTouchIconUrlServerDefault:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 128
    iget-object v2, p0, Landroid/webkitsec/WebHistoryItemClassic;->mTouchIconUrlServerDefault:Ljava/lang/String;

    goto :goto_6

    .line 132
    :cond_e
    :try_start_e
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Landroid/webkitsec/WebHistoryItemClassic;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, "url":Ljava/net/URL;
    new-instance v2, Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v5

    const-string v6, "/apple-touch-icon.png"

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkitsec/WebHistoryItemClassic;->mTouchIconUrlServerDefault:Ljava/lang/String;
    :try_end_30
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_30} :catch_33

    .line 138
    iget-object v2, p0, Landroid/webkitsec/WebHistoryItemClassic;->mTouchIconUrlServerDefault:Ljava/lang/String;

    goto :goto_6

    .line 135
    .end local v1    # "url":Ljava/net/URL;
    :catch_33
    move-exception v0

    .line 136
    .local v0, "e":Ljava/net/MalformedURLException;
    const/4 v2, 0x0

    goto :goto_6
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 95
    :goto_5
    return-object v0

    :cond_6
    iget v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    invoke-direct {p0, v0}, Landroid/webkitsec/WebHistoryItemClassic;->nativeGetUrl(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method inflate(I)V
    .registers 3
    .param p1, "nativeFrame"    # I

    .prologue
    .line 202
    iget-object v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mFlattenedData:[B

    invoke-direct {p0, p1, v0}, Landroid/webkitsec/WebHistoryItemClassic;->inflate(I[B)I

    move-result v0

    iput v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mNativeBridge:I

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mFlattenedData:[B

    .line 204
    return-void
.end method

.method public setCustomData(Ljava/lang/Object;)V
    .registers 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 160
    iput-object p1, p0, Landroid/webkitsec/WebHistoryItemClassic;->mCustomData:Ljava/lang/Object;

    .line 161
    return-void
.end method

.method setFavicon(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 170
    iput-object p1, p0, Landroid/webkitsec/WebHistoryItemClassic;->mFavicon:Landroid/graphics/Bitmap;

    .line 171
    return-void
.end method

.method setTouchIconUrl(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "precomposed"    # Z

    .prologue
    .line 179
    if-nez p2, :cond_6

    iget-object v0, p0, Landroid/webkitsec/WebHistoryItemClassic;->mTouchIconUrlFromLink:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 180
    :cond_6
    iput-object p1, p0, Landroid/webkitsec/WebHistoryItemClassic;->mTouchIconUrlFromLink:Ljava/lang/String;

    .line 182
    :cond_8
    return-void
.end method
