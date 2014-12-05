.class Lcom/android/keyguard/KeyguardSmartcardPINView$4;
.super Landroid/os/Handler;
.source "KeyguardSmartcardPINView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSmartcardPINView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSmartcardPINView;)V
    .registers 2

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$4;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 224
    return-void
.end method
