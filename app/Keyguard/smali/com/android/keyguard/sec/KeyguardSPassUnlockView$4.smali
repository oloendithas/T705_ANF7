.class Lcom/android/keyguard/sec/KeyguardSPassUnlockView$4;
.super Landroid/view/OrientationEventListener;
.source "KeyguardSPassUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/content/Context;I)V
    .registers 4
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 3
    .param p1, "orientation"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$4;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->updateOrientation()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$200(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    .line 267
    return-void
.end method
