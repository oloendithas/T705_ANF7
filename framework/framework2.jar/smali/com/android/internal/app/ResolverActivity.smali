.class public Lcom/android/internal/app/ResolverActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$LoadIconTask;,
        Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;,
        Lcom/android/internal/app/ResolverActivity$ViewHolder;,
        Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;,
        Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "type"

.field private static final DEBUG:Z = false

.field private static final GUIDE_ACTIVITY:Ljava/lang/String; = "ResolverGuideActivity"

.field private static final INTERNAL_PACKAGE:Ljava/lang/String; = "com.android.internal.app"

.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ResolverActivity"

.field public static final THEME_CHOOSER:Ljava/lang/String; = "theme"

.field public static final THEME_DEVICE_DEFAULT:I = 0x1

.field public static final THEME_DEVICE_DEFAULT_LIGHT:I = 0x2

.field public static final THEME_NONE:I = 0x0

.field public static final TYPE_GRID:I = 0x1

.field public static final TYPE_LIST:I = 0x2

.field public static final TYPE_NONE:I


# instance fields
.field private mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

.field private mAlwaysButton:Landroid/widget/Button;

.field private mAlwaysUseOption:Z

.field private mDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mIconDpi:I

.field private mIconSize:I

.field private mIsDeviceDefault:Z

.field private mIsGridType:Z

.field private mLastSelected:I

.field private mLaunchedFromPackage:Ljava/lang/String;

.field private mLaunchedFromUid:I

.field private mListView:Landroid/widget/AbsListView;

.field private mMaxColumns:I

.field private mNoApplication:Ljava/lang/CharSequence;

.field private mOnceButton:Landroid/widget/Button;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRegistered:Z

.field private mShowExtended:Z

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mNoApplication:Ljava/lang/CharSequence;

    .line 129
    new-instance v0, Lcom/android/internal/app/ResolverActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$1;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 135
    new-instance v0, Lcom/android/internal/app/ResolverActivity$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$2;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 999
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ResolverActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/AbsListView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/ResolverActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsGridType:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/ResolverActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/ResolverActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mShowExtended:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/app/ResolverActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mShowExtended:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/app/ResolverActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 86
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mIconSize:I

    return v0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 151
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 158
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 159
    return-object v0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 451
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 452
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 455
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mNoApplication:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 456
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mNoApplication:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_4a
    :goto_4a
    const/4 v0, 0x1

    return v0

    .line 458
    :cond_4c
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4a
.end method

.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 344
    :try_start_0
    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 349
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    :goto_6
    return-object v1

    .line 345
    .end local v1    # "result":Landroid/graphics/drawable/Drawable;
    :catch_7
    move-exception v0

    .line 346
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_6
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 354
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 356
    :try_start_6
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1b

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 357
    .local v0, "ci":Landroid/content/pm/ComponentInfo;
    :goto_c
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget v4, v0, Landroid/content/pm/PackageItemInfo;->icon:I

    if-eqz v4, :cond_1e

    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    :goto_14
    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 358
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_21

    .line 378
    .end local v0    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1a
    :goto_1a
    return-object v1

    .line 356
    :cond_1b
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_c

    .line 357
    .restart local v0    # "ci":Landroid/content/pm/ComponentInfo;
    :cond_1e
    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    goto :goto_14

    .line 362
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_21
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v4, :cond_39

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v4, :cond_39

    .line 363
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 364
    if-nez v1, :cond_1a

    .line 368
    :cond_39
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v3

    .line 369
    .local v3, "iconRes":I
    if-eqz v3, :cond_4f

    .line 370
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_4c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_4c} :catch_56

    move-result-object v1

    .line 371
    if-nez v1, :cond_1a

    .line 378
    .end local v0    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v3    # "iconRes":I
    :cond_4f
    :goto_4f
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1a

    .line 375
    :catch_56
    move-exception v2

    .line 376
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ResolverActivity"

    const-string v5, "Couldn\'t find resources for package"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4f
.end method

