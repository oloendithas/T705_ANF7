.class public Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype$S_ET9SavedInputWord;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9SavedInputWord"
.end annotation


# instance fields
.field public bLastShiftState:B

.field public wInputLen:S

.field public wStorePos:S

.field public wWordLen:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
