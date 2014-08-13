.class Lcom/nuance/connect/internal/ConfigServiceInternal$7;
.super Ljava/lang/Object;
.source "ConfigServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/internal/ConnectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/ConfigServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ConfigServiceInternal;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    const-string v0, "SwypeConfigurationHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 3

    .prologue
    .line 510
    # getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$700()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    new-array v1, v2, [I

    .line 511
    .local v1, "messages":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    # getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$700()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 512
    # getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$700()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v1, v0

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 514
    :cond_0
    return-object v1
.end method

.method public handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 9
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 407
    iget-object v6, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v6}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$500(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getBinder()Lcom/nuance/connect/internal/ClientBinder;

    move-result-object v3

    .line 409
    .local v3, "messenger":Lcom/nuance/connect/internal/ClientBinder;
    sget-object v6, Lcom/nuance/connect/internal/ConfigServiceInternal$8;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-static {v7}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 411
    :pswitch_0
    sget-object v6, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_OEM_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v7, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    sget-object v8, Lcom/nuance/connect/host/service/BuildSettings$Property;->OEM_ID:Lcom/nuance/connect/host/service/BuildSettings$Property;

    # invokes: Lcom/nuance/connect/internal/ConfigServiceInternal;->getProperty(Lcom/nuance/connect/host/service/BuildSettings$Property;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$600(Lcom/nuance/connect/internal/ConfigServiceInternal;Lcom/nuance/connect/host/service/BuildSettings$Property;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto :goto_0

    .line 417
    :pswitch_1
    iget-object v6, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-virtual {v6}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendLanguageInfo()V

    .line 418
    iget-object v6, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-virtual {v6}, Lcom/nuance/connect/internal/ConfigServiceInternal;->sendLocaleInfo()V

    goto :goto_0

    .line 423
    :pswitch_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 425
    .local v1, "data":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v6}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$500(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v6

    sget-object v7, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v6, v7}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/host/service/BuildSettings;

    .line 426
    .local v4, "settings":Lcom/nuance/connect/host/service/BuildSettings;
    invoke-interface {v4}, Lcom/nuance/connect/host/service/BuildSettings;->getCoreVersions()Landroid/util/SparseArray;

    move-result-object v0

    .line 428
    .local v0, "coreVersions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v7, "PROP_CORE_ALPHA"

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v7, "PROP_CORE_CHINESE"

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v7, "PROP_CORE_JAPANESE"

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v7, "PROP_CORE_KOREAN"

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    sget-object v6, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CORE_VERSIONS:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v3, v6, v1}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto :goto_0

    .line 441
    .end local v0    # "coreVersions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v4    # "settings":Lcom/nuance/connect/host/service/BuildSettings;
    :pswitch_3
    sget-object v6, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_SDK_VERSION:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v7, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    sget-object v8, Lcom/nuance/connect/host/service/BuildSettings$Property;->VERSION:Lcom/nuance/connect/host/service/BuildSettings$Property;

    # invokes: Lcom/nuance/connect/internal/ConfigServiceInternal;->getProperty(Lcom/nuance/connect/host/service/BuildSettings$Property;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$600(Lcom/nuance/connect/internal/ConfigServiceInternal;Lcom/nuance/connect/host/service/BuildSettings$Property;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto :goto_0

    .line 447
    :pswitch_4
    iget-object v6, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v6}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$500(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v6

    sget-object v7, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v6, v7}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/host/service/BuildSettings;

    .line 448
    .restart local v4    # "settings":Lcom/nuance/connect/host/service/BuildSettings;
    sget-object v6, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_APPLICATION_ID:Lcom/nuance/connect/internal/common/InternalMessages;

    invoke-interface {v4}, Lcom/nuance/connect/host/service/BuildSettings;->getApplicationId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 454
    .end local v4    # "settings":Lcom/nuance/connect/host/service/BuildSettings;
    :pswitch_5
    sget-object v6, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_CUSTOMER_STRING:Lcom/nuance/connect/internal/common/InternalMessages;

    iget-object v7, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v7}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$500(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getAppSettings()Lcom/nuance/connect/internal/AppSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/connect/internal/AppSettings;->getCustomerString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 460
    :pswitch_6
    iget-object v6, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v6}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$500(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v6

    sget-object v7, Lcom/nuance/connect/host/service/HostInterface$HostService;->HOST_BUILD_SETTINGS:Lcom/nuance/connect/host/service/HostInterface$HostService;

    invoke-virtual {v6, v7}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getHostService(Lcom/nuance/connect/host/service/HostInterface$HostService;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/host/service/BuildSettings;

    .line 461
    .restart local v4    # "settings":Lcom/nuance/connect/host/service/BuildSettings;
    sget-object v7, Lcom/nuance/connect/internal/common/InternalMessages;->MESSAGE_CLIENT_SET_LANGUAGES_FOR_CORES:Lcom/nuance/connect/internal/common/InternalMessages;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/nuance/connect/host/service/BuildSettings;->getLanguageCoreMap()Ljava/util/HashMap;

    move-result-object v6

    :goto_1
    invoke-interface {v3, v7, v6}, Lcom/nuance/connect/internal/ClientBinder;->sendConnectPriorityMessage(Lcom/nuance/connect/internal/common/InternalMessages;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 467
    .end local v4    # "settings":Lcom/nuance/connect/host/service/BuildSettings;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "DEFAULT_KEY"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 469
    .local v5, "swyperId":Ljava/lang/String;
    iget-object v6, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-virtual {v6}, Lcom/nuance/connect/internal/ConfigServiceInternal;->getSwyperId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-virtual {v6}, Lcom/nuance/connect/internal/ConfigServiceInternal;->getSwyperId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 470
    :cond_2
    iget-object v6, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-virtual {v6, v5}, Lcom/nuance/connect/internal/ConfigServiceInternal;->setSwyperId(Ljava/lang/String;)V

    .line 471
    iget-object v6, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v6}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$500(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v6

    const-string v7, "com.nuance.connect.DATA_AVAILABLE"

    const-string v8, "com.nuance.connect.TYPE_SWYPER_ID"

    invoke-virtual {v6, v7, v8}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    goto/16 :goto_0

    .line 477
    .end local v5    # "swyperId":Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "DEFAULT_KEY"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, "deviceId":Ljava/lang/String;
    iget-object v6, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-virtual {v6}, Lcom/nuance/connect/internal/ConfigServiceInternal;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-virtual {v6}, Lcom/nuance/connect/internal/ConfigServiceInternal;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 480
    :cond_3
    iget-object v6, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    invoke-virtual {v6, v2}, Lcom/nuance/connect/internal/ConfigServiceInternal;->setDeviceId(Ljava/lang/String;)V

    .line 481
    iget-object v6, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # getter for: Lcom/nuance/connect/internal/ConfigServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v6}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$500(Lcom/nuance/connect/internal/ConfigServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v6

    const-string v7, "com.nuance.connect.DATA_AVAILABLE"

    const-string v8, "com.nuance.connect.TYPE_DEVICE_ID"

    invoke-virtual {v6, v7, v8}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    goto/16 :goto_0

    .line 487
    .end local v2    # "deviceId":Ljava/lang/String;
    :pswitch_9
    iget-object v6, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # invokes: Lcom/nuance/connect/internal/ConfigServiceInternal;->sendConnectionConcurrentLimit()V
    invoke-static {v6}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$100(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    goto/16 :goto_0

    .line 491
    :pswitch_a
    iget-object v6, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # invokes: Lcom/nuance/connect/internal/ConfigServiceInternal;->sendDownloadIdleTimeout()V
    invoke-static {v6}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$200(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    goto/16 :goto_0

    .line 496
    :pswitch_b
    iget-object v6, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # invokes: Lcom/nuance/connect/internal/ConfigServiceInternal;->sendForegroundDataState()V
    invoke-static {v6}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$300(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    goto/16 :goto_0

    .line 501
    :pswitch_c
    iget-object v6, p0, Lcom/nuance/connect/internal/ConfigServiceInternal$7;->this$0:Lcom/nuance/connect/internal/ConfigServiceInternal;

    # invokes: Lcom/nuance/connect/internal/ConfigServiceInternal;->sendBackgroundDataState()V
    invoke-static {v6}, Lcom/nuance/connect/internal/ConfigServiceInternal;->access$400(Lcom/nuance/connect/internal/ConfigServiceInternal;)V

    goto/16 :goto_0

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onPostUpgrade()V
    .locals 0

    .prologue
    .line 524
    return-void
.end method
