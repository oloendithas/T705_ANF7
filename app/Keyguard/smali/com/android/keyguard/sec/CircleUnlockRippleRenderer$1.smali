.class Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$1;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "CircleUnlockRippleRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)V
    .registers 2

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$1;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .registers 4
    .param p1, "state"    # Lcom/samsung/android/sdk/cover/ScoverState;

    .prologue
    .line 395
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "mCoverStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return-void
.end method
