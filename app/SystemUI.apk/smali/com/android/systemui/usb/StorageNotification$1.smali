.class Lcom/android/systemui/usb/StorageNotification$1;
.super Landroid/content/BroadcastReceiver;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "action":Ljava/lang/String;
    const-string v16, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "notification"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .local v10, "notificationManager":Landroid/app/NotificationManager;
    if-nez v10, :cond_1

    .line 157
    .end local v10    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 129
    .restart local v10    # "notificationManager":Landroid/app/NotificationManager;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/usb/StorageNotification;->MediaStorageMap:Ljava/util/HashMap;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/usb/StorageNotification;->access$300(Lcom/android/systemui/usb/StorageNotification;)Ljava/util/HashMap;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 130
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;

    .line 131
    .local v9, "noti":Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    .line 132
    .local v13, "r":Landroid/content/res/Resources;
    # getter for: Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->mMediaStorageTitleId:I
    invoke-static {v9}, Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->access$400(Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 133
    .local v15, "title":Ljava/lang/CharSequence;
    # getter for: Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->mMediaStorageMessageId:I
    invoke-static {v9}, Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->access$500(Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 134
    .local v8, "message":Ljava/lang/CharSequence;
    # getter for: Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->mMediaStorageNotificationLocale:Landroid/app/Notification;
    invoke-static {v9}, Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->access$600(Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;)Landroid/app/Notification;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v15, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 135
    # getter for: Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->mMediaStorageNotificationLocale:Landroid/app/Notification;
    invoke-static {v9}, Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->access$600(Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;)Landroid/app/Notification;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    # getter for: Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->mMediaStorageNotificationLocale:Landroid/app/Notification;
    invoke-static {v9}, Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;->access$600(Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;)Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v15, v8, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 136
    new-instance v4, Landroid/content/Intent;

    const-string v16, "android.systemui.usb.STORAGE_NOTIFICATION_CANCEL"

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v4, "deleteIntent":Landroid/content/Intent;
    const-string v17, "nid"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/io/Serializable;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/usb/StorageNotification;->access$700(Lcom/android/systemui/usb/StorageNotification;)Landroid/app/Notification;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v4, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 139
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    move-object/from16 v17, v0

    # getter for: Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;
    invoke-static/range {v17 .. v17}, Lcom/android/systemui/usb/StorageNotification;->access$700(Lcom/android/systemui/usb/StorageNotification;)Landroid/app/Notification;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 123
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "deleteIntent":Landroid/content/Intent;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "message":Ljava/lang/CharSequence;
    .end local v9    # "noti":Lcom/android/systemui/usb/StorageNotification$MediaStorageNotificationLocale;
    .end local v10    # "notificationManager":Landroid/app/NotificationManager;
    .end local v13    # "r":Landroid/content/res/Resources;
    .end local v15    # "title":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v16

    monitor-exit p0

    throw v16

    .line 143
    .restart local v3    # "action":Ljava/lang/String;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v10    # "notificationManager":Landroid/app/NotificationManager;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/usb/StorageNotification;->access$800(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/storage/StorageManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v12

    .line 144
    .local v12, "paths":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v0, v12

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    if-gt v6, v0, :cond_0

    .line 145
    aget-object v11, v12, v6

    .line 146
    .local v11, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/usb/StorageNotification;->access$800(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/storage/StorageManager;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 147
    .local v14, "state":Ljava/lang/String;
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/android/systemui/usb/StorageNotification;->isTablet(Landroid/content/Context;)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # invokes: Lcom/android/systemui/usb/StorageNotification;->isSDCard(Ljava/lang/String;)Z
    invoke-static {v0, v11}, Lcom/android/systemui/usb/StorageNotification;->access$900(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    const-string v16, "mounted"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 148
    const-string v16, "StorageNotification"

    const-string v17, "Locale Change!!"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    # invokes: Lcom/android/systemui/usb/StorageNotification;->setComplexStorageNotification(ZLjava/lang/String;)V
    invoke-static {v0, v1, v11}, Lcom/android/systemui/usb/StorageNotification;->access$1000(Lcom/android/systemui/usb/StorageNotification;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 144
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 154
    .end local v6    # "i":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "notificationManager":Landroid/app/NotificationManager;
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "paths":[Ljava/lang/String;
    .end local v14    # "state":Ljava/lang/String;
    :cond_4
    const-string v16, "android.systemui.usb.STORAGE_NOTIFICATION_CANCEL"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification$1;->this$0:Lcom/android/systemui/usb/StorageNotification;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/usb/StorageNotification;->MediaStorageMap:Ljava/util/HashMap;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/usb/StorageNotification;->access$300(Lcom/android/systemui/usb/StorageNotification;)Ljava/util/HashMap;

    move-result-object v16

    const-string v17, "nid"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
