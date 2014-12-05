.class public Lcom/android/keyguard/sec/ShortCutWidgetFrame;
.super Lcom/android/keyguard/KeyguardWidgetFrame;
.source "ShortCutWidgetFrame.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-class v0, Lcom/android/keyguard/sec/ShortCutWidgetFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/ShortCutWidgetFrame;->TAG:Ljava/lang/String;

    .line 40
    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/keyguard/sec/ShortCutWidgetFrame;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Landroid/appwidget/AppWidgetManager;)Lcom/android/keyguard/sec/ShortCutWidgetFrame;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appWidgetHost"    # Landroid/appwidget/AppWidgetHost;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 48
    if-nez p0, :cond_5

    .line 86
    :cond_4
    :goto_4
    return-object v6

    .line 51
    :cond_5
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 53
    .local v4, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 54
    .local v5, "res":Landroid/content/res/Resources;
    new-instance v2, Landroid/content/ComponentName;

    const v8, 0x7f060019

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f06001a

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .local v2, "defaultAppWidget":Landroid/content/ComponentName;
    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getShortcutAppWidgetId()I

    move-result v0

    .line 59
    .local v0, "appWidgetId":I
    if-nez v0, :cond_33

    .line 60
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 62
    :try_start_2b
    invoke-virtual {p2, v0, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_2e} :catch_4b

    .line 68
    if-eqz v0, :cond_33

    .line 69
    invoke-virtual {v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->writeShortcutAppWidgetId(I)V

    .line 73
    :cond_33
    if-eqz v0, :cond_4

    .line 74
    invoke-virtual {p2, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 75
    .local v1, "appWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v1, :cond_68

    .line 76
    invoke-virtual {p1, p0, v0, v1}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v7

    .line 78
    .local v7, "view":Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {v7, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 79
    new-instance v6, Lcom/android/keyguard/sec/ShortCutWidgetFrame;

    invoke-direct {v6, p0}, Lcom/android/keyguard/sec/ShortCutWidgetFrame;-><init>(Landroid/content/Context;)V

    .line 80
    .local v6, "shortCutWidgetFrame":Lcom/android/keyguard/sec/ShortCutWidgetFrame;
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 63
    .end local v1    # "appWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v6    # "shortCutWidgetFrame":Lcom/android/keyguard/sec/ShortCutWidgetFrame;
    .end local v7    # "view":Landroid/appwidget/AppWidgetHostView;
    :catch_4b
    move-exception v3

    .line 64
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    sget-object v8, Lcom/android/keyguard/sec/ShortCutWidgetFrame;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error when trying to bind default AppWidget: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_4

    .line 83
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "appWidgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_68
    invoke-virtual {v4, v10}, Lcom/android/internal/widget/LockPatternUtils;->writeShortcutAppWidgetId(I)V

    goto :goto_4
.end method
