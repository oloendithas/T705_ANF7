.class public Lcom/nuance/connect/compat/NotificationCompat$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/compat/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mContentInfo:Ljava/lang/CharSequence;

.field mContentIntent:Landroid/app/PendingIntent;

.field mContentText:Ljava/lang/CharSequence;

.field mContentTitle:Ljava/lang/CharSequence;

.field mContext:Landroid/content/Context;

.field mFullScreenIntent:Landroid/app/PendingIntent;

.field mLargeIcon:Landroid/graphics/Bitmap;

.field mNotification:Landroid/app/Notification;

.field mNumber:I

.field mTickerView:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 106
    iput-object p1, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 109
    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 110
    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 111
    return-void
.end method

.method private setFlag(IZ)V
    .locals 3
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .prologue
    .line 390
    if-eqz p2, :cond_0

    .line 391
    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public getNotification()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 402
    # getter for: Lcom/nuance/connect/compat/NotificationCompat;->IMPL:Lcom/nuance/connect/compat/NotificationCompat$NotificationCompatImpl;
    invoke-static {}, Lcom/nuance/connect/compat/NotificationCompat;->access$000()Lcom/nuance/connect/compat/NotificationCompat$NotificationCompatImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nuance/connect/compat/NotificationCompat$NotificationCompatImpl;->getNotification(Lcom/nuance/connect/compat/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public setAutoCancel(Z)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 1
    .param p1, "autoCancel"    # Z

    .prologue
    .line 367
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/nuance/connect/compat/NotificationCompat$Builder;->setFlag(IZ)V

    .line 368
    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 1
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 207
    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 0
    .param p1, "info"    # Ljava/lang/CharSequence;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 189
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 221
    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 171
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 162
    return-object p0
.end method

.method public setDefaults(I)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 2
    .param p1, "defaults"    # I

    .prologue
    .line 382
    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 383
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 386
    :cond_0
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 234
    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "highPriority"    # Z

    .prologue
    .line 253
    iput-object p1, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 254
    const/16 v0, 0x80

    invoke-direct {p0, v0, p2}, Lcom/nuance/connect/compat/NotificationCompat$Builder;->setFlag(IZ)V

    .line 255
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 283
    return-object p0
.end method

.method public setLights(III)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 5
    .param p1, "argb"    # I
    .param p2, "onMs"    # I
    .param p3, "offMs"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 324
    iget-object v3, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v3, Landroid/app/Notification;->ledARGB:I

    .line 325
    iget-object v3, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v3, Landroid/app/Notification;->ledOnMS:I

    .line 326
    iget-object v3, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p3, v3, Landroid/app/Notification;->ledOffMS:I

    .line 327
    iget-object v3, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->ledOnMS:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->ledOffMS:I

    if-eqz v3, :cond_0

    move v0, v1

    .line 328
    .local v0, "showLights":Z
    :goto_0
    iget-object v3, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, -0x2

    if-eqz v0, :cond_1

    :goto_1
    or-int/2addr v1, v4

    iput v1, v3, Landroid/app/Notification;->flags:I

    .line 330
    return-object p0

    .end local v0    # "showLights":Z
    :cond_0
    move v0, v2

    .line 327
    goto :goto_0

    .restart local v0    # "showLights":Z
    :cond_1
    move v1, v2

    .line 328
    goto :goto_1
.end method

.method public setNumber(I)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 180
    iput p1, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNumber:I

    .line 181
    return-object p0
.end method

.method public setOngoing(Z)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 1
    .param p1, "ongoing"    # Z

    .prologue
    .line 347
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/nuance/connect/compat/NotificationCompat$Builder;->setFlag(IZ)V

    .line 348
    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 1
    .param p1, "onlyAlertOnce"    # Z

    .prologue
    .line 356
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/nuance/connect/compat/NotificationCompat$Builder;->setFlag(IZ)V

    .line 357
    return-object p0
.end method

.method public setSmallIcon(I)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 1
    .param p1, "icon"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 133
    return-object p0
.end method

.method public setSmallIcon(II)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 1
    .param p1, "icon"    # I
    .param p2, "level"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 152
    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    .line 153
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 2
    .param p1, "sound"    # Landroid/net/Uri;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 291
    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 292
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 1
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "streamType"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 303
    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->audioStreamType:I

    .line 304
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 1
    .param p1, "tickerText"    # Ljava/lang/CharSequence;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 264
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 1
    .param p1, "tickerText"    # Ljava/lang/CharSequence;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 274
    iput-object p2, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 275
    return-object p0
.end method

.method public setVibrate([J)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 1
    .param p1, "pattern"    # [J

    .prologue
    .line 314
    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    .line 315
    return-object p0
.end method

.method public setWhen(J)Lcom/nuance/connect/compat/NotificationCompat$Builder;
    .locals 1
    .param p1, "when"    # J

    .prologue
    .line 118
    iget-object v0, p0, Lcom/nuance/connect/compat/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 119
    return-object p0
.end method
