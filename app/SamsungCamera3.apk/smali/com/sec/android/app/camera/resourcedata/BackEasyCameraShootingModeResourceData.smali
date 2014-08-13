.class public Lcom/sec/android/app/camera/resourcedata/BackEasyCameraShootingModeResourceData;
.super Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
.source "BackEasyCameraShootingModeResourceData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EasyCameraShootingModeResourceData"


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
    .locals 9
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 66
    const v4, 0x7f0b0138

    invoke-direct {p0, v8, v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;-><init>(II)V

    .line 29
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/camera/resourcedata/BackEasyCameraShootingModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    .line 68
    iput-object p1, p0, Lcom/sec/android/app/camera/resourcedata/BackEasyCameraShootingModeResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 70
    invoke-direct {p0}, Lcom/sec/android/app/camera/resourcedata/BackEasyCameraShootingModeResourceData;->initCommandIdList()V

    .line 72
    iget-object v4, p0, Lcom/sec/android/app/camera/resourcedata/BackEasyCameraShootingModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 73
    .local v1, "commandId":I
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v3

    .line 74
    .local v3, "resIDs":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    if-eqz v3, :cond_0

    .line 77
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    const/4 v4, 0x6

    new-array v4, v4, [I

    iget v5, v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v5, v4, v7

    iget v5, v3, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v5, v4, v8

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

    invoke-direct {v0, v4}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;-><init>([I)V

    .line 80
    .local v0, "bundle":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    iget-object v4, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    .end local v0    # "bundle":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    .end local v1    # "commandId":I
    .end local v3    # "resIDs":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_1
    return-void
.end method

.method private initCommandIdList()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/BackEasyCameraShootingModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/BackEasyCameraShootingModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x133

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/BackEasyCameraShootingModeResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/BackEasyCameraShootingModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x13a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/BackEasyCameraShootingModeResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/BackEasyCameraShootingModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    const/16 v1, 0x12e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_1
    return-void
.end method


# virtual methods
.method public cleanUpResources()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/BackEasyCameraShootingModeResourceData;->mCommandIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 88
    return-void
.end method
