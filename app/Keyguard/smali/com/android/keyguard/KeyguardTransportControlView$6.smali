.class Lcom/android/keyguard/KeyguardTransportControlView$6;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardTransportControlView.java"


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
    .line 281
    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView$6;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff(I)V
    .registers 4
    .param p1, "why"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$6;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/KeyguardTransportControlView;->setEnableMarquee(Z)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView;->access$1600(Lcom/android/keyguard/KeyguardTransportControlView;Z)V

    .line 284
    return-void
.end method

.method public onScreenTurnedOn()V
    .registers 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$6;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    const/4 v1, 0x1

    # invokes: Lcom/android/keyguard/KeyguardTransportControlView;->setEnableMarquee(Z)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView;->access$1600(Lcom/android/keyguard/KeyguardTransportControlView;Z)V

    .line 287
    return-void
.end method
