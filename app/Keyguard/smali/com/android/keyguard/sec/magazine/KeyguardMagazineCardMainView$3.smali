.class Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$3;
.super Landroid/os/Handler;
.source "KeyguardMagazineCardMainView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;)V
    .registers 2

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$3;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView$3;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->mIsWakeupActionBlocked:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;->access$402(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardMainView;Z)Z

    .line 696
    return-void
.end method
