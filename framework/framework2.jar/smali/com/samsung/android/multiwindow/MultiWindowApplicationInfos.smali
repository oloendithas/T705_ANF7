.class public Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
.super Landroid/util/Singleton;
.source "MultiWindowApplicationInfos.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton",
        "<",
        "Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;",
        ">;"
    }
.end annotation


# static fields
.field private static final SUPPORTEDSCALE_ALL_APPLICATIONS:Z

.field private static final SUPPORTED_ALL_APPLICATIONS:Z

.field static sInstance:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;


# instance fields
.field mAvoidInheritStackAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAvoidLaunchStyleAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDefaultAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDefaultPenAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mExtendScaleAppList:Z

.field mHideAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mMaxPenWindowCount:I

.field mNoTitleActivityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNotSupportScaleAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mShouldNotBeLaunchedInMultiWindowStyleActivityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSupportAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSupportComponentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSupportMultiInstanceAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSupportPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSupportScaleAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSystemResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->sInstance:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportAppList:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportScaleAppList:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mAvoidLaunchStyleAppList:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mAvoidInheritStackAppList:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mNotSupportScaleAppList:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportPackageList:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportComponentList:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mHideAppList:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mDefaultAppList:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mDefaultPenAppList:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mNoTitleActivityList:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mShouldNotBeLaunchedInMultiWindowStyleActivityList:Ljava/util/ArrayList;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mExtendScaleAppList:Z

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mMaxPenWindowCount:I

    .line 55
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSystemResources:Landroid/content/res/Resources;

    .line 56
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSystemResources:Landroid/content/res/Resources;

    if-nez v0, :cond_76

    .line 57
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "System Resources is not ready."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_76
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->initConfig()V

    .line 60
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->sInstance:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    return-object v0
.end method

