.class Lcom/sec/android/app/contacts/eab/ImsContactAdapter$1;
.super Ljava/lang/Object;
.source "ImsContactAdapter.java"

# interfaces
.implements Lcom/samsung/commonimsinterface/imscommon/IIMSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->createSipRegListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$1;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onRegistrationDone(Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;)V
    .locals 4
    .param p1, "registrationinfo"    # Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;

    .prologue
    .line 138
    const-string v0, "DEBUG"

    const-string v1, "EAB-ImsContactAdapter onRegistrationDone"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$1;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    # getter for: Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mPresenceListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;
    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->access$000(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$1;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->createSipPresenceListener()V

    .line 146
    :cond_0
    const-string v0, "EAB-ImsContactAdapter"

    const-string v1, "Contact Register Success:onRegistrationDone11111"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$1;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    # getter for: Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mClientHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->access$100(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$1;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    # getter for: Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mClientHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->access$100(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e4

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 154
    const-string v0, "DEBUG"

    const-string v1, "EAB-ImsContactAdapter sendEmptyMessageDelayed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_1
    return-void
.end method

.method private onRegistrationFailed(Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;)V
    .locals 4
    .param p1, "registrationinfo"    # Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;

    .prologue
    .line 162
    const-string v0, "DEBUG"

    const-string v1, "EAB-ImsContactAdapter onRegistrationFailed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$1;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->resetAlarmForSubscribe()V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$1;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->resetAlarmForSingleSubscribe()V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$1;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->resetAlarmForPublish()V

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$1;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    # getter for: Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mClientHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->access$100(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$1;->this$0:Lcom/sec/android/app/contacts/eab/ImsContactAdapter;

    # getter for: Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->mClientHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter;->access$100(Lcom/sec/android/app/contacts/eab/ImsContactAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3de

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 174
    const-string v0, "DEBUG"

    const-string v1, "EAB-ImsContactAdapter sendEmptyMessageDelayed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(IILcom/samsung/commonimsinterface/imscommon/IMSParameter;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "action"    # I
    .param p3, "parameter"    # Lcom/samsung/commonimsinterface/imscommon/IMSParameter;

    .prologue
    .line 123
    packed-switch p2, :pswitch_data_0

    .line 135
    :goto_0
    return-void

    .line 125
    :pswitch_0
    const-string v0, "registrationinfo"

    invoke-virtual {p3, v0}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getParcelable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$1;->onRegistrationDone(Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;)V

    goto :goto_0

    .line 129
    :pswitch_1
    const-string v0, "registrationinfo"

    invoke-virtual {p3, v0}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getParcelable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/eab/ImsContactAdapter$1;->onRegistrationFailed(Lcom/samsung/commonimsinterface/imscommon/IMSRegistrationInfo;)V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
