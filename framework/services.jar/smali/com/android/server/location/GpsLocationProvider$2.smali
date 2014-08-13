.class Lcom/android/server/location/GpsLocationProvider$2;
.super Landroid/content/BroadcastReceiver;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 417
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "action":Ljava/lang/String;
    const-string v5, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 420
    const-string v5, "GpsLocationProvider"

    const-string v6, "ALARM_WAKEUP"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V
    invoke-static {v5, v7}, Lcom/android/server/location/GpsLocationProvider;->access$100(Lcom/android/server/location/GpsLocationProvider;Z)V

    .line 447
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-virtual {v5, p2}, Lcom/android/server/location/GpsLocationProvider_samsung;->extension_mBroadcastReciever(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    .line 448
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v5, "result_mask"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 449
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const-string v6, "packet_data"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "packet_length"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V
    invoke-static {v5, v6, v7}, Lcom/android/server/location/GpsLocationProvider;->access$700(Lcom/android/server/location/GpsLocationProvider;[BI)V

    .line 452
    :cond_1
    return-void

    .line 422
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_2
    const-string v5, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 423
    const-string v5, "GpsLocationProvider"

    const-string v6, "ALARM_TIMEOUT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->hibernate()V
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_0

    .line 425
    :cond_3
    const-string v5, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$300(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->extension_checkWapPushMsg(Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 426
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/android/server/location/GpsLocationProvider;->access$400(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V

    goto :goto_0

    .line 427
    :cond_4
    const-string v5, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$300(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/location/GpsLocationProvider_samsung;->extension_checkWapPushMsg(Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 428
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V
    invoke-static {v5, p2}, Lcom/android/server/location/GpsLocationProvider;->access$500(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V

    goto :goto_0

    .line 429
    :cond_5
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 431
    const-string v5, "noConnectivity"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 432
    const/4 v4, 0x1

    .line 438
    .local v4, "networkState":I
    :goto_1
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 440
    .local v3, "info":Landroid/net/NetworkInfo;
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 442
    .local v2, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 444
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$2;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-virtual {v5, v4, v3}, Lcom/android/server/location/GpsLocationProvider;->updateNetworkState(ILandroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 434
    .end local v2    # "connManager":Landroid/net/ConnectivityManager;
    .end local v3    # "info":Landroid/net/NetworkInfo;
    .end local v4    # "networkState":I
    :cond_6
    const/4 v4, 0x2

    .restart local v4    # "networkState":I
    goto :goto_1
.end method
