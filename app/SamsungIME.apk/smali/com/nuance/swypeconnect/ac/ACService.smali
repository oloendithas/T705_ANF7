.class public abstract Lcom/nuance/swypeconnect/ac/ACService;
.super Ljava/lang/Object;
.source "ACService.java"


# instance fields
.field isShutdown:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getName()Ljava/lang/String;
.end method

.method abstract shutdown()V
.end method

.method abstract start()V
.end method
