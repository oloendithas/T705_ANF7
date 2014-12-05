.class Lcom/android/keyguard/sec/KeyguardEffectViewMain$1;
.super Landroid/os/Handler;
.source "KeyguardEffectViewMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V
    .registers 2

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 161
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 170
    :goto_5
    return-void

    .line 163
    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->handleChangeWallpaperType()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$000(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V

    goto :goto_5

    .line 167
    :pswitch_c
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewMain$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    # invokes: Lcom/android/keyguard/sec/KeyguardEffectViewMain;->handleUpdateKeygaurdBackground()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->access$100(Lcom/android/keyguard/sec/KeyguardEffectViewMain;)V

    goto :goto_5

    .line 161
    :pswitch_data_12
    .packed-switch 0x12f0
        :pswitch_6
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method