.method public onButtonClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 467
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 468
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v2

    const v1, 0x102039a

    if-ne v0, v1, :cond_17

    const/4 v1, 0x1

    :goto_10
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZ)V

    .line 469
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    .line 470
    return-void

    .line 468
    :cond_17
    const/4 v1, 0x0

    goto :goto_10
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 164
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104067f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 167
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .registers 25
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const v2, 0x1030347

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 173
    invoke-super/range {p0 .. p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 175
    :try_start_b
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1b} :catch_110

    .line 181
    :goto_1b
    :try_start_1b
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    .line 183
    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLaunchedFromPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_47} :catch_118

    .line 189
    :goto_47
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 190
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    .line 191
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    .line 193
    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    .line 194
    .local v15, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101046e

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v15, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_127

    iget v2, v15, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_127

    .line 197
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    .line 202
    :goto_80
    const/16 v17, 0x0

    .line 205
    .local v17, "type":I
    :try_start_82
    const-string/jumbo v2, "type"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_8b} :catch_12e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_82 .. :try_end_8b} :catch_138

    move-result v17

    .line 212
    :goto_8c
    packed-switch v17, :pswitch_data_30e

    .line 222
    :goto_8f
    const/16 v16, 0x0

    .line 225
    .local v16, "theme":I
    :try_start_91
    const-string/jumbo v2, "theme"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_9a} :catch_150
    .catch Ljava/lang/OutOfMemoryError; {:try_start_91 .. :try_end_9a} :catch_15a

    move-result v16

    .line 232
    :goto_9b
    packed-switch v16, :pswitch_data_318

    .line 247
    :goto_9e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 249
    .local v11, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    move-object/from16 v0, p3

    iput-object v0, v11, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 250
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 253
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 255
    const-string v2, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 256
    .local v10, "am":Landroid/app/ActivityManager;
    invoke-virtual {v10}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    .line 257
    invoke-virtual {v10}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mIconSize:I

    .line 259
    new-instance v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v13

    .line 262
    .local v13, "count":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-ltz v2, :cond_10c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v2

    if-eqz v2, :cond_182

    .line 264
    :cond_10c
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 334
    :cond_10f
    :goto_10f
    return-void

    .line 177
    .end local v10    # "am":Landroid/app/ActivityManager;
    .end local v11    # "ap":Lcom/android/internal/app/AlertController$AlertParams;
    .end local v13    # "count":I
    .end local v15    # "outValue":Landroid/util/TypedValue;
    .end local v16    # "theme":I
    .end local v17    # "type":I
    :catch_110
    move-exception v14

    .line 178
    .local v14, "e":Landroid/os/RemoteException;
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    goto/16 :goto_1b

    .line 184
    .end local v14    # "e":Landroid/os/RemoteException;
    :catch_118
    move-exception v14

    .line 185
    .restart local v14    # "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    .line 186
    const-string v2, "ResolverActivity"

    const-string v3, "mLaunchedFromPackage=null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_47

    .line 199
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v15    # "outValue":Landroid/util/TypedValue;
    :cond_127
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    goto/16 :goto_80

    .line 206
    .restart local v17    # "type":I
    :catch_12e
    move-exception v14

    .line 207
    .local v14, "e":Ljava/lang/Exception;
    const-string v2, "ResolverActivity"

    const-string v3, " intent.getIntExtra(CONTENT_TYPE, TYPE_NONE), type Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8c

    .line 208
    .end local v14    # "e":Ljava/lang/Exception;
    :catch_138
    move-exception v14

    .line 209
    .local v14, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "ResolverActivity"

    const-string v3, " intent.getIntExtra(CONTENT_TYPE, TYPE_NONE), OutOfMemoryError"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8c

    .line 215
    .end local v14    # "e":Ljava/lang/OutOfMemoryError;
    :pswitch_142
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsGridType:Z

    goto/16 :goto_8f

    .line 218
    :pswitch_149
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsGridType:Z

    goto/16 :goto_8f

    .line 226
    .restart local v16    # "theme":I
    :catch_150
    move-exception v14

    .line 227
    .local v14, "e":Ljava/lang/Exception;
    const-string v2, "ResolverActivity"

    const-string v3, "checkedItemPosition is invalid position"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9b

    .line 228
    .end local v14    # "e":Ljava/lang/Exception;
    :catch_15a
    move-exception v14

    .line 229
    .local v14, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "ResolverActivity"

    const-string v3, " intent.getIntExtra(THEME_CHOOSER, TYPE_NONE), OutOfMemoryError"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9b

    .line 235
    .end local v14    # "e":Ljava/lang/OutOfMemoryError;
    :pswitch_164
    const v2, 0x1030346

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    goto/16 :goto_9e

    .line 241
    :pswitch_16e
    const v2, 0x1030346

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    goto/16 :goto_9e

    .line 244
    :pswitch_178
    const v2, 0x1030347

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    goto/16 :goto_9e

    .line 266
    .restart local v10    # "am":Landroid/app/ActivityManager;
    .restart local v11    # "ap":Lcom/android/internal/app/AlertController$AlertParams;
    .restart local v13    # "count":I
    :cond_182
    const/4 v2, 0x1

    if-le v13, v2, :cond_2ae

    .line 267
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsGridType:Z

    if-eqz v2, :cond_27a

    .line 268
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-eqz v2, :cond_26a

    .line 269
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109011e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 273
    :goto_19f
    iget-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x1020399

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    .line 284
    :goto_1ae
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    new-instance v3, Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 288
    if-eqz p6, :cond_202

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 290
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-eqz v2, :cond_202

    .line 291
    const v2, 0x1040952

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 293
    const v2, 0x1040953

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 297
    :cond_202
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsGridType:Z

    if-eqz v2, :cond_20b

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->resizeGrid()V

    .line 311
    :cond_20b
    :goto_20b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 313
    if-eqz p6, :cond_10f

    .line 314
    const v2, 0x10202f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 315
    .local v12, "buttonLayout":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-nez v2, :cond_223

    if-nez v12, :cond_2e5

    .line 316
    :cond_223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 328
    :goto_24d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getInitialHighlight()I

    move-result v5

    .line 329
    .local v5, "initialHighlight":I
    if-ltz v5, :cond_10f

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v5, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 331
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/ResolverActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto/16 :goto_10f

    .line 271
    .end local v5    # "initialHighlight":I
    .end local v12    # "buttonLayout":Landroid/view/ViewGroup;
    :cond_26a
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900a7

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    goto/16 :goto_19f

    .line 275
    :cond_27a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-eqz v2, :cond_29f

    .line 276
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109011f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 280
    :goto_28e
    iget-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x102039c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    goto/16 :goto_1ae

    .line 278
    :cond_29f
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900a8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    goto :goto_28e

    .line 300
    :cond_2ae
    const/4 v2, 0x1

    if-ne v13, v2, :cond_2d0

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v2}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 303
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 304
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_10f

    .line 307
    :cond_2d0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040687

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 308
    iget-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mNoApplication:Ljava/lang/CharSequence;

    goto/16 :goto_20b

    .line 320
    .restart local v12    # "buttonLayout":Landroid/view/ViewGroup;
    :cond_2e5
    if-eqz v12, :cond_307

    .line 321
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    .line 322
    const v2, 0x102039a

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    .line 323
    const v2, 0x102039b

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    goto/16 :goto_24d

    .line 325
    :cond_307
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    goto/16 :goto_24d

    .line 212
    :pswitch_data_30e
    .packed-switch 0x0
        :pswitch_142
        :pswitch_142
        :pswitch_149
    .end packed-switch

    .line 232
    :pswitch_data_318
    .packed-switch 0x0
        :pswitch_164
        :pswitch_16e
        :pswitch_178
    .end packed-switch
