.class public Lcom/android/keyguard/sec/ContextualEventManager;
.super Ljava/lang/Object;
.source "ContextualEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/keyguard/sec/ContextualEventManager;


# instance fields
.field private AIRPLANE_MODE_START_TIME:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mContextualEventContainer:Lcom/android/keyguard/sec/ContextualEventContainer;

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field private mSecKeyguardFlightModeView:Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

.field private mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

.field private mSecKeyguardStatusView:Landroid/view/View;

.field private mUpdateHandler:Landroid/os/Handler;

.field private mViewStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string v4, "starttime"

    iput-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->AIRPLANE_MODE_START_TIME:Ljava/lang/String;

    .line 85
    new-instance v4, Lcom/android/keyguard/sec/ContextualEventManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/keyguard/sec/ContextualEventManager$1;-><init>(Lcom/android/keyguard/sec/ContextualEventManager;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    .line 119
    new-instance v4, Lcom/android/keyguard/sec/ContextualEventManager$2;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/ContextualEventManager$2;-><init>(Lcom/android/keyguard/sec/ContextualEventManager;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 292
    iput-object p1, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    .line 293
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    .line 294
    const v4, 0x7f030027

    invoke-static {p1, v4, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardStatusView:Landroid/view/View;

    .line 295
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    const-string v6, "statusView"

    iget-object v7, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardStatusView:Landroid/view/View;

    invoke-direct {v5, p0, v6, v7}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;-><init>(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    const-string v4, "ContextualEventManager"

    const-string v5, "status view added"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const v4, 0x7f030048

    invoke-static {p1, v4, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    iput-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    .line 300
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 301
    .local v0, "airPlaneEnabled":I
    if-eqz v0, :cond_7c

    .line 302
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 303
    .local v3, "msg":Landroid/os/Message;
    const/16 v4, 0x1336

    iput v4, v3, Landroid/os/Message;->what:I

    .line 304
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 305
    .local v1, "data":Landroid/os/Bundle;
    const-string v4, "requestClass"

    const-string v5, "flightmode"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v4, "isFlightMode"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 307
    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 308
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 310
    .end local v1    # "data":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_7c
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 311
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const-string v4, "com.android.sms.action.CLEAR_ALL"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 315
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/sec/ContextualEventManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/widget/RemoteViews;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/ContextualEventManager;->handleUpdateMissedAdded(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/ContextualEventManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/ContextualEventManager;->handleUpdateMissedEventRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/ContextualEventManager;)Landroid/widget/RemoteViews$OnClickHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/ContextualEventManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/sec/ContextualEventManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/widget/RemoteViews;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/ContextualEventManager;->handleUpdateEventAdded(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/ContextualEventManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/ContextualEventManager;->handleUpdateEventRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/sec/ContextualEventManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/widget/RemoteViews;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/ContextualEventManager;->handleUpdateEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/keyguard/sec/ContextualEventManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/ContextualEventManager;->handleUpdateFlightMode(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/ContextualEventManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/ContextualEventManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/ContextualEventManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/keyguard/sec/ContextualEventManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 318
    sget-object v0, Lcom/android/keyguard/sec/ContextualEventManager;->sInstance:Lcom/android/keyguard/sec/ContextualEventManager;

    if-nez v0, :cond_b

    .line 319
    new-instance v0, Lcom/android/keyguard/sec/ContextualEventManager;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/ContextualEventManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/sec/ContextualEventManager;->sInstance:Lcom/android/keyguard/sec/ContextualEventManager;

    .line 321
    :cond_b
    sget-object v0, Lcom/android/keyguard/sec/ContextualEventManager;->sInstance:Lcom/android/keyguard/sec/ContextualEventManager;

    return-object v0
.end method

.method private getTopEventClass()Ljava/lang/String;
    .registers 4

    .prologue
    .line 573
    const-string v1, "ContextualEventManager"

    const-string v2, "getTopEventClass()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-virtual {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->getTopContextualEvent()Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    move-result-object v0

    .line 575
    .local v0, "contextualEvent":Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;
    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleUpdateEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .registers 10
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 249
    const/4 v3, 0x0

    .line 250
    .local v3, "tmpEvent":Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    .line 251
    .local v0, "contextualEvent":Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;
    if-eqz p1, :cond_7

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 252
    move-object v3, v0

    .line 256
    .end local v0    # "contextualEvent":Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;
    :cond_20
    if-eqz v3, :cond_72

    .line 257
    const-string v5, "ContextualEventManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateContextualEvent() mOnClickHandler="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_52

    const-string v4, "null"

    :goto_3d
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :try_start_40
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContextualEventContainer:Lcom/android/keyguard/sec/ContextualEventContainer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {p2, v4, v5, v6}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 260
    # setter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->remoteViews:Landroid/widget/RemoteViews;
    invoke-static {v3, p2}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$902(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    :try_end_51
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_51} :catch_55

    .line 270
    :goto_51
    return-void

    .line 257
    :cond_52
    const-string v4, "not null"

    goto :goto_3d

    .line 261
    :catch_55
    move-exception v1

    .line 262
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v4, "ContextualEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleUpdateEvent() couldn\'t inflate view for contextual event of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/ContextualEventManager;->removeContextualEvent(Ljava/lang/String;)V

    goto :goto_51

    .line 266
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_72
    const-string v4, "ContextualEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleUpdateEvent() add contextual event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;-><init>(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->updateContainer()V

    goto :goto_51
.end method

.method private handleUpdateEventAdded(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .registers 10
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 208
    if-eqz p2, :cond_44

    .line 209
    if-eqz p1, :cond_65

    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->getTopEventClass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 210
    const-string v5, "ContextualEventManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setContextualEvent() mOnClickHandler="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_45

    const-string v4, "null"

    :goto_29
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->getTopContextualEvent()Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    move-result-object v4

    # setter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->remoteViews:Landroid/widget/RemoteViews;
    invoke-static {v4, p2}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$902(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 213
    :try_start_33
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContextualEventContainer:Lcom/android/keyguard/sec/ContextualEventContainer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {p2, v4, v5, v6}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V
    :try_end_41
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_41} :catch_48

    .line 234
    :goto_41
    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->updateContainer()V

    .line 236
    :cond_44
    return-void

    .line 210
    :cond_45
    const-string v4, "not null"

    goto :goto_29

    .line 214
    :catch_48
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v4, "ContextualEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleUpdateEventAdded() couldn\'t inflate view for contextual event of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/ContextualEventManager;->removeContextualEvent(Ljava/lang/String;)V

    goto :goto_41

    .line 219
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_65
    const/4 v3, 0x0

    .line 220
    .local v3, "tmpEvent":Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_6c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    .line 221
    .local v0, "contextualEvent":Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;
    if-eqz p1, :cond_6c

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 222
    move-object v3, v0

    .line 223
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 227
    .end local v0    # "contextualEvent":Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;
    :cond_8a
    if-eqz v3, :cond_95

    .line 228
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    # setter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->remoteViews:Landroid/widget/RemoteViews;
    invoke-static {v3, p2}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$902(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    goto :goto_41

    .line 231
    :cond_95
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;-><init>(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41
.end method

.method private handleUpdateEventRemoved(Ljava/lang/String;)V
    .registers 5
    .param p1, "requestClass"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    .line 240
    .local v0, "contextualEvent":Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;
    if-eqz p1, :cond_6

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 241
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 242
    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->updateContainer()V

    .line 246
    .end local v0    # "contextualEvent":Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;
    :cond_26
    return-void
.end method

.method private handleUpdateFlightMode(Ljava/lang/String;I)V
    .registers 9
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "isFlightMode"    # I

    .prologue
    .line 156
    const-string v2, "ContextualEventManager"

    const-string v3, "---handleUpdateFlightMode() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    const v3, 0x7f030046

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    iput-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardFlightModeView:Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    .line 159
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardFlightModeView:Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->isTabletModel()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 181
    :goto_1d
    return-void

    .line 163
    :cond_1e
    if-nez p2, :cond_33

    .line 164
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/ContextualEventManager;->AIRPLANE_MODE_START_TIME:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 165
    const-string v2, "flightmode"

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/ContextualEventManager;->removeContextualEvent(Ljava/lang/String;)V

    goto :goto_1d

    .line 167
    :cond_33
    if-eqz p1, :cond_4c

    const-string v2, "flightmode"

    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->getTopEventClass()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 168
    const-string v2, "ContextualEventManager"

    const-string v3, "handleUpdateFlightMode() old "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_48
    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->updateContainer()V

    goto :goto_1d

    .line 170
    :cond_4c
    const-string v2, "ContextualEventManager"

    const-string v3, "handleUpdateFlightMode() new "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    .line 172
    .local v0, "contextualEvent":Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;
    const-string v2, "flightmode"

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 173
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 177
    .end local v0    # "contextualEvent":Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;
    :cond_76
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    const-string v4, "flightmode"

    iget-object v5, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardFlightModeView:Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    invoke-direct {v3, p0, v4, v5}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;-><init>(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48
.end method

.method private handleUpdateMissedAdded(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .registers 9
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 184
    const-string v2, "ContextualEventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUpdateMissedAdded() requestClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " views="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v2, "missedEvent"

    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->getTopEventClass()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 186
    const-string v2, "ContextualEventManager"

    const-string v3, "handleUpdateMissedAdded() old "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    iget-object v3, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->setMissedEventView(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 200
    :goto_3c
    return-void

    .line 189
    :cond_3d
    const-string v2, "ContextualEventManager"

    const-string v3, "handleUpdateMissedAdded() new "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    .line 191
    .local v0, "contextualEvent":Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;
    const-string v2, "missedEvent"

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 192
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 196
    .end local v0    # "contextualEvent":Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;
    :cond_67
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    iget-object v3, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->setMissedEventView(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 197
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    const-string v4, "missedEvent"

    iget-object v5, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    invoke-direct {v3, p0, v4, v5}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;-><init>(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->updateContainer()V

    goto :goto_3c
.end method

.method private handleUpdateMissedEventRemoved(Ljava/lang/String;)V
    .registers 3
    .param p1, "requestClass"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->removeMissedEventView(Ljava/lang/String;)V

    .line 204
    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->updateContainer()V

    .line 205
    return-void
.end method

.method private isRequestClassMissedEvent(Ljava/lang/String;)Z
    .registers 3
    .param p1, "requestClass"    # Ljava/lang/String;

    .prologue
    .line 491
    const-string v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "com.android.mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "com.android.roaming"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private isRequestClassMusic(Ljava/lang/String;)Z
    .registers 3
    .param p1, "requestClass"    # Ljava/lang/String;

    .prologue
    .line 500
    const-string v0, "music"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private updateContainer()V
    .registers 3

    .prologue
    .line 512
    const-string v0, "ContextualEventManager"

    const-string v1, "updateContainer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContextualEventContainer:Lcom/android/keyguard/sec/ContextualEventContainer;

    if-eqz v0, :cond_10

    .line 514
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContextualEventContainer:Lcom/android/keyguard/sec/ContextualEventContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/ContextualEventContainer;->update()V

    .line 516
    :cond_10
    return-void
.end method


# virtual methods
.method public animateMissedEvent(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 603
    if-nez p1, :cond_3

    .line 609
    :cond_2
    :goto_2
    return-void

    .line 606
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    if-eqz v0, :cond_2

    .line 607
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->showBouncer(Landroid/view/View;)V

    goto :goto_2
.end method

.method protected clearMissedEvent()V
    .registers 5

    .prologue
    .line 479
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    .line 480
    .local v0, "contextualEvent":Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;
    const-string v2, "missedEvent"

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 481
    const-string v2, "ContextualEventManager"

    const-string v3, "clearMissedEvent()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 483
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->clearMissedEventView()V

    .line 484
    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->updateContainer()V

    .line 488
    .end local v0    # "contextualEvent":Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;
    :cond_32
    return-void
.end method

.method protected getTopContextualEvent()Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;
    .registers 11

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 519
    const-string v7, "ContextualEventManager"

    const-string v8, "getTopContextualEvent()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v7, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "kids_home_mode"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_5a

    move v2, v5

    .line 522
    .local v2, "isKidsMode":Z
    :goto_18
    iget-object v7, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "emergency_mode"

    const/4 v9, -0x2

    invoke-static {v7, v8, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_5c

    move v1, v5

    .line 524
    .local v1, "isEmergencyMode":Z
    :goto_28
    iget-object v7, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "ultra_powersaving_mode"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_5e

    move v3, v5

    .line 526
    .local v3, "isUltraPowerSavingMode":Z
    :goto_37
    iget-object v5, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_3f
    if-ltz v0, :cond_8d

    .line 527
    iget-object v5, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v4

    .line 529
    .local v4, "requestClass":Ljava/lang/String;
    if-eqz v2, :cond_60

    .line 530
    const-string v5, "statusView"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_60

    .line 526
    :cond_57
    add-int/lit8 v0, v0, -0x1

    goto :goto_3f

    .end local v0    # "i":I
    .end local v1    # "isEmergencyMode":Z
    .end local v2    # "isKidsMode":Z
    .end local v3    # "isUltraPowerSavingMode":Z
    .end local v4    # "requestClass":Ljava/lang/String;
    :cond_5a
    move v2, v6

    .line 521
    goto :goto_18

    .restart local v2    # "isKidsMode":Z
    :cond_5c
    move v1, v6

    .line 522
    goto :goto_28

    .restart local v1    # "isEmergencyMode":Z
    :cond_5e
    move v3, v6

    .line 524
    goto :goto_37

    .line 533
    .restart local v0    # "i":I
    .restart local v3    # "isUltraPowerSavingMode":Z
    .restart local v4    # "requestClass":Ljava/lang/String;
    :cond_60
    if-eqz v1, :cond_72

    .line 534
    const-string v5, "statusView"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_72

    const-string v5, "missedEvent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 537
    :cond_72
    if-eqz v3, :cond_84

    .line 538
    const-string v5, "statusView"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_84

    const-string v5, "missedEvent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 541
    :cond_84
    iget-object v5, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    .line 543
    .end local v4    # "requestClass":Ljava/lang/String;
    :goto_8c
    return-object v5

    :cond_8d
    iget-object v5, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    goto :goto_8c
.end method

.method protected getTopEventView()Landroid/view/View;
    .registers 8

    .prologue
    .line 547
    const-string v4, "ContextualEventManager"

    const-string v5, "getTopEventView()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-virtual {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->getTopContextualEvent()Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    move-result-object v0

    .line 549
    .local v0, "contextualEvent":Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;
    const/4 v3, 0x0

    .line 551
    .local v3, "tmpView":Landroid/view/ViewGroup;
    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$1100(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_46

    .line 552
    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$1100(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 553
    .local v2, "parent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_25

    .line 554
    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$1100(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 556
    :cond_25
    const-string v4, "ContextualEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "top view = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$1100(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Landroid/view/View;

    move-result-object v3

    .line 569
    .end local v2    # "parent":Landroid/view/ViewGroup;
    .end local v3    # "tmpView":Landroid/view/ViewGroup;
    :goto_45
    return-object v3

    .line 558
    .restart local v3    # "tmpView":Landroid/view/ViewGroup;
    :cond_46
    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->remoteViews:Landroid/widget/RemoteViews;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$900(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Landroid/widget/RemoteViews;

    move-result-object v4

    if-eqz v4, :cond_9b

    .line 560
    :try_start_4c
    const-string v4, "ContextualEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "top view = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->remoteViews:Landroid/widget/RemoteViews;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$900(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Landroid/widget/RemoteViews;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v4, v5, v3, v6}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    :try_end_73
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_73} :catch_75

    move-result-object v3

    goto :goto_45

    .line 562
    :catch_75
    move-exception v1

    .line 563
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v4, "ContextualEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTopEventView() couldn\'t inflate view for contextual event of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/ContextualEventManager;->removeContextualEvent(Ljava/lang/String;)V

    .line 565
    const/4 v3, 0x0

    goto :goto_45

    .line 568
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_9b
    const-string v4, "ContextualEventManager"

    const-string v5, "top view == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45
.end method

.method public hideBouncer()V
    .registers 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    if-eqz v0, :cond_9

    .line 613
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->hideBouncer()V

    .line 615
    :cond_9
    return-void
.end method

.method public isClockTop()Z
    .registers 4

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->getTopEventClass()Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, "top":Ljava/lang/String;
    const-string v1, "statusView"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 581
    const-string v1, "ContextualEventManager"

    const-string v2, "isClockTop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/4 v1, 0x1

    .line 585
    :goto_14
    return v1

    .line 584
    :cond_15
    const-string v1, "ContextualEventManager"

    const-string v2, "!isClockTop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public isMissedEventTop()Z
    .registers 3

    .prologue
    .line 598
    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->getTopEventClass()Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, "top":Ljava/lang/String;
    const-string v1, "missedEvent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isMusicShowing()Z
    .registers 5

    .prologue
    .line 341
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    .line 342
    .local v0, "event":Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;
    const-string v2, "music"

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 343
    const/4 v2, 0x1

    .line 346
    .end local v0    # "event":Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;
    :goto_1f
    return v2

    :cond_20
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method public onUserSwitched()V
    .registers 4

    .prologue
    .line 618
    iget-object v1, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    .line 619
    .local v0, "clock":Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;
    iget-object v1, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 620
    iget-object v1, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    return-void
.end method

.method public registerContextualEventManagerCallback(Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;)V
    .registers 3
    .param p1, "contextualEventManagerCallback"    # Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    if-eqz v0, :cond_9

    .line 643
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->registerContextualEventManagerCallback(Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;)V

    .line 645
    :cond_9
    return-void
.end method

.method public removeContextualEvent(Ljava/lang/String;)V
    .registers 10
    .param p1, "requestClass"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x1338

    const/16 v6, 0x1330

    const/16 v5, 0x1332

    .line 406
    const-string v2, "ContextualEventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeContextualEvent(): requestClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-string v2, "statusView"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 408
    const-string v2, "ContextualEventManager"

    const-string v3, "removeContextualEvent() Status view should be protected!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_2d
    :goto_2d
    return-void

    .line 411
    :cond_2e
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/ContextualEventManager;->isRequestClassMissedEvent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 414
    const-string v2, "com.android.phone"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 415
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 416
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 418
    :cond_49
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 419
    .local v1, "msg":Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 420
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 421
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "requestClass"

    const-string v3, "com.android.phone"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 423
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2d

    .line 424
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_64
    const-string v2, "com.android.mms"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 425
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 426
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 428
    :cond_79
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 429
    .restart local v1    # "msg":Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 430
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 431
    .restart local v0    # "data":Landroid/os/Bundle;
    const-string v2, "requestClass"

    const-string v3, "com.android.mms"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 433
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2d

    .line 434
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_94
    const-string v2, "com.android.roaming"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 435
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 436
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 438
    :cond_a9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 439
    .restart local v1    # "msg":Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    .line 440
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 441
    .restart local v0    # "data":Landroid/os/Bundle;
    const-string v2, "requestClass"

    const-string v3, "com.android.roaming"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 443
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2d

    .line 446
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_c5
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 447
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 450
    :cond_d2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 451
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v2, 0x1334

    iput v2, v1, Landroid/os/Message;->what:I

    .line 452
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 453
    .restart local v0    # "data":Landroid/os/Bundle;
    const-string v2, "requestClass"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 455
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2d
.end method

.method public removeContextualEventManagerCallback()V
    .registers 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    if-eqz v0, :cond_9

    .line 649
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->removeContextualEventManagerCallback()V

    .line 651
    :cond_9
    return-void
.end method

.method public setContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .registers 12
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    const/16 v8, 0x1337

    const/16 v7, 0x1333

    const/16 v6, 0x1331

    const/16 v5, 0x132f

    .line 350
    const-string v3, "ContextualEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setContextualEvent() remote view: requestClass="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " views="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_3e

    const-string v2, "null"

    :goto_23
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v2, "statusView"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 353
    const-string v2, "ContextualEventManager"

    const-string v3, "cannot replace clock view"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_3d
    :goto_3d
    return-void

    .line 350
    :cond_3e
    const-string v2, "not null"

    goto :goto_23

    .line 356
    :cond_41
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/ContextualEventManager;->isRequestClassMissedEvent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 357
    const-string v2, "com.android.phone"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 358
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 359
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 361
    :cond_5c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 362
    .local v1, "msg":Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 363
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 364
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "requestClass"

    const-string v3, "com.android.phone"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v2, "views"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 366
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 367
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3d

    .line 368
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_7c
    const-string v2, "com.android.mms"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 369
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 370
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 372
    :cond_91
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 373
    .restart local v1    # "msg":Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 374
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 375
    .restart local v0    # "data":Landroid/os/Bundle;
    const-string v2, "requestClass"

    const-string v3, "com.android.mms"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v2, "views"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 377
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 378
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3d

    .line 379
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_b1
    const-string v2, "com.android.roaming"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 380
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 381
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 383
    :cond_c6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 384
    .restart local v1    # "msg":Landroid/os/Message;
    iput v8, v1, Landroid/os/Message;->what:I

    .line 385
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 386
    .restart local v0    # "data":Landroid/os/Bundle;
    const-string v2, "requestClass"

    const-string v3, "com.android.roaming"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v2, "views"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 388
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 389
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3d

    .line 392
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_e7
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 393
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 395
    :cond_f4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 396
    .restart local v1    # "msg":Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    .line 397
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 398
    .restart local v0    # "data":Landroid/os/Bundle;
    const-string v2, "requestClass"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v2, "views"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 400
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 401
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3d
.end method

.method protected setContextualEventContainer(Lcom/android/keyguard/sec/ContextualEventContainer;)V
    .registers 2
    .param p1, "contextualEventContainer"    # Lcom/android/keyguard/sec/ContextualEventContainer;

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContextualEventContainer:Lcom/android/keyguard/sec/ContextualEventContainer;

    .line 509
    return-void
.end method

.method public setContextualMusicEvent(Ljava/lang/String;Landroid/view/View;)V
    .registers 8
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 325
    const-string v2, "ContextualEventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setContextualEvent() view: requestClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/ContextualEventManager;->isRequestClassMusic(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 327
    invoke-virtual {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->isMusicShowing()Z

    move-result v2

    if-nez v2, :cond_49

    .line 328
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    .line 329
    .local v0, "contextualEvent":Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;
    const-string v2, "music"

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 330
    const-string v2, "ContextualEventManager"

    const-string v3, "MUSIC_VIEW()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .end local v0    # "contextualEvent":Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_49
    :goto_49
    return-void

    .line 334
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4a
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    const-string v4, "music"

    invoke-direct {v3, p0, v4, p2}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;-><init>(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->updateContainer()V

    goto :goto_49
.end method

.method public setOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 4
    .param p1, "onClickHandler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 590
    const-string v0, "ContextualEventManager"

    const-string v1, "setOnClickHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iput-object p1, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 592
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    if-eqz v0, :cond_12

    .line 593
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->setOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 595
    :cond_12
    return-void
.end method

.method public updateContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .registers 9
    .param p1, "requestClass"    # Ljava/lang/String;
    .param p2, "views"    # Landroid/widget/RemoteViews;

    .prologue
    const/16 v5, 0x1335

    .line 460
    const-string v3, "ContextualEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateContextualEvent() remote view: requestClass="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " views="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_2b

    const-string v2, "null"

    :goto_1d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    if-nez p2, :cond_2e

    .line 476
    :goto_2a
    return-void

    .line 460
    :cond_2b
    const-string v2, "not null"

    goto :goto_1d

    .line 466
    :cond_2e
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 467
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 469
    :cond_3b
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 470
    .local v1, "msg":Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 471
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 472
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "requestClass"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v2, "views"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 474
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 475
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2a
.end method
