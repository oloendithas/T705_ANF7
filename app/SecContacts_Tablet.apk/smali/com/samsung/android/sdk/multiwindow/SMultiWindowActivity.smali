.class public Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
.super Ljava/lang/Object;
.source "SMultiWindowActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$ExitListener;,
        Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SMultiWindowActivity"

.field public static final ZONE_A:I

.field public static final ZONE_B:I

.field public static final ZONE_C:I

.field public static final ZONE_D:I

.field public static final ZONE_E:I

.field public static final ZONE_F:I


# instance fields
.field private mDefaultSize:Landroid/graphics/Rect;

.field private mDensity:F

.field private mExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$ExitListener;

.field private mMaximumSize:Landroid/graphics/Rect;

.field private mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

.field private mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

.field private mStateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

.field private mWindowMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_A:I

    sput v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_A:I

    .line 67
    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_B:I

    sput v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_B:I

    .line 72
    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_C:I

    sput v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_C:I

    .line 77
    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_D:I

    sput v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_D:I

    .line 82
    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_E:I

    sput v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_E:I

    .line 87
    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_F:I

    sput v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_F:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 13
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v8, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-direct {v8}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    .line 170
    new-instance v8, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    invoke-direct {v8}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 174
    .local v0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v9, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v10, "getWindowMode"

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v9, v0, p1, v10, v8}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 175
    iget-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v9, "setWindowMode"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v8, v0, p1, v9, v10}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 176
    iget-object v9, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v10, "getWindowInfo"

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v9, v0, p1, v10, v8}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 177
    iget-object v9, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v10, "getWindow"

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v9, v0, p1, v10, v8}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 180
    :try_start_0
    const-string v8, "com.samsung.android.multiwindow.MultiWindowStyle"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 181
    .local v1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v9, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v10, "getMultiWindowStyle"

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v9, v0, p1, v10, v8}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 182
    iget-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v9, "setMultiWindowStyle"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {v8, v0, p1, v9, v10}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 186
    .end local v1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 188
    .local v7, "windowClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v9, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const-string v11, "getMultiPhoneWindowEvent"

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v9, v7, v10, v11, v8}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 189
    iget-object v9, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const-string v11, "getWindowManager"

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v9, v7, v10, v11, v8}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 190
    iget-object v9, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const-string v11, "getAttributes"

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v9, v7, v10, v11, v8}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 192
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 193
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget v8, v2, Landroid/util/DisplayMetrics;->density:F

    iput v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mDensity:F

    .line 196
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getMultiPhoneWindowEvent()Ljava/lang/Object;

    move-result-object v3

    .line 197
    .local v3, "multiPhoneWindowEvent":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 198
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 199
    .local v4, "multiPhoneWindowEventClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v9, "setStateChangeListener"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    aput-object v12, v10, v11

    invoke-virtual {v8, v4, v3, v9, v10}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 200
    iget-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v9, "setExitListener"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    aput-object v12, v10, v11

    invoke-virtual {v8, v4, v3, v9, v10}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 201
    iget-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v9, "setMinimizeIcon"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/graphics/drawable/Drawable;

    aput-object v12, v10, v11

    invoke-virtual {v8, v4, v3, v9, v10}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 202
    iget-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v9, "setMinimizeView"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/view/View;

    aput-object v12, v10, v11

    invoke-virtual {v8, v4, v3, v9, v10}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 203
    iget-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v9, "minimizeWindow"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v8, v4, v3, v9, v10}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 204
    iget-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v9, "multiWindow"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v8, v4, v3, v9, v10}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 205
    iget-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v9, "normalWindow"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v8, v4, v3, v9, v10}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 206
    iget-object v9, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v10, "exitWindow"

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v9, v4, v3, v10, v8}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 207
    iget-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v9, "moveWindow"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/view/View;

    aput-object v12, v10, v11

    invoke-virtual {v8, v4, v3, v9, v10}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 208
    iget-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v9, "setIsolatedCenterPoint"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/graphics/Point;

    aput-object v12, v10, v11

    invoke-virtual {v8, v4, v3, v9, v10}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 209
    iget-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v9, "disableMultiWindow"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v8, v4, v3, v9, v10}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    .line 214
    .end local v3    # "multiPhoneWindowEvent":Ljava/lang/Object;
    .end local v4    # "multiPhoneWindowEventClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v6

    .line 215
    .local v6, "winInfo":Landroid/os/Bundle;
    if-eqz v6, :cond_1

    .line 216
    sget-object v8, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$Intent;->EXTRA_WINDOW_DEFAULT_SIZE:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    iput-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mDefaultSize:Landroid/graphics/Rect;

    .line 219
    :cond_1
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 220
    .local v5, "size":Landroid/graphics/Point;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 221
    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, v5, Landroid/graphics/Point;->x:I

    iget v12, v5, Landroid/graphics/Point;->y:I

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMaximumSize:Landroid/graphics/Rect;

    .line 222
    return-void

    .line 211
    .end local v5    # "size":Landroid/graphics/Point;
    .end local v6    # "winInfo":Landroid/os/Bundle;
    :catch_0
    move-exception v8

    goto :goto_1

    .line 183
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .end local v7    # "windowClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v8

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mStateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$ExitListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$ExitListener;

    return-object v0
