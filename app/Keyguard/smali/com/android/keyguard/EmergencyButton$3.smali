.class Lcom/android/keyguard/EmergencyButton$3;
.super Ljava/lang/Object;
.source "EmergencyButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/EmergencyButton;->takeEmergencyCallAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/EmergencyButton;


# direct methods
.method constructor <init>(Lcom/android/keyguard/EmergencyButton;)V
    .registers 2

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    # getter for: Lcom/android/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/keyguard/EmergencyButton;->access$300(Lcom/android/keyguard/EmergencyButton;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    .line 144
    return-void
.end method
