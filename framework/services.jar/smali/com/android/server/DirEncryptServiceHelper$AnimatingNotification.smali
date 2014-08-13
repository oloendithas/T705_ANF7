.class Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;
.super Ljava/lang/Object;
.source "DirEncryptServiceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DirEncryptServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatingNotification"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLevel:I

.field private mStop:Z

.field final synthetic this$0:Lcom/android/server/DirEncryptServiceHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/DirEncryptServiceHelper;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mContext:Landroid/content/Context;

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    .line 165
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mLevel:I

    .line 168
    iput-object p2, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mContext:Landroid/content/Context;

    .line 169
    return-void
.end method


# virtual methods
.method public isInProgress()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->access$300(Lcom/android/server/DirEncryptServiceHelper;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 188
    :try_start_0
    iget v1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mLevel:I

    const/4 v3, 0x4

    if-ge v1, v3, :cond_2

    .line 189
    iget v1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mLevel:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mLevel:I

    .line 193
    :goto_0
    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->access$400()Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 194
    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->access$400()Landroid/app/Notification;

    move-result-object v1

    iget v3, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mLevel:I

    iput v3, v1, Landroid/app/Notification;->iconLevel:I

    .line 196
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    if-nez v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 199
    .local v0, "nm":Landroid/app/NotificationManager;
    sget v1, Landroid/dirEncryption/DirEncryptionManager;->SECURITY_POLICY_NOTIFICATION_ID:I

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->access$400()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 201
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    # getter for: Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->access$200(Lcom/android/server/DirEncryptServiceHelper;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    .end local v0    # "nm":Landroid/app/NotificationManager;
    :cond_1
    monitor-exit v2

    .line 204
    return-void

    .line 191
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mLevel:I

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    .line 177
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    .line 173
    return-void
.end method