.end method

.method private checkMode(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 101
    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkOption(I)Z
    .locals 1
    .param p1, "options"    # I

    .prologue
    .line 112
    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLastSize()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 147
    const/4 v1, 0x0

    .line 148
    .local v1, "lastSize":Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 149
    .local v0, "info":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 150
    sget-object v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$Intent;->EXTRA_WINDOW_LAST_SIZE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "lastSize":Landroid/graphics/Rect;
    check-cast v1, Landroid/graphics/Rect;

    .line 153
    .restart local v1    # "lastSize":Landroid/graphics/Rect;
    :cond_0
    if-eqz v1, :cond_1

    .end local v1    # "lastSize":Landroid/graphics/Rect;
    :goto_0
    return-object v1

    .restart local v1    # "lastSize":Landroid/graphics/Rect;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mDefaultSize:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private getMultiPhoneWindowEvent()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 160
    iget-object v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v2, "getMultiPhoneWindowEvent"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getWindowInfo()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 140
    iget-object v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v2, "getWindowInfo"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public static makeMultiWindowIntent(Landroid/content/Intent;ILandroid/graphics/Rect;)Landroid/content/Intent;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "zoneInfo"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 562
    if-nez p0, :cond_0

    .line 563
    new-instance p0, Landroid/content/Intent;

    .end local p0    # "intent":Landroid/content/Intent;
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 565
    .restart local p0    # "intent":Landroid/content/Intent;
    :cond_0
    const/high16 v2, 0x10000000

    invoke-virtual {p0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 566
    sget v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    and-int v0, p1, v2

    .line 567
    .local v0, "targetZoneInfo":I
    const/4 v1, 0x0

    .line 569
    .local v1, "windowMode":I
    if-nez v0, :cond_2

    .line 570
    sget v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    sget v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_PINUP:I

    or-int/2addr v2, v3

    sget v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_SCALE:I

    or-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 576
    :goto_0
    sget-object v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$Intent;->EXTRA_WINDOW_MODE:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 578
    if-eqz p2, :cond_1

    .line 579
    sget-object v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$Intent;->EXTRA_WINDOW_POSITION:Ljava/lang/String;

    invoke-virtual {p0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 582
    :cond_1
    return-object p0

    .line 574
    :cond_2
    sget v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    or-int/2addr v2, v0

    or-int/2addr v1, v2

    goto :goto_0
.end method

.method private setWindowMode()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 131
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "setWindowMode"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_0
    return-void
.end method

.method private static supportMultiWindowStyle()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 603
    :try_start_0
    const-string v3, "com.samsung.android.multiwindow.MultiWindowStyle"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 604
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 610
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v2

    .line 607
    :catch_0
    move-exception v1

    .line 608
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 610
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private updateWindowMode()V
    .locals 4

    .prologue
    .line 119
    iget-object v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "getWindowMode"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    .local v0, "windowMode":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 122
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "windowMode":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method public disableMultiWindow(Z)V
    .locals 5
    .param p1, "disable"    # Z

    .prologue
    const/4 v2, 0x1

    .line 596
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "disableMultiWindow"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "disableMultiWindow"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    :cond_0
    return-void
.end method

.method public exitWindow()V
    .locals 3

    .prologue
    .line 415
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "exitWindow"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v2, "exitWindow"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    :cond_0
    return-void
.end method

.method public getRectInfo()Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 430
    invoke-virtual {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 431
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getLastSize()Landroid/graphics/Rect;

    move-result-object v3

    .line 441
    :goto_0
    return-object v3

    .line 433
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 434
    .local v0, "fullscreenPoint":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v6, "getWindowManager"

    move-object v3, v4

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 435
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 437
    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v5, "getAttributes"

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 438
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_1

    .line 439
    new-instance v3, Landroid/graphics/Rect;

    const/high16 v4, 0x41c80000

    iget v5, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mDensity:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 441
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public getZoneInfo()I
    .locals 2

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->updateWindowMode()V

    .line 454
    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    and-int/2addr v0, v1

    return v0
.end method

.method public isMinimized()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 277
    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 282
    :goto_0
    return v1

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->updateWindowMode()V

    .line 282
    sget v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->checkMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_MINIMIZED:I

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->checkOption(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public isMultiWindow()Z
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    const/4 v0, 0x0

    .line 252
    :goto_0
    return v0

    .line 251
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->updateWindowMode()V

    .line 252
    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->checkMode(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isNormalWindow()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 231
    iget-object v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    :goto_0
    return v0

    .line 235
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->updateWindowMode()V

    .line 236
    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_NORMAL:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->checkMode(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isScaleWindow()Z
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    const/4 v0, 0x0

    .line 267
    :goto_0
    return v0

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->updateWindowMode()V

    .line 267
    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_SCALE:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->checkOption(I)Z

    move-result v0

    goto :goto_0
.end method

.method public minimizeWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 293
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->updateWindowMode()V

    .line 295
    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->checkOption(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "minimizeWindow"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "minimizeWindow"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_MASK:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    .line 301
    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    .line 302
    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_MINIMIZED:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    .line 303
    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    .line 304
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setWindowMode()V

    goto :goto_0
.end method

.method public moveWindow(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 403
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "moveWindow"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "moveWindow"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    :cond_0
    return-void
.end method

.method public multiWindow()V
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->multiWindow(Landroid/graphics/Rect;)V

    .line 318
    return-void
.end method

.method public multiWindow(Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 321
    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v2, v6}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->updateWindowMode()V

    .line 323
    sget v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->checkMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->checkOption(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "multiWindow"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 327
    if-nez p1, :cond_2

    .line 328
    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "multiWindow"

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 330
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "setMultiWindowStyle"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    :try_start_0
    const-string v2, "com.samsung.android.multiwindow.MultiWindowStyle"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 333
    .local v0, "mwClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 335
    .local v1, "obj":Ljava/lang/Object;
    const-string v2, "setType"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$MultiWindowStyle;->TYPE_CASCADE:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v2, "setBounds"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v2, "setOption"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x800

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "setMultiWindowStyle"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_0

    .line 340
    .end local v0    # "mwClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 347
    :cond_3
    if-nez p1, :cond_4

    .line 348
    iget v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_MASK:I

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    .line 349
    iget v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    .line 350
    iget v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    .line 351
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setWindowMode()V

    goto/16 :goto_0

    .line 353
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "setMultiWindowStyle"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    :try_start_1
    const-string v2, "com.samsung.android.multiwindow.MultiWindowStyle"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 356
    .restart local v0    # "mwClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 358
    .restart local v1    # "obj":Ljava/lang/Object;
    const-string v2, "setType"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$MultiWindowStyle;->TYPE_CASCADE:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v2, "setBounds"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v2, "setOption"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x800

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "setMultiWindowStyle"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 363
    .end local v0    # "mwClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "obj":Ljava/lang/Object;
    :catch_1
    move-exception v2

    goto/16 :goto_0

    .line 365
    :catch_2
    move-exception v2

    goto/16 :goto_0

    .line 364
    :catch_3
    move-exception v2

    goto/16 :goto_0

    .line 342
    :catch_4
    move-exception v2

    goto/16 :goto_0

    .line 341
    :catch_5
    move-exception v2

    goto/16 :goto_0
.end method

.method public normalWindow()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 379
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->updateWindowMode()V

    .line 381
    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "normalWindow"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "normalWindow"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_UNIQUEOP_MASK:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    .line 386
    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    .line 387
    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_MASK:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    .line 388
    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_NORMAL:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    .line 389
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setWindowMode()V

    goto :goto_0
.end method

.method public setExitListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$ExitListener;)Z
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$ExitListener;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 504
    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v4, "setExitListener"

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 505
    iput-object p1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$ExitListener;

    .line 506
    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$2;-><init>(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;)V

    .line 512
    .local v0, "exitListener":Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;
    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v4, "setExitListener"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    .end local v0    # "exitListener":Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public setIsolatedCenterPoint(Landroid/graphics/Point;)V
    .locals 4
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    const/4 v2, 0x1

    .line 590
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "setIsolatedCenterPoint"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "setIsolatedCenterPoint"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    :cond_0
    return-void
.end method

.method public setMinimizeIcon(Landroid/graphics/drawable/Drawable;)Z
    .locals 5
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 528
    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "setMinimizeIcon"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 529
    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "setMinimizeIcon"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setMinimizeView(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 543
    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "setMinimizeView"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 544
    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "setMinimizeView"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 468
    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v4, "setStateChangeListener"

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 469
    iput-object p1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mStateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

    .line 470
    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mStateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

    if-nez v3, :cond_0

    .line 471
    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v4, "setStateChangeListener"

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    :goto_0
    return v1

    .line 473
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$1;-><init>(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;)V

    .line 486
    .local v0, "stateChangeListener":Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;
    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v4, "setStateChangeListener"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "stateChangeListener":Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;
    :cond_1
    move v1, v2

    .line 491
    goto :goto_0
.end method