.end method

.method protected onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V
    .registers 34
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "alwaysCheck"    # Z

    .prologue
    .line 483
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v2, :cond_17e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-eqz v2, :cond_17e

    .line 485
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 487
    .local v6, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    :cond_20
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v13

    .line 491
    .local v13, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v13, :cond_3a

    .line 492
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_2a
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 493
    .local v12, "cat":Ljava/lang/String;
    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_2a

    .line 496
    .end local v12    # "cat":Ljava/lang/String;
    .end local v18    # "i$":Ljava/util/Iterator;
    :cond_3a
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 498
    move-object/from16 v0, p1

    iget v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v3, 0xfff0000

    and-int v12, v2, v3

    .line 499
    .local v12, "cat":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    .line 500
    .local v15, "data":Landroid/net/Uri;
    const/high16 v2, 0x600000

    if-ne v12, v2, :cond_5e

    .line 501
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 502
    .local v19, "mimeType":Ljava/lang/String;
    if-eqz v19, :cond_5e

    .line 504
    :try_start_59
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_5e
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_59 .. :try_end_5e} :catch_161

    .line 511
    .end local v19    # "mimeType":Ljava/lang/String;
    :cond_5e
    :goto_5e
    if-eqz v15, :cond_118

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_118

    .line 515
    const/high16 v2, 0x600000

    if-ne v12, v2, :cond_82

    const-string v2, "file"

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_118

    const-string v2, "content"

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_118

    .line 518
    :cond_82
    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 522
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v23

    .line 523
    .local v23, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v23, :cond_ba

    .line 524
    invoke-virtual {v15}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v29

    .line 525
    .local v29, "ssp":Ljava/lang/String;
    :cond_97
    if-eqz v29, :cond_ba

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 526
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/PatternMatcher;

    .line 527
    .local v22, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 528
    invoke-virtual/range {v22 .. v22}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 533
    .end local v22    # "p":Landroid/os/PatternMatcher;
    .end local v29    # "ssp":Ljava/lang/String;
    :cond_ba
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v11

    .line 534
    .local v11, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v11, :cond_e7

    .line 535
    :cond_c4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 536
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/IntentFilter$AuthorityEntry;

    .line 537
    .local v10, "a":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v10, v15}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v2

    if-ltz v2, :cond_c4

    .line 538
    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v25

    .line 539
    .local v25, "port":I
    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v3

    if-ltz v25, :cond_16c

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_e4
    invoke-virtual {v6, v3, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    .end local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v25    # "port":I
    :cond_e7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v23

    .line 546
    if-eqz v23, :cond_118

    .line 547
    invoke-virtual {v15}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v24

    .line 548
    .local v24, "path":Ljava/lang/String;
    :cond_f5
    if-eqz v24, :cond_118

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_118

    .line 549
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/PatternMatcher;

    .line 550
    .restart local v22    # "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f5

    .line 551
    invoke-virtual/range {v22 .. v22}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 559
    .end local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v22    # "p":Landroid/os/PatternMatcher;
    .end local v23    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v24    # "path":Ljava/lang/String;
    :cond_118
    if-eqz v6, :cond_17e

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    .line 561
    .local v9, "N":I
    new-array v0, v9, [Landroid/content/ComponentName;

    move-object/from16 v28, v0

    .line 562
    .local v28, "set":[Landroid/content/ComponentName;
    const/4 v7, 0x0

    .line 563
    .local v7, "bestMatch":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_12b
    move/from16 v0, v17

    if-ge v0, v9, :cond_16f

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v0, v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    move-object/from16 v26, v0

    .line 565
    .local v26, "r":Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v28, v17

    .line 567
    move-object/from16 v0, v26

    iget v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    if-le v2, v7, :cond_15e

    move-object/from16 v0, v26

    iget v7, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 563
    :cond_15e
    add-int/lit8 v17, v17, 0x1

    goto :goto_12b

    .line 505
    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v17    # "i":I
    .end local v26    # "r":Landroid/content/pm/ResolveInfo;
    .end local v28    # "set":[Landroid/content/ComponentName;
    .restart local v19    # "mimeType":Ljava/lang/String;
    :catch_161
    move-exception v16

    .line 506
    .local v16, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v2, "ResolverActivity"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    const/4 v6, 0x0

    goto/16 :goto_5e

    .line 539
    .end local v16    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v19    # "mimeType":Ljava/lang/String;
    .restart local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v23    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .restart local v25    # "port":I
    :cond_16c
    const/4 v2, 0x0

    goto/16 :goto_e4

    .line 569
    .end local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v23    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v25    # "port":I
    .restart local v7    # "bestMatch":I
    .restart local v9    # "N":I
    .restart local v17    # "i":I
    .restart local v28    # "set":[Landroid/content/ComponentName;
    :cond_16f
    if-eqz p3, :cond_1c6

    .line 570
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v2, v6, v7, v0, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 585
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v12    # "cat":I
    .end local v13    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "data":Landroid/net/Uri;
    .end local v17    # "i":I
    .end local v28    # "set":[Landroid/content/ComponentName;
    :cond_17e
    :goto_17e
    if-eqz p2, :cond_1c5

    .line 586
    if-eqz p3, :cond_215

    .line 588
    :try_start_182
    new-instance v21, Landroid/content/Intent;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 591
    .local v21, "newIntent":Landroid/content/Intent;
    new-instance v14, Landroid/content/ComponentName;

    const-string v2, "android"

    const-string v3, "com.android.internal.app.ResolverGuideActivity"

    invoke-direct {v14, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    .local v14, "cn":Landroid/content/ComponentName;
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 594
    const-string v2, "android.intent.extra.INTENT"

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 595
    const/high16 v2, 0x800000

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 597
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v20

    .line 598
    .local v20, "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-nez v20, :cond_1b4

    .line 599
    new-instance v20, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v20    # "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 601
    .restart local v20    # "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_1b4
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 602
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->skipMultiWindowLaunch(Landroid/content/Intent;)V

    .line 606
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1c5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_182 .. :try_end_1c5} :catch_1fc
    .catch Ljava/lang/Exception; {:try_start_182 .. :try_end_1c5} :catch_205

    .line 622
    .end local v14    # "cn":Landroid/content/ComponentName;
    .end local v20    # "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v21    # "newIntent":Landroid/content/Intent;
    :cond_1c5
    :goto_1c5
    return-void

    .line 574
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    .restart local v7    # "bestMatch":I
    .restart local v9    # "N":I
    .restart local v12    # "cat":I
    .restart local v13    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15    # "data":Landroid/net/Uri;
    .restart local v17    # "i":I
    .restart local v28    # "set":[Landroid/content/ComponentName;
    :cond_1c6
    :try_start_1c6
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v8}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    :try_end_1df
    .catch Landroid/os/RemoteException; {:try_start_1c6 .. :try_end_1df} :catch_1e0

    goto :goto_17e

    .line 578
    :catch_1e0
    move-exception v27

    .line 579
    .local v27, "re":Landroid/os/RemoteException;
    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling setLastChosenActivity\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17e

    .line 607
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v12    # "cat":I
    .end local v13    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "data":Landroid/net/Uri;
    .end local v17    # "i":I
    .end local v27    # "re":Landroid/os/RemoteException;
    .end local v28    # "set":[Landroid/content/ComponentName;
    :catch_1fc
    move-exception v16

    .line 608
    .local v16, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "ResolverActivity"

    const-string v3, "Activity Not Found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c5

    .line 609
    .end local v16    # "e":Landroid/content/ActivityNotFoundException;
    :catch_205
    move-exception v16

    .line 610
    .local v16, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 611
    const-string v2, "ResolverActivity"

    const-string v3, "Class Not Found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c5

    .line 616
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_215
    :try_start_215
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_21c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_215 .. :try_end_21c} :catch_21d

    goto :goto_1c5

    .line 617
    :catch_21d
    move-exception v16

    .line 618
    .local v16, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "ResolverActivity"

    const-string v3, "Activity Not Found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c5
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 432
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    .line 433
    .local v0, "checkedPos":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_29

    const/4 v1, 0x1

    .line 434
    .local v1, "hasValidSelection":Z
    :goto_b
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v3, :cond_2b

    if-eqz v1, :cond_15

    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    if-eq v3, v0, :cond_2b

    .line 435
    :cond_15
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 436
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 437
    if-eqz v1, :cond_26

    .line 438
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 440
    :cond_26
    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    .line 444
    :goto_28
    return-void

    .end local v1    # "hasValidSelection":Z
    :cond_29
    move v1, v2

    .line 433
    goto :goto_b

    .line 442
    .restart local v1    # "hasValidSelection":Z
    :cond_2b
    invoke-virtual {p0, p3, v2}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZ)V

    goto :goto_28
