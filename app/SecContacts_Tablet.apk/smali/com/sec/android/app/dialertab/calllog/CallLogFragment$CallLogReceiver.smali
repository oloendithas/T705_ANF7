.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$CallLogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallLogReceiver"
.end annotation


# instance fields
.field mActivity:Lcom/android/contacts/activities/DialtactsActivity;

.field obj:Ljava/lang/Object;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V
    .locals 1

    .prologue
    .line 4087
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$CallLogReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4088
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$CallLogReceiver;->mActivity:Lcom/android/contacts/activities/DialtactsActivity;

    .line 4089
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$CallLogReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$CallLogReceiver;->obj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4093
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4094
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$CallLogReceiver;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v2, :cond_0

    .line 4095
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$CallLogReceiver;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/contacts/activities/DialtactsActivity;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$CallLogReceiver;->mActivity:Lcom/android/contacts/activities/DialtactsActivity;

    .line 4097
    :cond_0
    const-string v2, "CallLogFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CallLogReceiver, onReceive action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4099
    const-string v2, "com.samsung.cover.OPEN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4100
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$CallLogReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    const-string v3, "coverOpen"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCoverOpen:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$2802(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Z)Z

    .line 4101
    const-string v2, "CallLogFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEAR_COVER_INTENT bCoverOpen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$CallLogReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCoverOpen:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$2800(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4103
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$CallLogReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCoverOpen:Z
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$2800(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$CallLogReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$CallLogReceiver;->mActivity:Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$CallLogReceiver;->mActivity:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentDialtactsPage()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$CallLogReceiver;->mActivity:Lcom/android/contacts/activities/DialtactsActivity;

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 4104
    const-string v2, "CallLogFragment"

    const-string v3, "CLEAR_COVER_INTENT Update Missed Call"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 4105
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$CallLogReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->markNewCallsAsOld()V

    .line 4106
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$CallLogReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$CallLogReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWindowManager:Landroid/view/IWindowManager;
    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$2902(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Landroid/view/IWindowManager;)Landroid/view/IWindowManager;

    .line 4108
    :try_start_0
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4109
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$CallLogReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWindowManager:Landroid/view/IWindowManager;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$2900(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->isCoverOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4110
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$CallLogReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->removeMissedCallNotifications()V
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4120
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$CallLogReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateVoicemailNotifications()V
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$400(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    .line 4123
    :cond_2
    return-void

    .line 4113
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$CallLogReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->removeMissedCallNotifications()V
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$300(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4115
    :catch_0
    move-exception v1

    .line 4116
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "CallLogFragment"

    const-string v3, "CallLogReceiver, Failed to IWondowManager due to null pointer exception"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4117
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 4118
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
