.class public Lcom/sec/android/app/dialertab/calllog/PhoneWidget$PhoneIconContentObserver;
.super Landroid/database/ContentObserver;
.source "PhoneWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/PhoneWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhoneIconContentObserver"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/PhoneWidget;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/PhoneWidget;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneWidget$PhoneIconContentObserver;->this$0:Lcom/sec/android/app/dialertab/calllog/PhoneWidget;

    .line 305
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 306
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneWidget$PhoneIconContentObserver;->mContext:Landroid/content/Context;

    .line 307
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v6, 0x1

    .line 311
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 313
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/PhoneWidget$PhoneIconContentObserver;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 314
    .local v3, "widgetMgr":Landroid/appwidget/AppWidgetManager;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/PhoneWidget$PhoneIconContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/sec/android/app/dialertab/calllog/PhoneWidget;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 317
    .local v2, "widgetIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 318
    aget v4, v2, v1

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/PhoneWidget$PhoneIconContentObserver;->mContext:Landroid/content/Context;

    # invokes: Lcom/sec/android/app/dialertab/calllog/PhoneWidget;->updateViews(Landroid/content/Context;II)Landroid/widget/RemoteViews;
    invoke-static {v5, v6, v6}, Lcom/sec/android/app/dialertab/calllog/PhoneWidget;->access$000(Landroid/content/Context;II)Landroid/widget/RemoteViews;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    :cond_0
    return-void
.end method
