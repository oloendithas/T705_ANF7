.class Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationListenerInfo"
.end annotation


# instance fields
.field component:Landroid/content/ComponentName;

.field connection:Landroid/content/ServiceConnection;

.field isSystem:Z

.field listener:Landroid/service/notification/INotificationListener;

.field final synthetic this$0:Lcom/android/server/NotificationManagerService;

.field userid:I


# direct methods
.method public constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;ILandroid/content/ServiceConnection;)V
    .locals 1
    .param p2, "listener"    # Landroid/service/notification/INotificationListener;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "userid"    # I
    .param p5, "connection"    # Landroid/content/ServiceConnection;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-object p2, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->listener:Landroid/service/notification/INotificationListener;

    .line 328
    iput-object p3, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->component:Landroid/content/ComponentName;

    .line 329
    iput p4, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->isSystem:Z

    .line 331
    iput-object p5, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->connection:Landroid/content/ServiceConnection;

    .line 332
    return-void
.end method

.method public constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;IZ)V
    .locals 1
    .param p2, "listener"    # Landroid/service/notification/INotificationListener;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "userid"    # I
    .param p5, "isSystem"    # Z

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p2, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->listener:Landroid/service/notification/INotificationListener;

    .line 319
    iput-object p3, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->component:Landroid/content/ComponentName;

    .line 320
    iput p4, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    .line 321
    iput-boolean p5, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->isSystem:Z

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->connection:Landroid/content/ServiceConnection;

    .line 323
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->connection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->listener:Landroid/service/notification/INotificationListener;

    iget v2, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NotificationManagerService;->unregisterListener(Landroid/service/notification/INotificationListener;I)V

    .line 369
    :cond_0
    return-void
.end method

.method enabledAndUserMatches(Landroid/service/notification/StatusBarNotification;)Z
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 335
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    .line 336
    .local v0, "nid":I
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->isEnabledForCurrentUser()Z

    move-result v3

    if-nez v3, :cond_1

    .line 340
    :cond_0
    :goto_0
    return v1

    .line 339
    :cond_1
    iget v3, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    if-ne v3, v4, :cond_2

    move v1, v2

    goto :goto_0

    .line 340
    :cond_2
    if-eq v0, v4, :cond_3

    iget v3, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    if-ne v0, v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public isEnabledForCurrentUser()Z
    .locals 2

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->isSystem:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 375
    :goto_0
    return v0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->connection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mEnabledListenersForCurrentUser:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$200(Lcom/android/server/NotificationManagerService;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public notifyPostedIfUserMatch(Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->enabledAndUserMatches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    :goto_0
    return-void

    .line 348
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->listener:Landroid/service/notification/INotificationListener;

    invoke-interface {v1, p1}, Landroid/service/notification/INotificationListener;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to notify listener (posted): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->listener:Landroid/service/notification/INotificationListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifyRemovedIfUserMatch(Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 355
    invoke-virtual {p0, p1}, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->enabledAndUserMatches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    :goto_0
    return-void

    .line 357
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->listener:Landroid/service/notification/INotificationListener;

    invoke-interface {v1, p1}, Landroid/service/notification/INotificationListener;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to notify listener (removed): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->listener:Landroid/service/notification/INotificationListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
