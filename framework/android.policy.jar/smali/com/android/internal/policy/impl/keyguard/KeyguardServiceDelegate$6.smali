.class Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$6;
.super Landroid/os/Handler;
.source "KeyguardServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V
    .registers 2

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 460
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 465
    :goto_5
    return-void

    .line 462
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->handleSettingUpdated()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V

    goto :goto_5

    .line 460
    :pswitch_data_c
    .packed-switch 0x12f0
        :pswitch_6
    .end packed-switch
.end method
