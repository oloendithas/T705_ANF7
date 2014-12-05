.class Lcom/android/keyguard/sec/SecContextualClock$2;
.super Landroid/os/Handler;
.source "SecContextualClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecContextualClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecContextualClock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecContextualClock;Landroid/os/Looper;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/keyguard/sec/SecContextualClock$2;->this$0:Lcom/android/keyguard/sec/SecContextualClock;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 65
    :goto_5
    return-void

    .line 62
    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/sec/SecContextualClock$2;->this$0:Lcom/android/keyguard/sec/SecContextualClock;

    # invokes: Lcom/android/keyguard/sec/SecContextualClock;->handleUpdateClock()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecContextualClock;->access$100(Lcom/android/keyguard/sec/SecContextualClock;)V

    goto :goto_5

    .line 60
    :pswitch_data_c
    .packed-switch 0x12cb
        :pswitch_6
    .end packed-switch
.end method
