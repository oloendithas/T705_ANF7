.class public Lcom/android/server/ssrm/wluc/Wluc;
.super Ljava/lang/Object;
.source "Wluc.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final WLUC_DATABASE_PATH:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field final packageName:Ljava/lang/String;

.field wlucNextUpdateCheck:Ljava/lang/String;

.field wlucdb:Lcom/android/server/ssrm/wluc/WlucDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "SSRMv2:Wluc"

    sput-object v0, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, "com.sec.android.app.wluc"

    iput-object v0, p0, Lcom/android/server/ssrm/wluc/Wluc;->packageName:Ljava/lang/String;

    .line 79
    const-string v0, "/data/system/wluc.db"

    iput-object v0, p0, Lcom/android/server/ssrm/wluc/Wluc;->WLUC_DATABASE_PATH:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/android/server/ssrm/wluc/Wluc;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/android/server/ssrm/wluc/Wluc;->mHandler:Landroid/os/Handler;

    .line 44
    invoke-virtual {p0}, Lcom/android/server/ssrm/wluc/Wluc;->initWlucDatabase()V

    .line 45
    return-void
.end method

.method protected static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method


# virtual methods
.method public createWlucDatabase()V
    .locals 7

    .prologue
    .line 99
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "CurDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x19bfcc00

    add-long/2addr v3, v5

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 103
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ssrm/wluc/Wluc;->wlucNextUpdateCheck:Ljava/lang/String;

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/ssrm/wluc/Wluc;->wlucNextUpdateCheck:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v3, p0, Lcom/android/server/ssrm/wluc/Wluc;->wlucdb:Lcom/android/server/ssrm/wluc/WlucDatabase;

    invoke-virtual {v3, v2}, Lcom/android/server/ssrm/wluc/WlucDatabase;->writeLog(Ljava/util/ArrayList;)V

    .line 111
    sget-object v3, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createWlucDatabase : wlucNextUpdateCheck : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ssrm/wluc/Wluc;->wlucNextUpdateCheck:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public initWlucDatabase()V
    .locals 2

    .prologue
    .line 87
    iget-object v1, p0, Lcom/android/server/ssrm/wluc/Wluc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ssrm/wluc/WlucDatabase;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/wluc/WlucDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/wluc/Wluc;->wlucdb:Lcom/android/server/ssrm/wluc/WlucDatabase;

    .line 89
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/wluc.db"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "fileWlucDatabase":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/server/ssrm/wluc/Wluc;->createWlucDatabase()V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ssrm/wluc/Wluc;->readWlucDatabase()V

    goto :goto_0
.end method

