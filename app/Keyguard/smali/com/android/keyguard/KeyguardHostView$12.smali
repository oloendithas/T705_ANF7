.class Lcom/android/keyguard/KeyguardHostView$12;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .registers 2

    .prologue
    .line 1774
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$12;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .registers 2
    .param p1, "securityVerified"    # Z

    .prologue
    .line 1808
    return-void
.end method

.method public getFailedAttempts()I
    .registers 2

    .prologue
    .line 1803
    const/4 v0, 0x0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .registers 2

    .prologue
    .line 1798
    const/4 v0, 0x0

    return v0
.end method

.method public launchCamera()V
    .registers 1

    .prologue
    .line 1816
    return-void
.end method

.method public reportFailedUnlockAttempt()V
    .registers 1

    .prologue
    .line 1794
    return-void
.end method

.method public reportSuccessfulUnlockAttempt()V
    .registers 1

    .prologue
    .line 1790
    return-void
.end method

.method public setOnDismissAction(Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;)V
    .registers 2
    .param p1, "action"    # Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;

    .prologue
    .line 1786
    return-void
.end method

.method public showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .registers 2
    .param p1, "mode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 1782
    return-void
.end method

.method public showWipeDialog(I)V
    .registers 2
    .param p1, "attempts"    # I

    .prologue
    .line 1812
    return-void
.end method

.method public userActivity(J)V
    .registers 3
    .param p1, "timeout"    # J

    .prologue
    .line 1778
    return-void
.end method
