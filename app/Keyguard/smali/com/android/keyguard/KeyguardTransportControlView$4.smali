.class Lcom/android/keyguard/KeyguardTransportControlView$4;
.super Ljava/lang/Object;
.source "KeyguardTransportControlView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardTransportControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardTransportControlView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardTransportControlView;)V
    .registers 2

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView$4;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$4;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView;->mSeekEnabled:Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->access$1100(Lcom/android/keyguard/KeyguardTransportControlView;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 197
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isToggleSeekBarAndTitle()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v0

    if-nez v0, :cond_21

    .line 198
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$4;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->tryToggleSeekBar()Z

    move-result v0

    .line 201
    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method
