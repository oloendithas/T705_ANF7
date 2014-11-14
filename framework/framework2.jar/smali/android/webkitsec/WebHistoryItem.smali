.class public Landroid/webkitsec/WebHistoryItem;
.super Ljava/lang/Object;
.source "WebHistoryItem.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method


# virtual methods
.method protected declared-synchronized clone()Landroid/webkitsec/WebHistoryItem;
    .registers 2

    .prologue
    .line 280
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/webkitsec/WebHistoryItem;->clone()Landroid/webkitsec/WebHistoryItem;

    move-result-object v0

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 179
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getId()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    new-instance v0, Landroid/webkitsec/MustOverrideException;

    invoke-direct {v0}, Landroid/webkitsec/MustOverrideException;-><init>()V

    throw v0
.end method
