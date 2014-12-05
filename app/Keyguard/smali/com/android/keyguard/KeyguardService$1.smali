.class Lcom/android/keyguard/KeyguardService$1;
.super Lcom/android/internal/policy/IKeyguardService$Stub;
.source "KeyguardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardService;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardService;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->dismiss()V

    .line 100
    return-void
.end method

.method public dispatch(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 142
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->dispatch(Landroid/view/MotionEvent;)V

    .line 143
    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 130
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->doKeyguardTimeout(Landroid/os/Bundle;)V

    .line 131
    return-void
.end method

.method public isDismissable()Z
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isDismissable()Z

    move-result v0

    return v0
.end method

.method public isInputRestricted()Z
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public isKeyguardHidden()Z
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isKeyguardHidden()Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isShowingAndNotHidden()Z
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->isShowingAndNotHidden()Z

    move-result v0

    return v0
.end method

.method public keyguardDone(ZZ)V
    .registers 4
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 92
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 93
    return-void
.end method

.method public launchCamera()V
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 146
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->launchCamera()V

    .line 147
    return-void
.end method

.method public onBootCompleted()V
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 150
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->onBootCompleted()V

    .line 151
    return-void
.end method

.method public onDreamingStarted()V
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 103
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->onDreamingStarted()V

    .line 104
    return-void
.end method

.method public onDreamingStopped()V
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 107
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->onDreamingStopped()V

    .line 108
    return-void
.end method

.method public onScreenTurnedOff(I)V
    .registers 3
    .param p1, "reason"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->onScreenTurnedOff(I)V

    .line 112
    return-void
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 115
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    .line 116
    return-void
.end method

.method public onSystemReady()V
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->onSystemReady()V

    .line 127
    return-void
.end method

.method public removeAdaptiveEvent(Ljava/lang/String;)V
    .registers 3
    .param p1, "requestClass"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 170
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->removeAdaptiveEvent(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public removeContextualEvent(Ljava/lang/String;)V
    .registers 3
    .param p1, "requestClass"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 158
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->removeContextualEvent(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 5
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "smallView"    # Landroid/widget/RemoteViews;
    .param p3, "bigView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 166
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardViewMediator;->setAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 167
    return-void
.end method

.method public setContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .registers 4
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 154
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardViewMediator;->setContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    .line 155
    return-void
.end method

.method public setCurrentUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 134
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->setCurrentUser(I)V

    .line 135
    return-void
.end method

.method public setHidden(Z)V
    .registers 3
    .param p1, "isHidden"    # Z

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 96
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->setHidden(Z)V

    .line 97
    return-void
.end method

.method public setKeyguardEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 119
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->setKeyguardEnabled(Z)V

    .line 120
    return-void
.end method

.method public showAssistant()V
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 138
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->showAssistant()V

    .line 139
    return-void
.end method

.method public updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 5
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "smallView"    # Landroid/widget/RemoteViews;
    .param p3, "bigView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 174
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardViewMediator;->updateAdaptiveEvent(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 175
    return-void
.end method

.method public updateContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .registers 4
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardService;->checkPermission()V

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardViewMediator;->updateContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    .line 163
    return-void
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardExitCallback;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/keyguard/KeyguardService$1;->this$0:Lcom/android/keyguard/KeyguardService;

    # getter for: Lcom/android/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/keyguard/KeyguardViewMediator;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardService;->access$000(Lcom/android/keyguard/KeyguardService;)Lcom/android/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewMediator;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    .line 89
    return-void
.end method