.end method

.method protected onRestart()V
    .registers 4

    .prologue
    .line 383
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 385
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-nez v0, :cond_14

    .line 386
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 389
    :cond_14
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    .line 390
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 416
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 417
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    if-eqz v2, :cond_28

    .line 418
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    .line 419
    .local v0, "checkedPos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_29

    const/4 v1, 0x1

    .line 421
    .local v1, "enabled":Z
    :goto_15
    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    .line 422
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 423
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 424
    if-eqz v1, :cond_28

    .line 425
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 428
    .end local v0    # "checkedPos":I
    .end local v1    # "enabled":Z
    :cond_28
    return-void

    .line 419
    .restart local v0    # "checkedPos":I
    :cond_29
    const/4 v1, 0x0

    goto :goto_15
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 394
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 396
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v0, :cond_f

    .line 397
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 400
    :cond_f
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_25

    .line 408
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_25

    .line 409
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 412
    :cond_25
    return-void
.end method

.method resizeGrid()V
    .registers 4

    .prologue
    .line 337
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    .line 338
    .local v0, "itemCount":I
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/GridView;

    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 339
    return-void
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .registers 7
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 625
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "package"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 628
    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 629
    return-void
.end method

.method startSelected(IZ)V
    .registers 6
    .param p1, "which"    # I
    .param p2, "always"    # Z

    .prologue
    .line 473
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 480
    :goto_6
    return-void

    .line 476
    :cond_7
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 477
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    .line 478
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/internal/app/ResolverActivity;->onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V

    .line 479
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_6
.end method
