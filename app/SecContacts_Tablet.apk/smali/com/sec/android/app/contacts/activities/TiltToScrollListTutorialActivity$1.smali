.class Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$1;
.super Landroid/os/Handler;
.source "TiltToScrollListTutorialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 171
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 181
    :goto_0
    return-void

    .line 175
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;

    # invokes: Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->updateAnimation()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;->access$000(Lcom/sec/android/app/contacts/activities/TiltToScrollListTutorialActivity;)V

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method