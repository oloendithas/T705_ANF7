.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9AWWordInfo"
.end annotation


# instance fields
.field public bWordSource:B

.field public sSubstitution:[S

.field public sWord:[S

.field public wSubstitutionLen:S

.field public wWordLen:S


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1004
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    .line 1005
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9AWWordInfo;->sSubstitution:[S

    return-void
.end method
