.class Lcom/nuance/connect/internal/UpgradeServiceInternal$1;
.super Ljava/lang/Object;
.source "UpgradeServiceInternal.java"

# interfaces
.implements Lcom/nuance/connect/internal/ConnectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/UpgradeServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/UpgradeServiceInternal;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandlerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    const-string v0, "UpgradeHandler"

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 3

    .prologue
    .line 212
    # getter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$700()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    new-array v1, v2, [I

    .line 213
    .local v1, "messages":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    # getter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$700()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 214
    # getter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->MESSAGE_IDS:[Lcom/nuance/connect/internal/common/InternalMessages;
    invoke-static {}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$700()[Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v2, v1, v0

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_0
    return-object v1
.end method

.method public handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 10
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 130
    sget-object v6, Lcom/nuance/connect/internal/UpgradeServiceInternal$2;->$SwitchMap$com$nuance$connect$internal$common$InternalMessages:[I

    iget v7, p2, Landroid/os/Message;->what:I

    invoke-static {v7}, Lcom/nuance/connect/internal/common/InternalMessages;->fromInt(I)Lcom/nuance/connect/internal/common/InternalMessages;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 132
    :pswitch_0
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # setter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeAvailable:Z
    invoke-static {v6, v8}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$002(Lcom/nuance/connect/internal/UpgradeServiceInternal;Z)Z

    .line 133
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # setter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeDownloading:Z
    invoke-static {v6, v9}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$102(Lcom/nuance/connect/internal/UpgradeServiceInternal;Z)Z

    .line 134
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # setter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeCanceled:Z
    invoke-static {v6, v9}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$202(Lcom/nuance/connect/internal/UpgradeServiceInternal;Z)Z

    .line 136
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # getter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v6}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$300(Lcom/nuance/connect/internal/UpgradeServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v6

    const-string v7, "com.nuance.connect.DATA_AVAILABLE"

    const-string v8, "com.nuance.connect.TYPE_UPDATE_DATA"

    invoke-virtual {v6, v7, v8}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    goto :goto_0

    .line 141
    :pswitch_1
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # setter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeAvailable:Z
    invoke-static {v6, v8}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$002(Lcom/nuance/connect/internal/UpgradeServiceInternal;Z)Z

    .line 142
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # setter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeDownloaded:Z
    invoke-static {v6, v8}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$402(Lcom/nuance/connect/internal/UpgradeServiceInternal;Z)Z

    .line 143
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # setter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeDownloading:Z
    invoke-static {v6, v9}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$102(Lcom/nuance/connect/internal/UpgradeServiceInternal;Z)Z

    .line 144
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # setter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeCanceled:Z
    invoke-static {v6, v9}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$202(Lcom/nuance/connect/internal/UpgradeServiceInternal;Z)Z

    .line 146
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # getter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->notification:Lcom/nuance/connect/util/ConnectNotification;
    invoke-static {v6}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$500(Lcom/nuance/connect/internal/UpgradeServiceInternal;)Lcom/nuance/connect/util/ConnectNotification;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 147
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # getter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->notification:Lcom/nuance/connect/util/ConnectNotification;
    invoke-static {v6}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$500(Lcom/nuance/connect/internal/UpgradeServiceInternal;)Lcom/nuance/connect/util/ConnectNotification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/connect/util/ConnectNotification;->cancel()V

    .line 149
    :cond_1
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # getter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v6}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$300(Lcom/nuance/connect/internal/UpgradeServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v6

    const-string v7, "com.nuance.connect.DATA_AVAILABLE"

    const-string v8, "com.nuance.connect.TYPE_UPDATE_DATA"

    invoke-virtual {v6, v7, v8}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    goto :goto_0

    .line 154
    :pswitch_2
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # setter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeDownloading:Z
    invoke-static {v6, v8}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$102(Lcom/nuance/connect/internal/UpgradeServiceInternal;Z)Z

    .line 156
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # getter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v6}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$300(Lcom/nuance/connect/internal/UpgradeServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v6

    sget-object v7, Lcom/nuance/connect/common/ConnectFeature;->RESOURCES:Lcom/nuance/connect/common/ConnectFeature;

    invoke-virtual {v6, v7}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->getFeatureService(Lcom/nuance/connect/common/ConnectFeature;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/connect/api/ResourcesService;

    .line 158
    .local v4, "resources":Lcom/nuance/connect/api/ResourcesService;
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 159
    .local v0, "b":Landroid/os/Bundle;
    const-string v6, "download"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 160
    .local v2, "downloaded":I
    const-string v6, "total"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 162
    .local v5, "total":I
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    int-to-float v7, v2

    int-to-float v8, v5

    div-float/2addr v7, v8

    const/high16 v8, 0x42c80000

    mul-float/2addr v7, v8

    float-to-int v7, v7

    # setter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeProgress:I
    invoke-static {v6, v7}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$602(Lcom/nuance/connect/internal/UpgradeServiceInternal;I)I

    .line 163
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # getter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v6}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$300(Lcom/nuance/connect/internal/UpgradeServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v6

    const-string v7, "com.nuance.connect.DATA_AVAILABLE"

    const-string v8, "com.nuance.connect.TYPE_UPDATE_DATA"

    invoke-virtual {v6, v7, v8}, Lcom/nuance/connect/internal/ConnectServiceManagerInternal;->dispatchAction(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 166
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # getter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeCanceled:Z
    invoke-static {v6}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$200(Lcom/nuance/connect/internal/UpgradeServiceInternal;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 167
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # getter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->notification:Lcom/nuance/connect/util/ConnectNotification;
    invoke-static {v6}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$500(Lcom/nuance/connect/internal/UpgradeServiceInternal;)Lcom/nuance/connect/util/ConnectNotification;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 168
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # getter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->notification:Lcom/nuance/connect/util/ConnectNotification;
    invoke-static {v6}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$500(Lcom/nuance/connect/internal/UpgradeServiceInternal;)Lcom/nuance/connect/util/ConnectNotification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/connect/util/ConnectNotification;->cancel()V

    goto/16 :goto_0

    .line 173
    :cond_2
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # getter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->notification:Lcom/nuance/connect/util/ConnectNotification;
    invoke-static {v6}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$500(Lcom/nuance/connect/internal/UpgradeServiceInternal;)Lcom/nuance/connect/util/ConnectNotification;

    move-result-object v6

    if-nez v6, :cond_3

    .line 176
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    new-instance v7, Lcom/nuance/connect/util/ConnectNotification;

    iget-object v8, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # getter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v8}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$300(Lcom/nuance/connect/internal/UpgradeServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/nuance/connect/util/ConnectNotification;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;)V

    # setter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->notification:Lcom/nuance/connect/util/ConnectNotification;
    invoke-static {v6, v7}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$502(Lcom/nuance/connect/internal/UpgradeServiceInternal;Lcom/nuance/connect/util/ConnectNotification;)Lcom/nuance/connect/util/ConnectNotification;

    .line 177
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # getter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->notification:Lcom/nuance/connect/util/ConnectNotification;
    invoke-static {v6}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$500(Lcom/nuance/connect/internal/UpgradeServiceInternal;)Lcom/nuance/connect/util/ConnectNotification;

    move-result-object v6

    const-string v7, "com_nuance_connect_notification_default_download_title"

    invoke-interface {v4, v7}, Lcom/nuance/connect/api/ResourcesService;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nuance/connect/util/ConnectNotification;->setTitle(Ljava/lang/String;)V

    .line 178
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # getter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->notification:Lcom/nuance/connect/util/ConnectNotification;
    invoke-static {v6}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$500(Lcom/nuance/connect/internal/UpgradeServiceInternal;)Lcom/nuance/connect/util/ConnectNotification;

    move-result-object v6

    const-string v7, "com_nuance_connect_notification_messages_download_status"

    invoke-interface {v4, v7}, Lcom/nuance/connect/api/ResourcesService;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nuance/connect/util/ConnectNotification;->setText(Ljava/lang/String;)V

    .line 179
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # getter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->notification:Lcom/nuance/connect/util/ConnectNotification;
    invoke-static {v6}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$500(Lcom/nuance/connect/internal/UpgradeServiceInternal;)Lcom/nuance/connect/util/ConnectNotification;

    move-result-object v6

    const-string v7, "com.nuance.swype.input.Upgrade"

    invoke-virtual {v6, v7}, Lcom/nuance/connect/util/ConnectNotification;->createIntent(Ljava/lang/String;)V

    .line 180
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # getter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->notification:Lcom/nuance/connect/util/ConnectNotification;
    invoke-static {v6}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$500(Lcom/nuance/connect/internal/UpgradeServiceInternal;)Lcom/nuance/connect/util/ConnectNotification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/connect/util/ConnectNotification;->setFlagOngoing()V

    .line 183
    :cond_3
    if-lt v2, v5, :cond_4

    .line 184
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # getter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->notification:Lcom/nuance/connect/util/ConnectNotification;
    invoke-static {v6}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$500(Lcom/nuance/connect/internal/UpgradeServiceInternal;)Lcom/nuance/connect/util/ConnectNotification;

    move-result-object v6

    const-string v7, "com_nuance_connect_notification_verifying_download_status"

    invoke-interface {v4, v7}, Lcom/nuance/connect/api/ResourcesService;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nuance/connect/util/ConnectNotification;->setText(Ljava/lang/String;)V

    .line 185
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # getter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->notification:Lcom/nuance/connect/util/ConnectNotification;
    invoke-static {v6}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$500(Lcom/nuance/connect/internal/UpgradeServiceInternal;)Lcom/nuance/connect/util/ConnectNotification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/connect/util/ConnectNotification;->updateOrShow()V

    goto/16 :goto_0

    .line 186
    :cond_4
    if-gez v2, :cond_5

    .line 187
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # setter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeDownloading:Z
    invoke-static {v6, v9}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$102(Lcom/nuance/connect/internal/UpgradeServiceInternal;Z)Z

    .line 190
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # getter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->notification:Lcom/nuance/connect/util/ConnectNotification;
    invoke-static {v6}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$500(Lcom/nuance/connect/internal/UpgradeServiceInternal;)Lcom/nuance/connect/util/ConnectNotification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/connect/util/ConnectNotification;->cancel()V

    .line 193
    const-wide/32 v6, 0x7fffffff

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    and-long/2addr v6, v8

    long-to-int v3, v6

    .line 194
    .local v3, "id":I
    new-instance v1, Lcom/nuance/connect/util/ConnectNotification;

    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # getter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->connectService:Lcom/nuance/connect/internal/ConnectServiceManagerInternal;
    invoke-static {v6}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$300(Lcom/nuance/connect/internal/UpgradeServiceInternal;)Lcom/nuance/connect/internal/ConnectServiceManagerInternal;

    move-result-object v6

    invoke-direct {v1, v6, v3}, Lcom/nuance/connect/util/ConnectNotification;-><init>(Lcom/nuance/connect/internal/ConnectServiceManagerInternal;I)V

    .line 196
    .local v1, "downloadFailNotification":Lcom/nuance/connect/util/ConnectNotification;
    const-string v6, "com_nuance_connect_notification_default_download_title"

    invoke-interface {v4, v6}, Lcom/nuance/connect/api/ResourcesService;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/nuance/connect/util/ConnectNotification;->setTitle(Ljava/lang/String;)V

    .line 197
    const-string v6, "com_nuance_connect_notification_upgrade_insufficient_space"

    invoke-interface {v4, v6}, Lcom/nuance/connect/api/ResourcesService;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/nuance/connect/util/ConnectNotification;->setText(Ljava/lang/String;)V

    .line 198
    const-string v6, "com.nuance.swype.input.Upgrade"

    invoke-virtual {v1, v6}, Lcom/nuance/connect/util/ConnectNotification;->createIntent(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1}, Lcom/nuance/connect/util/ConnectNotification;->setFlagAutoCancel()V

    .line 200
    invoke-virtual {v1}, Lcom/nuance/connect/util/ConnectNotification;->updateOrShow()V

    goto/16 :goto_0

    .line 202
    .end local v1    # "downloadFailNotification":Lcom/nuance/connect/util/ConnectNotification;
    .end local v3    # "id":I
    :cond_5
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # getter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->notification:Lcom/nuance/connect/util/ConnectNotification;
    invoke-static {v6}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$500(Lcom/nuance/connect/internal/UpgradeServiceInternal;)Lcom/nuance/connect/util/ConnectNotification;

    move-result-object v6

    iget-object v7, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # getter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->upgradeProgress:I
    invoke-static {v7}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$600(Lcom/nuance/connect/internal/UpgradeServiceInternal;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nuance/connect/util/ConnectNotification;->setRepeatingVariables(Ljava/lang/String;)V

    .line 203
    iget-object v6, p0, Lcom/nuance/connect/internal/UpgradeServiceInternal$1;->this$0:Lcom/nuance/connect/internal/UpgradeServiceInternal;

    # getter for: Lcom/nuance/connect/internal/UpgradeServiceInternal;->notification:Lcom/nuance/connect/util/ConnectNotification;
    invoke-static {v6}, Lcom/nuance/connect/internal/UpgradeServiceInternal;->access$500(Lcom/nuance/connect/internal/UpgradeServiceInternal;)Lcom/nuance/connect/util/ConnectNotification;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/connect/util/ConnectNotification;->updateOrShow()V

    goto/16 :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPostUpgrade()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method