.method private loadStringArray(ILjava/util/ArrayList;)V
    .registers 9
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p2, "outArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 87
    iget-object v5, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSystemResources:Landroid/content/res/Resources;

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "strings":[Ljava/lang/String;
    if-eqz v4, :cond_18

    .line 89
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_e
    if-ge v1, v2, :cond_18

    aget-object v3, v0, v1

    .line 90
    .local v3, "string":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 93
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "string":Ljava/lang/String;
    :cond_18
    return-void
.end method


# virtual methods
.method protected create()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .registers 2

    .prologue
    .line 24
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->create()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v0

    return-object v0
.end method

.method public getMaxPenWindow(Landroid/content/Context;)I
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 372
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mMaxPenWindowCount:I

    return v0
.end method

.method public initConfig()V
    .registers 3

    .prologue
    .line 63
    const v0, 0x1070050

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 64
    const v0, 0x1070058

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportScaleAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 66
    const v0, 0x1070051

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 68
    const v0, 0x1070054

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mAvoidLaunchStyleAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 69
    const v0, 0x1070055

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mAvoidInheritStackAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 70
    const v0, 0x1070056

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mNotSupportScaleAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 72
    const v0, 0x1070052

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportPackageList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 73
    const v0, 0x1070053

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportComponentList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 74
    const v0, 0x1070057

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mHideAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 75
    const v0, 0x1070059

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mDefaultAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 76
    const v0, 0x107005a

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mDefaultPenAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 77
    const v0, 0x107005b

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mNoTitleActivityList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 78
    const v0, 0x107005d

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mShouldNotBeLaunchedInMultiWindowStyleActivityList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadStringArray(ILjava/util/ArrayList;)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSystemResources:Landroid/content/res/Resources;

    const v1, 0x1110081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mExtendScaleAppList:Z

    .line 81
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSystemResources:Landroid/content/res/Resources;

    const v1, 0x10e0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mMaxPenWindowCount:I

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadCscAppList()V

    .line 83
    return-void
.end method

.method public isAvoidInheritStack(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callerPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 344
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 356
    :cond_5
    :goto_5
    return v0

    .line 348
    :cond_6
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 352
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mAvoidInheritStackAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 353
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public isAvoidLaunchStyleApp(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 332
    if-nez p1, :cond_4

    .line 340
    :cond_3
    :goto_3
    return v0

    .line 336
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mAvoidLaunchStyleAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 337
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public isAvoidScaleOption(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 360
    if-nez p1, :cond_4

    .line 368
    :cond_3
    :goto_3
    return v0

    .line 364
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mNotSupportScaleAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 365
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public isDefaultAppList(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mDefaultAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 304
    const/4 v0, 0x1

    .line 307
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isDefaultPenAppList(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mDefaultPenAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 312
    const/4 v0, 0x1

    .line 314
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isFixedRatioApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public isHideAppList(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mHideAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 268
    const/4 v0, 0x1

    .line 271
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isNoTitleActivityList(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mNoTitleActivityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 319
    const/4 v0, 0x1

    .line 321
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isSupporMultiInstance(Landroid/content/pm/ActivityInfo;)Z
    .registers 5
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v0, 0x0

    .line 235
    if-eqz p1, :cond_7

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_8

    .line 243
    :cond_7
    :goto_7
    return v0

    .line 238
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_7

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.samsung.android.sdk.multiwindow.multiinstance.enable"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 240
    :cond_26
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public isSupportApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 143
    :cond_10
    const/4 v0, 0x1

    .line 146
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isSupportComponentList(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportComponentList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 292
    const/4 v0, 0x1

    .line 295
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isSupportFullScreenMinimizable(Landroid/content/pm/ActivityInfo;)Z
    .registers 4
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 165
    if-eqz p1, :cond_6

    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_8

    .line 166
    :cond_6
    const/4 v0, 0x0

    .line 169
    :goto_7
    return v0

    :cond_8
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.sec.android.multiwindow.fullscreen_minimizable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method

.method public isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z
    .registers 4
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 220
    if-eqz p1, :cond_2e

    .line 221
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2e

    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_2e

    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.sec.android.support.multiwindow"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.samsung.android.sdk.multiwindow.enable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 223
    :cond_2c
    const/4 v0, 0x1

    .line 227
    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public isSupportPackageList(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 280
    const/4 v0, 0x1

    .line 283
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isSupportPopup(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 155
    const-string v0, "com.sec.android.app.popupuireceiver"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "com.android.providers.media"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "com.android.providers.downloads.ui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 158
    :cond_18
    const/4 v0, 0x1

    .line 161
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isSupportPopupApp(Landroid/content/pm/ActivityInfo;)Z
    .registers 5
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v0, 0x0

    .line 251
    if-eqz p1, :cond_7

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_8

    .line 259
    :cond_7
    :goto_7
    return v0

    .line 255
    :cond_8
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_7

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.samsung.android.sdk.multiwindow.popupwindow.enable"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 256
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z
    .registers 8
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 177
    if-eqz p1, :cond_8

    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_9

    .line 212
    :cond_8
    :goto_8
    return v2

    .line 181
    :cond_9
    iget-object v4, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isHideAppList(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 185
    iget-boolean v4, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mExtendScaleAppList:Z

    if-eqz v4, :cond_2f

    .line 186
    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v4

    if-eqz v4, :cond_2f

    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2f

    .line 187
    iget-object v4, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mNotSupportScaleAppList:Ljava/util/ArrayList;

    iget-object v5, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    move v2, v3

    .line 190
    goto :goto_8

    .line 194
    :cond_2f
    const-string v4, "android"

    iget-object v5, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    move v2, v3

    .line 195
    goto :goto_8

    .line 198
    :cond_3b
    iget-object v4, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportScaleAppList:Ljava/util/ArrayList;

    iget-object v5, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_59

    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_8

    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.samsung.android.sdk.multiwindow.penwindow.enable"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 200
    :cond_59
    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_82

    .line 201
    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.sec.android.multiwindow.STYLE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "applicationStyle":Ljava/lang/String;
    if-eqz v0, :cond_82

    .line 203
    new-instance v1, Ljava/util/ArrayList;

    const-string v4, "\\|"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 204
    .local v1, "applicationStyles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "freestyleOnly"

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .end local v0    # "applicationStyle":Ljava/lang/String;
    .end local v1    # "applicationStyles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_82
    move v2, v3

    .line 209
    goto :goto_8
.end method

.method public loadCscAppList()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 97
    const-string v7, ""

    .line 98
    .local v7, "disableApplication":Ljava/lang/String;
    if-eqz v7, :cond_3f

    .line 99
    new-instance v6, Ljava/util/ArrayList;

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 100
    .local v6, "disableAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    .local v1, "app":Ljava/lang/String;
    const-string v9, "-"

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 102
    invoke-virtual {v1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    iget-object v9, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 104
    iget-object v9, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_19

    .line 108
    .end local v1    # "app":Ljava/lang/String;
    .end local v6    # "disableAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_3f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_MultiWindow_AddOnApp"

    invoke-virtual {v9, v10, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "cscAddOnApp":Ljava/lang/String;
    if-eqz v2, :cond_92

    .line 110
    new-instance v3, Ljava/util/ArrayList;

    const-string v9, ","

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 111
    .local v3, "cscAddOnAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_5e
    :goto_5e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_92

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    .local v0, "addOnApp":Ljava/lang/String;
    const-string v9, "-"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_84

    .line 113
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    iget-object v9, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5e

    .line 115
    iget-object v9, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 116
    :cond_84
    iget-object v9, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5e

    .line 117
    iget-object v9, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 122
    .end local v0    # "addOnApp":Ljava/lang/String;
    .end local v3    # "cscAddOnAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_92
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Framework_AddOnApp4PenWindow"

    invoke-virtual {v9, v10, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "cscAddPenWindow":Ljava/lang/String;
    if-eqz v4, :cond_e5

    .line 124
    new-instance v5, Ljava/util/ArrayList;

    const-string v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 125
    .local v5, "cscAddPenWindowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_b1
    :goto_b1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    .restart local v0    # "addOnApp":Ljava/lang/String;
    const-string v9, "-"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d7

    .line 127
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    iget-object v9, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportScaleAppList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b1

    .line 129
    iget-object v9, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportScaleAppList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_b1

    .line 130
    :cond_d7
    iget-object v9, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportScaleAppList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b1

    .line 131
    iget-object v9, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mSupportScaleAppList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b1

    .line 135
    .end local v0    # "addOnApp":Ljava/lang/String;
    .end local v5    # "cscAddPenWindowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_e5
    return-void
.end method

.method public shouldNotBeLaunchedInMultiWindowStyle(Ljava/lang/String;)Z
    .registers 4
    .param p1, "shortComponentName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 380
    if-nez p1, :cond_4

    .line 388
    :cond_3
    :goto_3
    return v0

    .line 384
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->mShouldNotBeLaunchedInMultiWindowStyleActivityList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 385
    const/4 v0, 0x1

    goto :goto_3
.end method
