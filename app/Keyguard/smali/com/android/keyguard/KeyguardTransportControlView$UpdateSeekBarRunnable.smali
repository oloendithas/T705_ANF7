.class Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;
.super Ljava/lang/Object;
.source "KeyguardTransportControlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardTransportControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateSeekBarRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardTransportControlView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardTransportControlView;)V
    .registers 2

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardTransportControlView;Lcom/android/keyguard/KeyguardTransportControlView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/keyguard/KeyguardTransportControlView;
    .param p2, "x1"    # Lcom/android/keyguard/KeyguardTransportControlView$1;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;-><init>(Lcom/android/keyguard/KeyguardTransportControlView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;->updateOnce()Z

    move-result v0

    .line 157
    .local v0, "seekAble":Z
    if-eqz v0, :cond_12

    .line 158
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-virtual {v1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 159
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    :cond_12
    return-void
.end method

.method public updateOnce()Z
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->updateSeekBars()Z

    move-result v0

    return v0
.end method
