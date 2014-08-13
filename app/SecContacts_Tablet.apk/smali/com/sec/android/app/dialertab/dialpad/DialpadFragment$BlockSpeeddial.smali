.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$BlockSpeeddial;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockSpeeddial"
.end annotation


# instance fields
.field public mActive:Z

.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)V
    .locals 1
    .param p2, "speedRunnging"    # Z

    .prologue
    .line 10811
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$BlockSpeeddial;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10810
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$BlockSpeeddial;->mActive:Z

    .line 10812
    iput-boolean p2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$BlockSpeeddial;->mActive:Z

    .line 10813
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 10817
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 10818
    const/4 v0, 0x0

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isSpeedPopupRunnging:Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$8002(Z)Z

    .line 10819
    return-void
.end method
