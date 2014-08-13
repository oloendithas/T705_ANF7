.class public Lcom/sec/android/app/camera/resourcedata/ExternalEffectResourceData;
.super Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
.source "ExternalEffectResourceData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectResourceData"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mCommandIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 8
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    const/4 v7, 0x0

    .line 61
    const/16 v4, 0x8

    const v5, 0x7f0b0130

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;-><init>(II)V

    .line 34
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/camera/resourcedata/ExternalEffectResourceData;->mCommandIdList:Ljava/util/ArrayList;

    .line 63
    iput-object p1, p0, Lcom/sec/android/app/camera/resourcedata/ExternalEffectResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 65
    invoke-direct {p0}, Lcom/sec/android/app/camera/resourcedata/ExternalEffectResourceData;->initCommandIdList()V

    .line 67
    iget-object v4, p0, Lcom/sec/android/app/camera/resourcedata/ExternalEffectResourceData;->mCommandIdList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 68
    .local v1, "commandId":I
    iget-object v4, p0, Lcom/sec/android/app/camera/resourcedata/ExternalEffectResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v3

    .line 69
    .local v3, "resIDs":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    iget-object v4, p0, Lcom/sec/android/app/camera/resourcedata/ExternalEffectResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    iget-object v4, p0, Lcom/sec/android/app/camera/resourcedata/ExternalEffectResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v5, 0x1f40

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v3

    .line 72
    :cond_0
    if-nez v3, :cond_1

    .line 73
    const-string v4, "EffectResourceData"

    const-string v5, "Cannot find resource ID"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :cond_1
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v4, 0x6

    new-array v4, v4, [I

    iget v5, v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v5, v4, v7

    const/4 v5, 0x1

    iget v6, v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v6, v4, v5

    const/4 v5, 0x2

    iget v6, v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v6, v4, v5

    const/4 v5, 0x3

    aput v1, v4, v5

    const/4 v5, 0x4

    iget v6, v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v6, v4, v5

    const/4 v5, 0x5

    aput v7, v4, v5

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 78
    .local v0, "bundle":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    iget-object v4, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    .end local v0    # "bundle":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v1    # "commandId":I
    .end local v3    # "resIDs":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_2
    return-void
.end method

.method private initCommandIdList()V
    .locals 5

    .prologue
    .line 38
    iget-object v3, p0, Lcom/sec/android/app/camera/resourcedata/ExternalEffectResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v3, p0, Lcom/sec/android/app/camera/resourcedata/ExternalEffectResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isFilterLoaded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 41
    iget-object v3, p0, Lcom/sec/android/app/camera/resourcedata/ExternalEffectResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/ExternalFilterLoader;->loadExternalFilters()Z

    .line 42
    const-string v3, "EffectResourceData"

    const-string v4, "ExternalFilter is not loaded, Now try to load..."

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/resourcedata/ExternalEffectResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffects()Ljava/util/ArrayList;

    move-result-object v2

    .line 46
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 47
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;

    .line 48
    .local v1, "item":Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;
    iget-object v3, p0, Lcom/sec/android/app/camera/resourcedata/ExternalEffectResourceData;->mCommandIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;->getEffectId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/sec/android/app/camera/ExternalFilterLoader$ExtEffectItem;
    :cond_1
    const-string v3, "EffectResourceData"

    const-string v4, "There is no externalFilter that user enable."

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/resourcedata/ExternalEffectResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->isDownloadEffectSupport()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 55
    iget-object v3, p0, Lcom/sec/android/app/camera/resourcedata/ExternalEffectResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v4, 0x232a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v3, p0, Lcom/sec/android/app/camera/resourcedata/ExternalEffectResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v4, 0x232e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_3
    return-void
.end method


# virtual methods
.method public cleanUpResources()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ExternalEffectResourceData;->mCommandIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 86
    return-void
.end method