.method public isNeedToUpdateCheck()Z
    .locals 7

    .prologue
    .line 136
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, "date":Ljava/text/SimpleDateFormat;
    iget-object v4, p0, Lcom/android/server/ssrm/wluc/Wluc;->wlucNextUpdateCheck:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 140
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ssrm/wluc/Wluc;->wlucNextUpdateCheck:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 141
    .local v3, "targetDate":Ljava/util/Date;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 143
    .local v0, "currentDate":Ljava/util/Date;
    invoke-virtual {v0, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 151
    .end local v0    # "currentDate":Ljava/util/Date;
    .end local v3    # "targetDate":Ljava/util/Date;
    :goto_0
    return v4

    .line 145
    :catch_0
    move-exception v2

    .line 146
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNeedToUpdateCheck :e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v4, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    const-string v5, "isNeedToUpdateCheck : wrong wlucNextUpdateCheck"

    invoke-static {v4, v5}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onCheckUpdateSchedule(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 68
    :try_start_0
    sget-object v2, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    const-string v3, "check update schedule for package : com.sec.android.app.wluc"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v1, Lcom/android/server/ssrm/wluc/WlucThread;

    iget-object v2, p0, Lcom/android/server/ssrm/wluc/Wluc;->mContext:Landroid/content/Context;

    const/16 v3, 0x62

    const-string v4, "com.sec.android.app.wluc"

    iget-object v5, p0, Lcom/android/server/ssrm/wluc/Wluc;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/ssrm/wluc/WlucThread;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/os/Handler;)V

    .line 72
    .local v1, "thread":Lcom/android/server/ssrm/wluc/WlucThread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v1    # "thread":Lcom/android/server/ssrm/wluc/WlucThread;
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onMsgReceivedFromWlucThread(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x63

    const/4 v5, 0x5

    .line 172
    if-nez p1, :cond_0

    .line 173
    sget-object v3, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    const-string v4, "onMsgReceivedFromWlucThread : received msg is null!!"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :goto_0
    return-void

    .line 177
    :cond_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_2

    .line 178
    sget-object v3, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    const-string v4, "NO_MATCHING_APPLICATION"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, v5}, Lcom/android/server/ssrm/wluc/Wluc;->updateWlucDatabase(I)V

    .line 225
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/ssrm/wluc/Wluc;->readWlucDatabase()V

    goto :goto_0

    .line 180
    :cond_2
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_3

    .line 181
    sget-object v3, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    const-string v4, "MATCHING_BUT_NO_UPDATE"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0, v5}, Lcom/android/server/ssrm/wluc/Wluc;->updateWlucDatabase(I)V

    goto :goto_1

    .line 184
    :cond_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v6, :cond_4

    .line 185
    sget-object v3, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    const-string v4, "CHECK_UPDATE_AVAIBLE"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v2, Lcom/android/server/ssrm/wluc/WlucThread;

    iget-object v3, p0, Lcom/android/server/ssrm/wluc/Wluc;->mContext:Landroid/content/Context;

    const/16 v4, 0x60

    const-string v5, "com.sec.android.app.wluc"

    iget-object v6, p0, Lcom/android/server/ssrm/wluc/Wluc;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/ssrm/wluc/WlucThread;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/os/Handler;)V

    .line 188
    .local v2, "thread":Lcom/android/server/ssrm/wluc/WlucThread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 189
    .end local v2    # "thread":Lcom/android/server/ssrm/wluc/WlucThread;
    :cond_4
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_5

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_6

    .line 191
    :cond_5
    sget-object v3, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    const-string v4, "MATCHING_UPDATABLE_NORMAL/MATCHING_UPDATABLE_CRITICAL"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 193
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 194
    .local v1, "targetPackageName":Ljava/lang/String;
    new-instance v2, Lcom/android/server/ssrm/wluc/WlucThread;

    iget-object v3, p0, Lcom/android/server/ssrm/wluc/Wluc;->mContext:Landroid/content/Context;

    const/16 v4, 0x61

    iget-object v5, p0, Lcom/android/server/ssrm/wluc/Wluc;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/android/server/ssrm/wluc/WlucThread;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/os/Handler;)V

    .line 196
    .restart local v2    # "thread":Lcom/android/server/ssrm/wluc/WlucThread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 199
    .end local v1    # "targetPackageName":Ljava/lang/String;
    .end local v2    # "thread":Lcom/android/server/ssrm/wluc/WlucThread;
    :cond_6
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x5e

    if-ne v3, v4, :cond_7

    .line 200
    sget-object v3, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    const-string v4, "DOWNLOAD_FAILED"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 201
    :cond_7
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_8

    .line 202
    sget-object v3, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    const-string v4, "INSTALL_FAILED"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 203
    :cond_8
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x59

    if-ne v3, v4, :cond_9

    .line 204
    sget-object v3, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    const-string v4, "INSTALL_SUCCESS"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0, v5}, Lcom/android/server/ssrm/wluc/Wluc;->updateWlucDatabase(I)V

    goto/16 :goto_1

    .line 207
    :cond_9
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x62

    if-ne v3, v4, :cond_b

    .line 208
    sget-object v3, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    const-string v4, "CHECK_UPDATE_SCHEDULE"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/server/ssrm/wluc/Wluc;->isNeedToUpdateCheck()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 211
    iget-object v3, p0, Lcom/android/server/ssrm/wluc/Wluc;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    .line 212
    iget-object v3, p0, Lcom/android/server/ssrm/wluc/Wluc;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 213
    .local v0, "sendMsg":Landroid/os/Message;
    const/4 v3, 0x6

    iput v3, v0, Landroid/os/Message;->what:I

    .line 214
    iput v6, v0, Landroid/os/Message;->arg1:I

    .line 215
    iget-object v3, p0, Lcom/android/server/ssrm/wluc/Wluc;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 219
    .end local v0    # "sendMsg":Landroid/os/Message;
    :cond_a
    sget-object v3, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    const-string v4, "CHECK_UPDATE_SCHEDULE : not yet!!!"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 221
    :cond_b
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x58

    if-ne v3, v4, :cond_1

    .line 222
    sget-object v3, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    const-string v4, "UPDATE_CHECK_FAIL"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onUpdateCheck(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    :try_start_0
    sget-object v2, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    const-string v3, "download check for package : com.sec.android.app.wluc"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v1, Lcom/android/server/ssrm/wluc/WlucThread;

    iget-object v2, p0, Lcom/android/server/ssrm/wluc/Wluc;->mContext:Landroid/content/Context;

    const/16 v3, 0x60

    const-string v4, "com.sec.android.app.wluc"

    iget-object v5, p0, Lcom/android/server/ssrm/wluc/Wluc;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/ssrm/wluc/WlucThread;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/os/Handler;)V

    .line 59
    .local v1, "thread":Lcom/android/server/ssrm/wluc/WlucThread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1    # "thread":Lcom/android/server/ssrm/wluc/WlucThread;
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public readWlucDatabase()V
    .locals 8

    .prologue
    .line 116
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/ssrm/wluc/Wluc;->wlucdb:Lcom/android/server/ssrm/wluc/WlucDatabase;

    invoke-virtual {v5}, Lcom/android/server/ssrm/wluc/WlucDatabase;->readLog()Ljava/util/ArrayList;

    move-result-object v3

    .line 118
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 119
    .local v4, "strTemp":Ljava/lang/String;
    sget-object v5, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readWlucDatabase : array - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iput-object v4, p0, Lcom/android/server/ssrm/wluc/Wluc;->wlucNextUpdateCheck:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "strTemp":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/File;

    const-string v5, "/data/system/wluc.db"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v1, "fileWlucDatabase":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 127
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ssrm/wluc/Wluc;->createWlucDatabase()V

    .line 130
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "fileWlucDatabase":Ljava/io/File;
    :goto_1
    return-void

    .line 122
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    sget-object v5, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readWlucDatabase : wlucNextUpdateCheck : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/ssrm/wluc/Wluc;->wlucNextUpdateCheck:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public updateWlucDatabase(I)V
    .locals 8
    .param p1, "days"    # I

    .prologue
    .line 156
    sget-object v4, Lcom/android/server/ssrm/wluc/Wluc;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateWlucDatabase : after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", updateCheck will be available"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/wluc/Wluc;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "CurDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const v6, 0x5265c00

    mul-int/2addr v6, p1

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 164
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "targetScheduleDate":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v4, p0, Lcom/android/server/ssrm/wluc/Wluc;->wlucdb:Lcom/android/server/ssrm/wluc/WlucDatabase;

    invoke-virtual {v4, v2}, Lcom/android/server/ssrm/wluc/WlucDatabase;->writeLog(Ljava/util/ArrayList;)V

    .line 169
    return-void
.end method
