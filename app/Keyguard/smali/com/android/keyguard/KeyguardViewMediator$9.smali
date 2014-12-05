.class Lcom/android/keyguard/KeyguardViewMediator$9;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardViewMediator;->buildDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewMediator;

.field final synthetic val$isUsb3Enabled:Z

.field final synthetic val$manager:Landroid/hardware/usb/UsbManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardViewMediator;ZLandroid/hardware/usb/UsbManager;)V
    .registers 4

    .prologue
    .line 2874
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardViewMediator$9;->val$isUsb3Enabled:Z

    iput-object p3, p0, Lcom/android/keyguard/KeyguardViewMediator$9;->val$manager:Landroid/hardware/usb/UsbManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v3, 0x0

    .line 2877
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$000(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/sec/ContextualEventManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;

    move-result-object v1

    const-string v2, "flightmode"

    invoke-virtual {v1, v2}, Lcom/android/keyguard/sec/ContextualEventManager;->removeContextualEvent(Ljava/lang/String;)V

    .line 2878
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$000(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2879
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardViewMediator$9;->val$isUsb3Enabled:Z

    if-eqz v1, :cond_37

    .line 2880
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$9;->val$manager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, v3}, Landroid/hardware/usb/UsbManager;->setUsb30Mode(Z)V

    .line 2881
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$000(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on_reason_usb3"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2884
    :cond_37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2885
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2886
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$000(Lcom/android/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2887
    return-void
.end method
