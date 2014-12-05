.class Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$2;
.super Ljava/lang/Object;
.source "KeyguardFaceVoiceUnlockView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)V
    .registers 2

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$2;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayPrepareMsg()V
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$2;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # invokes: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->displayPrepareMsg()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$300(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)V

    .line 240
    return-void
.end method

.method public displayVerifyFailMsg()V
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$2;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # invokes: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->displayVerifyFailMsg()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$600(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)V

    .line 255
    return-void
.end method

.method public displayVerifySuccessMsg()V
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$2;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # invokes: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->displayVerifySuccessMsg()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$700(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)V

    .line 260
    return-void
.end method

.method public hideVoiceLayout()V
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$2;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    # invokes: Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->hideVoiceLayout()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->access$800(Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;)V

    .line 265
    return-void
.end method

.method public isErrorShowed()Z
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$2;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->isErrorShowed()Z

    move-result v0

    return v0
.end method

.method public updateVolume(I)V
    .registers 3
    .param p1, "volume"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$2;->this$0:Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;->updateVolume(I)V

    .line 270
    return-void
.end method
