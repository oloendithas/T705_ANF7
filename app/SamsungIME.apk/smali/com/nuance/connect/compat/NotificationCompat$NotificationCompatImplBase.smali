.class Lcom/nuance/connect/compat/NotificationCompat$NotificationCompatImplBase;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Lcom/nuance/connect/compat/NotificationCompat$NotificationCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/compat/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationCompatImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotification(Lcom/nuance/connect/compat/NotificationCompat$Builder;)Landroid/app/Notification;
    .locals 5
    .param p1, "b"    # Lcom/nuance/connect/compat/NotificationCompat$Builder;

    .prologue
    .line 52
    iget-object v0, p1, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 53
    .local v0, "result":Landroid/app/Notification;
    iget-object v1, p1, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    iget-object v4, p1, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 54
    return-object v0
.end method
