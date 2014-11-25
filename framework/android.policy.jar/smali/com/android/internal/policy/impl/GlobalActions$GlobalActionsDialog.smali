.class final Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
.super Landroid/app/Dialog;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GlobalActionsDialog"
.end annotation


# instance fields
.field private final mAlert:Lcom/android/internal/app/AlertController;

.field private mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCancelOnUp:Z

.field private final mContext:Landroid/content/Context;

.field private mDisableExclusiveOptionsFlag:I

.field private mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

.field private final mHandler:Landroid/os/Handler;

.field private mIntercepted:Z

.field private final mWindowTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;Landroid/os/Handler;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/android/internal/app/AlertController$AlertParams;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2414
    invoke-static {p1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getDialogTheme(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2412
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mDisableExclusiveOptionsFlag:I

    .line 2426
    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2415
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    .line 2416
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    .line 2417
    new-instance v0, Lcom/android/internal/app/AlertController;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    .line 2418
    const-string v0, "VZW"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 2419
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10401c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 2420
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 2423
    :goto_53
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    .line 2424
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {p2, v0}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 2425
    return-void

    .line 2422
    :cond_63
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10401d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_53
.end method

.method static synthetic access$4500(Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    .prologue
    .line 2404
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getDialogTheme(Landroid/content/Context;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2432
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2433
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010309

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2435
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public static hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 2540
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2541
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    .line 2543
    .local v1, "hasPkg":Z
    const/16 v3, 0x80

    :try_start_7
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_a} :catch_b

    .line 2548
    :goto_a
    return v1

    .line 2544
    :catch_b
    move-exception v0

    .line 2545
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 2546
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package not found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2635
    const/16 v1, 0x3a

    .line 2636
    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    const-string v0, "com.google.android.marvin.talkback"

    .line 2637
    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x3a

    invoke-direct {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 2638
    .local v6, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "enabled_accessibility_services"

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 2640
    .local v5, "enabledServicesSetting":Ljava/lang/String;
    if-nez v5, :cond_1a

    .line 2641
    const-string v5, ""

    .line 2643
    :cond_1a
    move-object v2, v6

    .line 2644
    .local v2, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 2645
    :cond_1e
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 2646
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 2647
    .local v3, "componentNameString":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 2648
    .local v4, "enabledService":Landroid/content/ComponentName;
    if-eqz v4, :cond_1e

    .line 2649
    const-string v7, "com.google.android.marvin.talkback"

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 2650
    const/4 v7, 0x1

    .line 2653
    .end local v3    # "componentNameString":Ljava/lang/String;
    .end local v4    # "enabledService":Landroid/content/ComponentName;
    :goto_3b
    return v7

    :cond_3c
    const/4 v7, 0x0

    goto :goto_3b
.end method

.method public static turnOffTalkBack(Landroid/content/Context;)Z
    .registers 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v12, 0x3a

    const/4 v8, 0x0

    const/4 v11, -0x2

    .line 2656
    const/16 v1, 0x3a

    .line 2657
    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    const-string v0, "com.google.android.marvin.talkback"

    .line 2658
    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-direct {v6, v12}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 2659
    .local v6, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enabled_accessibility_services"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 2661
    .local v5, "enabledServicesSetting":Ljava/lang/String;
    if-nez v5, :cond_1a

    .line 2682
    :cond_19
    :goto_19
    return v8

    .line 2664
    :cond_1a
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_19

    .line 2667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2668
    .local v2, "builder":Ljava/lang/StringBuilder;
    move-object v3, v6

    .line 2669
    .local v3, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v3, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 2670
    :cond_29
    :goto_29
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 2671
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    .line 2672
    .local v4, "componentNameString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_3c

    .line 2673
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2675
    :cond_3c
    if-eqz v4, :cond_29

    const-string v8, "com.google.android.marvin.talkback"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_29

    .line 2676
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 2679
    .end local v4    # "componentNameString":Ljava/lang/String;
    :cond_4a
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.settings.action.talkback_off"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2680
    .local v7, "talk_back_off":Landroid/content/Intent;
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2681
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "enabled_accessibility_services"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2682
    const/4 v8, 0x1

    goto :goto_19
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2461
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    if-eqz v2, :cond_b0

    .line 2462
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 2463
    .local v8, "action":I
    if-nez v8, :cond_7e

    .line 2464
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    .line 2465
    .local v9, "decor":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v10, v2

    .line 2466
    .local v10, "eventX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v11, v2

    .line 2467
    .local v11, "eventY":I
    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v2, :cond_29

    .line 2468
    const-string v2, "GlobalActions"

    const-string v3, "dispatchTouchEvent() of GlobalActionsDialog inside action == MotionEvent.ACTION_DOWN "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    :cond_29
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    if-ne v2, v13, :cond_60

    .line 2470
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->isTalkBackExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "option_flag"

    invoke-virtual {v2, v3, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mDisableExclusiveOptionsFlag:I

    .line 2471
    sget-boolean v2, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v2, :cond_59

    .line 2472
    const-string v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchTouchEvent() of GlobalActionsDialog inside calling  turnOffTalkBackExclusiveOptions with mDisableExclusiveOptionsFlag =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mDisableExclusiveOptionsFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    :cond_59
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mDisableExclusiveOptionsFlag:I

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    .line 2475
    :cond_60
    iget v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    neg-int v2, v2

    if-lt v10, v2, :cond_7c

    iget v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    neg-int v2, v2

    if-lt v11, v2, :cond_7c

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    add-int/2addr v2, v3

    if-ge v10, v2, :cond_7c

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    add-int/2addr v2, v3

    if-lt v11, v2, :cond_7e

    .line 2479
    :cond_7c
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 2483
    .end local v9    # "decor":Landroid/view/View;
    .end local v10    # "eventX":I
    .end local v11    # "eventY":I
    :cond_7e
    :try_start_7e
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    if-nez v2, :cond_b5

    .line 2484
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    .line 2485
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    if-eqz v2, :cond_a3

    .line 2486
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2487
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2489
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 2490
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z
    :try_end_a3
    .catchall {:try_start_7e .. :try_end_a3} :catchall_c9

    .line 2496
    .end local v0    # "now":J
    :cond_a3
    if-ne v8, v13, :cond_b0

    .line 2497
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v2, :cond_ac

    .line 2498
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 2500
    :cond_ac
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 2501
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    .line 2505
    .end local v8    # "action":I
    :cond_b0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_b4
    :goto_b4
    return v2

    .line 2493
    .restart local v8    # "action":I
    :cond_b5
    :try_start_b5
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_ba
    .catchall {:try_start_b5 .. :try_end_ba} :catchall_c9

    move-result v2

    .line 2496
    if-ne v8, v13, :cond_b4

    .line 2497
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v3, :cond_c4

    .line 2498
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 2500
    :cond_c4
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 2501
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    goto :goto_b4

    .line 2496
    :catchall_c9
    move-exception v2

    if-ne v8, v13, :cond_d7

    .line 2497
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v3, :cond_d3

    .line 2498
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 2500
    :cond_d3
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 2501
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    :cond_d7
    throw v2
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 2508
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$2500()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2509
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mCoverViewListView:Landroid/widget/ListView;
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$3100()Landroid/widget/ListView;

    move-result-object v0

    .line 2511
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    goto :goto_a
.end method

.method public isAutoAirViewSupported()Z
    .registers 2

    .prologue
    .line 2774
    const/4 v0, 0x0

    return v0
.end method

.method public isTalkBackExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 27
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2552
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 2553
    .local v14, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 2554
    .local v15, "resolver":Landroid/content/ContentResolver;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2555
    .local v6, "data":Landroid/os/Bundle;
    const/4 v10, 0x1

    .line 2556
    .local v10, "is_enabled":Z
    const/4 v12, 0x0

    .line 2557
    .local v12, "option_flag":I
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const v23, 0x1040aae

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2561
    .local v7, "dialog_content":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2562
    .local v5, "assistantmenu":I
    const/4 v9, 0x0

    .line 2563
    .local v9, "interactioncontrol":I
    const/4 v3, 0x0

    .line 2564
    .local v3, "airgesture":I
    const/4 v8, 0x0

    .line 2565
    .local v8, "fingerairview":I
    const/4 v13, 0x0

    .line 2566
    .local v13, "penairview":I
    const/16 v18, 0x0

    .line 2567
    .local v18, "smartscreen":I
    const/4 v11, 0x0

    .line 2568
    .local v11, "multiwindow":I
    const/4 v4, 0x0

    .line 2569
    .local v4, "allSoundOff":I
    const/16 v21, 0x0

    .line 2591
    .local v21, "writingbuddy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "com.samsung.android.app.assistantmenu"

    invoke-static/range {v22 .. v23}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_78

    .line 2592
    add-int/lit8 v12, v12, 0x20

    .line 2593
    const-string v22, "assistant_menu"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v15, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 2594
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n- "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const v23, 0x1040ab1

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2597
    :cond_78
    add-int/lit8 v12, v12, 0x2

    .line 2598
    const-string v22, "intelligent_sleep_mode"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v15, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v20

    .line 2599
    .local v20, "smartstay":I
    const-string v22, "intelligent_rotation_mode"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v15, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    .line 2600
    .local v17, "smartrotation":I
    const-string v22, "smart_pause"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v15, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v16

    .line 2601
    .local v16, "smartpause":I
    const-string v22, "smart_scroll"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v15, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v19

    .line 2602
    .local v19, "smartscroll":I
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n- "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const v23, 0x1040ab2

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2603
    or-int v22, v20, v17

    or-int v22, v22, v16

    or-int v18, v22, v19

    .line 2606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "com.samsung.android.app.accesscontrol"

    invoke-static/range {v22 .. v23}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_124

    .line 2607
    add-int/lit8 v12, v12, 0x40

    .line 2608
    const-string v22, "access_control_use"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v15, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    .line 2609
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n- "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const v23, 0x1040ab4

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2611
    :cond_124
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    const-string v23, "com.sec.feature.multiwindow"

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_164

    .line 2612
    add-int/lit8 v12, v12, 0x1

    .line 2613
    const-string v22, "multi_window_enabled"

    const/16 v23, 0x1

    const/16 v24, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v15, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    .line 2614
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n- "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const v23, 0x1040ab3

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2617
    :cond_164
    add-int/lit16 v12, v12, 0x200

    .line 2618
    const-string v22, "all_sound_off"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v15, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 2619
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n- "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const v23, 0x1040abc

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2621
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->isAutoAirViewSupported()Z

    move-result v22

    if-nez v22, :cond_1c7

    .line 2627
    :goto_19e
    or-int v22, v9, v5

    or-int v22, v22, v3

    or-int v22, v22, v8

    or-int v22, v22, v13

    or-int v22, v22, v18

    or-int v22, v22, v11

    or-int v22, v22, v4

    or-int v22, v22, v21

    if-lez v22, :cond_1fc

    const/4 v10, 0x1

    .line 2629
    :goto_1b1
    const-string v22, "is_enabled"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2630
    const-string v22, "option_flag"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2631
    const-string v22, "dialog_content"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2632
    return-object v6

    .line 2622
    :cond_1c7
    add-int/lit16 v12, v12, 0x80

    .line 2623
    const-string v22, "pen_writing_buddy"

    const/16 v23, 0x0

    const/16 v24, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v15, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v21

    .line 2624
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n- "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const v23, 0x1040abb

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_19e

    .line 2627
    :cond_1fc
    const/4 v10, 0x0

    goto :goto_1b1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2516
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2517
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$2500()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2518
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->installContent()V

    .line 2520
    :cond_e
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2523
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$2500()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2524
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2525
    const/4 v0, 0x1

    .line 2528
    :goto_f
    return v0

    :cond_10
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_f
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2532
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$2500()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2533
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2534
    const/4 v0, 0x1

    .line 2537
    :goto_f
    return v0

    :cond_10
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_f
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 2443
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->canEnableAccessibilityViaGesture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2444
    new-instance v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    .line 2445
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2450
    :goto_15
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 2451
    return-void

    .line 2447
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    .line 2448
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_15
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 2454
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    if-eqz v0, :cond_9

    .line 2455
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onDestroy()V

    .line 2457
    :cond_9
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 2458
    return-void
.end method

.method public turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "option_flag"    # I

    .prologue
    .line 2685
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2687
    .local v5, "resolver":Landroid/content/ContentResolver;
    and-int/lit8 v8, p2, 0x20

    if-lez v8, :cond_30

    .line 2688
    sget-boolean v8, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v8, :cond_13

    .line 2689
    const-string v8, "GlobalActions"

    const-string v9, "turnOffTalkBackExclusiveOptions - 0x20"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2690
    :cond_13
    const-string v8, "assistant_menu"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2691
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2692
    .local v2, "assistantMenu":Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.samsung.android.app.assistantmenu"

    const-string v10, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2694
    invoke-virtual {p1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 2697
    .end local v2    # "assistantMenu":Landroid/content/Intent;
    :cond_30
    and-int/lit8 v8, p2, 0x10

    if-lez v8, :cond_58

    .line 2698
    sget-boolean v8, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v8, :cond_3f

    .line 2699
    const-string v8, "GlobalActions"

    const-string v9, "turnOffTalkBackExclusiveOptions - 0x10"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    :cond_3f
    const-string v8, "air_motion_engine"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2701
    new-instance v0, Landroid/content/Intent;

    const-string v8, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2702
    .local v0, "air_motion_changed":Landroid/content/Intent;
    const-string v8, "isEnable"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2703
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2706
    .end local v0    # "air_motion_changed":Landroid/content/Intent;
    :cond_58
    and-int/lit8 v8, p2, 0x8

    if-lez v8, :cond_87

    .line 2707
    sget-boolean v8, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v8, :cond_67

    .line 2708
    const-string v8, "GlobalActions"

    const-string v9, "turnOffTalkBackExclusiveOptions - 0x08"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    :cond_67
    const-string v8, "finger_air_view"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2710
    const-string v8, "finger_air_view_highlight"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2712
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2713
    .local v3, "finger_air_view_changed":Landroid/content/Intent;
    const-string v8, "isEnable"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2714
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2717
    .end local v3    # "finger_air_view_changed":Landroid/content/Intent;
    :cond_87
    and-int/lit8 v8, p2, 0x40

    if-lez v8, :cond_bd

    .line 2718
    const-string v8, "Utils"

    const-string v9, "turnOffTalkBackExclusiveOptions - 0x40"

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    const-string v8, "access_control_use"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2720
    const-string v8, "access_control_enabled"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2721
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2722
    .local v4, "icIntent":Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.samsung.android.app.accesscontrol"

    const-string v10, "com.samsung.android.app.accesscontrol.AccessControlMainService"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2724
    invoke-virtual {p1, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 2725
    const-string v8, "Utils"

    const-string v9, "turnOffTalkBackExclusiveOptions - 0x40"

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    .end local v4    # "icIntent":Landroid/content/Intent;
    :cond_bd
    and-int/lit8 v8, p2, 0x4

    if-lez v8, :cond_d3

    .line 2729
    sget-boolean v8, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v8, :cond_cc

    .line 2730
    const-string v8, "GlobalActions"

    const-string v9, "turnOffTalkBackExclusiveOptions - 0x04"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    :cond_cc
    const-string v8, "pen_hovering"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2734
    :cond_d3
    and-int/lit8 v8, p2, 0x2

    if-lez v8, :cond_122

    .line 2735
    sget-boolean v8, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v8, :cond_e2

    .line 2736
    const-string v8, "GlobalActions"

    const-string v9, "turnOffTalkBackExclusiveOptions - 0x02"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    :cond_e2
    const-string v8, "intelligent_sleep_mode"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2738
    const-string v8, "intelligent_rotation_mode"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2739
    const-string v8, "smart_pause"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2740
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2741
    .local v6, "smart_pause_changed":Landroid/content/Intent;
    const-string v8, "isEnable"

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2742
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v6, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2743
    const-string v8, "smart_scroll"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2744
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2745
    .local v7, "smart_scroll_changed":Landroid/content/Intent;
    const-string v8, "isEnable"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2746
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2749
    .end local v6    # "smart_pause_changed":Landroid/content/Intent;
    .end local v7    # "smart_scroll_changed":Landroid/content/Intent;
    :cond_122
    and-int/lit8 v8, p2, 0x1

    if-lez v8, :cond_138

    .line 2750
    sget-boolean v8, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v8, :cond_131

    .line 2751
    const-string v8, "GlobalActions"

    const-string v9, "turnOffTalkBackExclusiveOptions - 0x01"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    :cond_131
    const-string v8, "multi_window_enabled"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2755
    :cond_138
    and-int/lit16 v8, p2, 0x80

    if-lez v8, :cond_14a

    .line 2756
    const-string v8, "Utils"

    const-string v9, "turnOffTalkBackExclusiveOptions - 0x80"

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    const-string v8, "pen_writing_buddy"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2760
    :cond_14a
    and-int/lit16 v8, p2, 0x200

    if-lez v8, :cond_172

    .line 2761
    sget-boolean v8, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v8, :cond_159

    .line 2762
    const-string v8, "Utils"

    const-string v9, "turnOffTalkBackExclusiveOptions - 0x200"

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    :cond_159
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.settings.ALL_SOUND_MUTE"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2764
    .local v1, "all_sound_off_intent":Landroid/content/Intent;
    const-string v8, "all_sound_off"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v5, v8, v9, v10}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2765
    const-string v8, "mute"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2766
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2768
    .end local v1    # "all_sound_off_intent":Landroid/content/Intent;
    :cond_172
    return-void
.end method
