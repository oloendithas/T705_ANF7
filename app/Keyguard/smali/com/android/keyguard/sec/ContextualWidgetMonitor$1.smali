.class Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "ContextualWidgetMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/ContextualWidgetMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)V
    .registers 2

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 147
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "action":Ljava/lang/String;
    const-string v10, "pkg"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 149
    .local v6, "pkg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 150
    .local v2, "id":I
    const/4 v3, 0x0

    .line 152
    .local v3, "mCheckMissedEvent":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 153
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_41

    .line 154
    const-string v10, "id"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 155
    const-string v10, "ContexualWidgetMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v10, "Notification"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/app/Notification;

    .line 157
    .local v5, "notification":Landroid/app/Notification;
    if-eqz v5, :cond_41

    iget v10, v5, Landroid/app/Notification;->missedCount:I

    if-lez v10, :cond_41

    .line 158
    const/4 v3, 0x1

    .line 162
    .end local v5    # "notification":Landroid/app/Notification;
    :cond_41
    const-string v10, "ContexualWidgetMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "action ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v10, "ContexualWidgetMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pkg ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v10, "ContexualWidgetMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mCheckMissedEvent ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    if-eqz v6, :cond_e4

    const/4 v10, 0x5

    if-eq v2, v10, :cond_e4

    const-string v10, "com.android.phone"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ac

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v10

    if-eqz v10, :cond_a4

    const-string v10, "com.skt.prod.dialer"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ac

    :cond_a4
    const-string v10, "com.android.mms"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e4

    .line 167
    :cond_ac
    const-string v10, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12f

    if-eqz v3, :cond_12f

    .line 168
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12c0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_cf

    .line 169
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12c0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 170
    :cond_cf
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12c0

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 178
    :cond_e4
    :goto_e4
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUsePreviousMusicWidget()Z

    move-result v10

    if-eqz v10, :cond_120

    .line 179
    const-string v10, "com.sec.android.app.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_167

    .line 180
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12d4

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_10b

    .line 181
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12d4

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    :cond_10b
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12d4

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 190
    :cond_120
    :goto_120
    const-string v10, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1da

    .line 191
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 192
    .local v9, "uri":Landroid/net/Uri;
    if-nez v9, :cond_19e

    .line 259
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_12e
    :goto_12e
    return-void

    .line 171
    :cond_12f
    const-string v10, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e4

    .line 172
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12ca

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_150

    .line 173
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12ca

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 174
    :cond_150
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12ca

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_e4

    .line 183
    :cond_167
    const-string v10, "com.sec.android.app.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_120

    .line 184
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12de

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_188

    .line 185
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12de

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 186
    :cond_188
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12de

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_120

    .line 195
    .restart local v9    # "uri":Landroid/net/Uri;
    :cond_19e
    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    .line 196
    .local v7, "pkgName":Ljava/lang/String;
    if-eqz v7, :cond_12e

    .line 199
    const-string v10, "com.sec.android.app.music"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_308

    .line 200
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12de

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_1c5

    .line 201
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12de

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    :cond_1c5
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12de

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 210
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_1da
    :goto_1da
    const-string v10, "com.android.internal.policy.impl.keyguard.sec.REMOTE_ADDED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_340

    .line 211
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12e8

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_1fb

    .line 212
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12e8

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 213
    :cond_1fb
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12e8

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 220
    :cond_210
    :goto_210
    const-string v10, "com.samsung.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_378

    .line 221
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12fc

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_231

    .line 222
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12fc

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 223
    :cond_231
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12fc

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 230
    :cond_246
    :goto_246
    const-string v10, "com.sec.android.app.fm.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3b0

    .line 231
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x1310

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_267

    .line 232
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x1310

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 233
    :cond_267
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x1310

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 240
    :cond_27c
    :goto_27c
    const-string v10, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12e

    const-string v10, "networkType"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_12e

    .line 242
    const-string v10, "phone"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 243
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # invokes: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->isRoamingFeature()Z
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$100(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Z

    move-result v10

    if-eqz v10, :cond_3e8

    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # invokes: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->isIgnoreNationalRoaming()Z
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$200(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Z

    move-result v10

    if-nez v10, :cond_3e8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v10

    if-eqz v10, :cond_3e8

    const/4 v4, 0x1

    .line 247
    .local v4, "new_show_missed":Z
    :goto_2ac
    const-string v10, "ContexualWidgetMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "new_show_missed ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mShowMissedWidgetBecauseOfRoaming:Z
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$300(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Z

    move-result v10

    if-eq v4, v10, :cond_12e

    .line 250
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # setter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mShowMissedWidgetBecauseOfRoaming:Z
    invoke-static {v10, v4}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$302(Lcom/android/keyguard/sec/ContextualWidgetMonitor;Z)Z

    .line 251
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x1324

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_2ea

    .line 252
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x1324

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 253
    :cond_2ea
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x1324

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 255
    const-string v10, "ContexualWidgetMonitor"

    const-string v11, "sendMessage (MSG_ROAMING_PLAY_STATE_CHANGED)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12e

    .line 203
    .end local v4    # "new_show_missed":Z
    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v7    # "pkgName":Ljava/lang/String;
    .restart local v9    # "uri":Landroid/net/Uri;
    :cond_308
    const-string v10, "com.sec.android.app.fm"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1da

    .line 204
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x131a

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_329

    .line 205
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x131a

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 206
    :cond_329
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x131a

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1da

    .line 214
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_340
    const-string v10, "com.android.internal.policy.impl.keyguard.sec.REMOTE_REMOVED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_210

    .line 215
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12f2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_361

    .line 216
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x12f2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    :cond_361
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12f2

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_210

    .line 224
    :cond_378
    const-string v10, "com.samsung.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_246

    .line 225
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x1306

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_399

    .line 226
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x1306

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 227
    :cond_399
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x1306

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_246

    .line 234
    :cond_3b0
    const-string v10, "com.sec.android.app.fm.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_27c

    .line 235
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x131a

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-eqz v10, :cond_3d1

    .line 236
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0x131a

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 237
    :cond_3d1
    iget-object v10, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;->this$0:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    # getter for: Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x131a

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_27c

    .line 243
    .restart local v8    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3e8
    const/4 v4, 0x0

    goto/16 :goto_2ac
.end method
