.class public Lcom/android/contacts/vcard/NotificationImportExportListener;
.super Ljava/lang/Object;
.source "NotificationImportExportListener.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/contacts/vcard/VCardImportExportListener;


# static fields
.field static final DEFAULT_NOTIFICATION_TAG:Ljava/lang/String; = "VCardServiceProgress"

.field private static final ERROR_UNKNOWN_VCF:I = -0x1

.field static final FAILURE_NOTIFICATION_TAG:Ljava/lang/String; = "VCardServiceFailure"

.field private static mNotification:Landroid/app/Notification;


# instance fields
.field private final mContext:Landroid/app/Activity;

.field private final mHandler:Landroid/os/Handler;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mShowImportedVcard:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mShowImportedVcard:Z

    .line 65
    iput-object p1, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    .line 66
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    sput-object v0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mNotification:Landroid/app/Notification;

    .line 70
    return-void
.end method

.method static constructCancelNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 347
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1080078

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static constructExportFinishNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 377
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1080089

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    if-eqz p3, :cond_0

    .end local p3    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-static {p0, v2, p3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .restart local p3    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance p3, Landroid/content/Intent;

    .end local p3    # "intent":Landroid/content/Intent;
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    goto :goto_0
.end method

.method static constructFinishNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 365
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1080082

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    if-eqz p3, :cond_0

    .end local p3    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-static {p0, v2, p3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .restart local p3    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance p3, Landroid/content/Intent;

    .end local p3    # "intent":Landroid/content/Intent;
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    goto :goto_0
.end method

.method static constructImportFailureNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 395
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1080078

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f0e00de

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static constructImportFailureNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 406
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1080078

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f0e00de

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    if-eqz p3, :cond_0

    .end local p3    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-static {p0, v2, p3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .restart local p3    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance p3, Landroid/content/Intent;

    .end local p3    # "intent":Landroid/content/Intent;
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    goto :goto_0
.end method

.method static constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "tickerText"    # Ljava/lang/String;
    .param p4, "jobId"    # I
    .param p5, "displayName"    # Ljava/lang/String;
    .param p6, "totalCount"    # I
    .param p7, "currentCount"    # I

    .prologue
    .line 294
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f040201

    invoke-direct {v5, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 297
    .local v5, "remoteViews":Landroid/widget/RemoteViews;
    const v7, 0x7f090470

    invoke-virtual {v5, v7, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 298
    const v8, 0x7f090471

    const/4 v7, -0x1

    move/from16 v0, p6

    if-ne v0, v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {v5, v8, v0, v1, v7}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 301
    if-lez p6, :cond_1

    .line 302
    const v7, 0x7f0e00ef

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    mul-int/lit8 v10, p7, 0x64

    div-int v10, v10, p6

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, "percentage":Ljava/lang/String;
    :goto_1
    const v7, 0x7f09046f

    invoke-virtual {v5, v7, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 308
    const/4 v7, 0x1

    if-ne p1, v7, :cond_2

    const v2, 0x1080081

    .line 310
    .local v2, "icon":I
    :goto_2
    const v7, 0x7f09046e

    invoke-virtual {v5, v7, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 313
    sget-object v7, Lcom/android/contacts/vcard/NotificationImportExportListener;->mNotification:Landroid/app/Notification;

    iput v2, v7, Landroid/app/Notification;->icon:I

    .line 314
    sget-object v7, Lcom/android/contacts/vcard/NotificationImportExportListener;->mNotification:Landroid/app/Notification;

    iput-object p3, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 315
    sget-object v7, Lcom/android/contacts/vcard/NotificationImportExportListener;->mNotification:Landroid/app/Notification;

    iput-object v5, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 316
    sget-object v7, Lcom/android/contacts/vcard/NotificationImportExportListener;->mNotification:Landroid/app/Notification;

    iget v8, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v7, Landroid/app/Notification;->flags:I

    .line 326
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/android/contacts/vcard/CancelActivity;

    invoke-direct {v3, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    .local v3, "intent":Landroid/content/Intent;
    new-instance v7, Landroid/net/Uri$Builder;

    invoke-direct {v7}, Landroid/net/Uri$Builder;-><init>()V

    const-string v8, "invalidscheme"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "invalidauthority"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "job_id"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "display_name"

    move-object/from16 v0, p5

    invoke-virtual {v7, v8, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 333
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 335
    sget-object v7, Lcom/android/contacts/vcard/NotificationImportExportListener;->mNotification:Landroid/app/Notification;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p0, v8, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    iput-object v8, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 336
    sget-object v7, Lcom/android/contacts/vcard/NotificationImportExportListener;->mNotification:Landroid/app/Notification;

    return-object v7

    .line 298
    .end local v2    # "icon":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "percentage":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_0
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 305
    :cond_1
    const-string v4, ""

    .restart local v4    # "percentage":Ljava/lang/String;
    goto :goto_1

    .line 308
    :cond_2
    const v2, 0x1080088

    goto :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 75
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e00e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 84
    :goto_0
    return v4

    .line 80
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 81
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCancelRequest(Lcom/android/contacts/vcard/CancelRequest;I)V
    .locals 7
    .param p1, "request"    # Lcom/android/contacts/vcard/CancelRequest;
    .param p2, "type"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 268
    if-ne p2, v4, :cond_0

    iget-object v2, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v3, 0x7f0e00e8

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/android/contacts/vcard/CancelRequest;->displayName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "description":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructCancelNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    .line 272
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "VCardServiceProgress"

    iget v4, p1, Lcom/android/contacts/vcard/CancelRequest;->jobId:I

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 273
    return-void

    .line 268
    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "notification":Landroid/app/Notification;
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v3, 0x7f0e00f8

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/android/contacts/vcard/CancelRequest;->displayName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onComplete()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 418
    return-void
.end method

.method public onExportFailed(Lcom/android/contacts/vcard/ExportRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/android/contacts/vcard/ExportRequest;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v3, 0x7f0e00ed

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 264
    return-void
.end method

.method public onExportProcessed(Lcom/android/contacts/vcard/ExportRequest;I)V
    .locals 9
    .param p1, "request"    # Lcom/android/contacts/vcard/ExportRequest;
    .param p2, "jobId"    # I

    .prologue
    const/4 v7, 0x0

    .line 249
    iget-object v0, p1, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 250
    .local v5, "displayName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v1, 0x7f0e00ec

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v7

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "message":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 254
    iget-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const/4 v1, 0x2

    const/4 v6, -0x1

    move-object v3, v2

    move v4, p2

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v8

    .line 257
    .local v8, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "VCardServiceProgress"

    invoke-virtual {v0, v1, p2, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 258
    return-void
.end method

.method public onImportCanceled(Lcom/android/contacts/vcard/ImportRequest;I)V
    .locals 7
    .param p1, "request"    # Lcom/android/contacts/vcard/ImportRequest;
    .param p2, "jobId"    # I

    .prologue
    .line 239
    iget-object v2, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v3, 0x7f0e00e8

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/android/contacts/vcard/ImportRequest;->displayName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "description":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructCancelNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    .line 243
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "VCardServiceProgress"

    invoke-virtual {v2, v3, p2, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 245
    return-void
.end method

.method public onImportFailed(Lcom/android/contacts/vcard/ImportRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/android/contacts/vcard/ImportRequest;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v3, 0x7f0e00eb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 235
    return-void
.end method

.method public onImportFinished(Lcom/android/contacts/vcard/ImportRequest;ILandroid/net/Uri;)V
    .locals 29
    .param p1, "request"    # Lcom/android/contacts/vcard/ImportRequest;
    .param p2, "jobId"    # I
    .param p3, "createdUri"    # Landroid/net/Uri;

    .prologue
    .line 139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v4, 0x7f0e00e7

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/contacts/vcard/ImportRequest;->displayName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 141
    .local v13, "description":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v4, 0x7f0e00de

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/contacts/vcard/ImportRequest;->displayName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 146
    .local v15, "failDescription":Ljava/lang/String;
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const-class v4, Lcom/sec/android/app/contacts/vcard/ImportFinishActivity;

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .local v17, "finishIntent":Landroid/content/Intent;
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 150
    .local v25, "salesCode":Ljava/lang/String;
    const-string v3, "PAP"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "VID"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "XEU"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 151
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "update_demo_contact"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    .line 153
    .local v27, "updateDemoContact":I
    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_3

    .line 154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "update_demo_contact"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "name_raw_contact_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "lookup"

    aput-object v7, v5, v6

    const-string v6, "link_accounts == \'vnd.sec.contact.phone\'"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 160
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 161
    const/16 v18, 0x1

    .line 162
    .local v18, "index":I
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 164
    .local v23, "rawContactId":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/storage/sdcard0/LiveDemo/Contacts_Photo/caller_image_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 167
    .local v22, "path":Ljava/lang/String;
    new-instance v28, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const-class v4, Lcom/android/contacts/ContactSaveService;

    move-object/from16 v0, v28

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v28, "updateIntent":Landroid/content/Intent;
    const-string v3, "updatePhoto"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v3, "rawContactId"

    move-object/from16 v0, v28

    move-wide/from16 v1, v23

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 170
    const-string v3, "path"

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 172
    add-int/lit8 v18, v18, 0x1

    .line 173
    goto :goto_0

    .line 175
    .end local v22    # "path":Ljava/lang/String;
    .end local v23    # "rawContactId":J
    .end local v28    # "updateIntent":Landroid/content/Intent;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 176
    const/16 v18, 0x0

    .line 178
    :cond_2
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 179
    .local v10, "contactId":J
    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 180
    .local v20, "lookupKey":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-static {v10, v11, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 182
    .local v12, "contactUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const/4 v4, 0x1

    invoke-static {v3, v12, v4}, Lcom/android/contacts/ContactSaveService;->createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v26

    .line 183
    .local v26, "setStarredIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 184
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 185
    add-int/lit8 v18, v18, 0x4

    .line 186
    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 188
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 194
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v10    # "contactId":J
    .end local v12    # "contactUri":Landroid/net/Uri;
    .end local v18    # "index":I
    .end local v20    # "lookupKey":Ljava/lang/String;
    .end local v26    # "setStarredIntent":Landroid/content/Intent;
    .end local v27    # "updateDemoContact":I
    :cond_3
    if-eqz p3, :cond_5

    .line 195
    invoke-static/range {p3 .. p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v23

    .line 196
    .restart local v23    # "rawContactId":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v23

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v12

    .line 199
    .restart local v12    # "contactUri":Landroid/net/Uri;
    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 200
    .local v19, "intent":Landroid/content/Intent;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-static {v3, v13, v4, v0}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructFinishNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v21

    .line 212
    .end local v12    # "contactUri":Landroid/net/Uri;
    .end local v23    # "rawContactId":J
    .local v21, "notification":Landroid/app/Notification;
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v4, "VCardServiceProgress"

    move/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v3, v4, v0, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 214
    if-nez v19, :cond_6

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mHandler:Landroid/os/Handler;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_4
    :goto_2
    return-void

    .line 204
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v21    # "notification":Landroid/app/Notification;
    :cond_5
    const/16 v19, 0x0

    .line 205
    .restart local v19    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v4, 0x7f0e00e6

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/contacts/vcard/ImportRequest;->displayName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 207
    .local v16, "failReason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v3, v15, v0, v1}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructImportFailureNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v21

    .restart local v21    # "notification":Landroid/app/Notification;
    goto :goto_1

    .line 218
    .end local v16    # "failReason":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 219
    .local v14, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    .line 221
    .end local v14    # "e":Ljava/lang/RuntimeException;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mShowImportedVcard:Z

    if-eqz v3, :cond_4

    .line 222
    const-string v3, "entryCount"

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/contacts/vcard/ImportRequest;->entryCount:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    const-string v3, "title"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportRequest;->displayName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const v3, 0x10008000

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method public onImportParsed(Lcom/android/contacts/vcard/ImportRequest;ILcom/android/vcard/VCardEntry;II)V
    .locals 10
    .param p1, "request"    # Lcom/android/contacts/vcard/ImportRequest;
    .param p2, "jobId"    # I
    .param p3, "entry"    # Lcom/android/vcard/VCardEntry;
    .param p4, "currentCount"    # I
    .param p5, "totalCount"    # I

    .prologue
    .line 118
    invoke-virtual {p3}, Lcom/android/vcard/VCardEntry;->isIgnorable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 123
    .local v9, "totalCountString":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v1, 0x7f0e00e4

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v9, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p3}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "tickerText":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v1, 0x7f0e00e5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p3}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "description":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v5, p1, Lcom/android/contacts/vcard/ImportRequest;->displayName:Ljava/lang/String;

    move v4, p2

    move v6, p5

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v8

    .line 134
    .local v8, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "VCardServiceProgress"

    invoke-virtual {v0, v1, p2, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public onImportProcessed(Lcom/android/contacts/vcard/ImportRequest;II)V
    .locals 9
    .param p1, "request"    # Lcom/android/contacts/vcard/ImportRequest;
    .param p2, "jobId"    # I
    .param p3, "sequence"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 92
    iget-object v0, p1, Lcom/android/contacts/vcard/ImportRequest;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 93
    iget-object v5, p1, Lcom/android/contacts/vcard/ImportRequest;->displayName:Ljava/lang/String;

    .line 95
    .local v5, "displayName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v3, 0x7f0e00e9

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v5, v4, v7

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "message":Ljava/lang/String;
    :goto_0
    if-nez p3, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const/4 v6, -0x1

    move-object v3, v2

    move v4, p2

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v8

    .line 112
    .local v8, "notification":Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "VCardServiceProgress"

    invoke-virtual {v0, v1, p2, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 113
    return-void

    .line 97
    .end local v2    # "message":Ljava/lang/String;
    .end local v5    # "displayName":Ljava/lang/String;
    .end local v8    # "notification":Landroid/app/Notification;
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v3, 0x7f0e00ee

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 98
    .restart local v5    # "displayName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mContext:Landroid/app/Activity;

    const v3, 0x7f0e00ea

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_0
.end method

.method public showImportedVcard(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 422
    iput-boolean p1, p0, Lcom/android/contacts/vcard/NotificationImportExportListener;->mShowImportedVcard:Z

    .line 423
    return-void
.end method
