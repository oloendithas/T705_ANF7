.class Lcom/android/server/SecSCTimeReceiver$3;
.super Ljava/lang/Object;
.source "SecSCTimeReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SecSCTimeReceiver;->sec_sctime_handleConnectivityStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SecSCTimeReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/SecSCTimeReceiver;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/server/SecSCTimeReceiver$3;->this$0:Lcom/android/server/SecSCTimeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x3e8

    .line 318
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    .line 319
    .local v0, "client":Landroid/net/SntpClient;
    const-string v7, "pool.ntp.org"

    const/16 v8, 0x7d0

    invoke-virtual {v0, v7, v8}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 320
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v7

    div-long v1, v7, v9

    .line 321
    .local v1, "networktime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long v3, v7, v9

    .line 322
    .local v3, "systemtime":J
    const-string v7, "SecSCTimeReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NTP time is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    # getter for: Lcom/android/server/SecSCTimeReceiver;->DATE_FORMAT:Lcom/android/server/ThreadSafeSimpleDateFormat;
    invoke-static {}, Lcom/android/server/SecSCTimeReceiver;->access$300()Lcom/android/server/ThreadSafeSimpleDateFormat;

    move-result-object v9

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Lcom/android/server/ThreadSafeSimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v7, p0, Lcom/android/server/SecSCTimeReceiver$3;->this$0:Lcom/android/server/SecSCTimeReceiver;

    invoke-virtual {v7, v1, v2, v3, v4}, Lcom/android/server/SecSCTimeReceiver;->onNetworkStateChanged(JJ)V

    .line 330
    .end local v1    # "networktime":J
    .end local v3    # "systemtime":J
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long v5, v7, v9

    .line 327
    .local v5, "systime":J
    const-string v7, "SecSCTimeReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Network state was changed. NTP time could not checked. noting to do. system time is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    # getter for: Lcom/android/server/SecSCTimeReceiver;->DATE_FORMAT:Lcom/android/server/ThreadSafeSimpleDateFormat;
    invoke-static {}, Lcom/android/server/SecSCTimeReceiver;->access$300()Lcom/android/server/ThreadSafeSimpleDateFormat;

    move-result-object v9

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Lcom/android/server/ThreadSafeSimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v7, "SecSCTimeReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Network state was changed. NTP time could not checked. noting to do. system time is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
