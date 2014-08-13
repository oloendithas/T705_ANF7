.class public Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;
.super Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
.source "FrontCameraShootingModeResourceData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FrontCameraShootingModeResourceData"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 2
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    .line 36
    const/4 v0, 0x1

    const v1, 0x7f0b0138

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;-><init>(Lcom/sec/android/app/camera/Camera;II)V

    .line 38
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v0

    if-nez v0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 44
    invoke-static {}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/PlugInShootingModesStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getFrontCameraShootingModeOrder(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addExternalMode(ILcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;)V
    .locals 4
    .param p1, "commandId"    # I
    .param p2, "mode"    # Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;

    .prologue
    const/4 v3, 0x0

    .line 256
    if-eqz p2, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/PlugInShootingModesStorage$CameraTypes;->BACK:Lcom/sec/android/app/camera/PlugInShootingModesStorage$CameraTypes;

    iget-object v2, p2, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->cameraType:Lcom/sec/android/app/camera/PlugInShootingModesStorage$CameraTypes;

    if-eq v1, v2, :cond_0

    .line 257
    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    const/4 v1, 0x6

    new-array v1, v1, [I

    iget v2, p2, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->iconId:I

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v3, v1, v2

    const/4 v2, 0x3

    aput p1, v1, v2

    const/4 v2, 0x4

    aput v3, v1, v2

    const/4 v2, 0x5

    aput v3, v1, v2

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;-><init>([I)V

    .line 259
    .local v0, "bundle":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    iget-object v1, p2, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->setPackage(Ljava/lang/String;)V

    .line 260
    iget-object v1, p2, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->setName(Ljava/lang/String;)V

    .line 261
    iget v1, p2, Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;->order:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->setOrder(I)V

    .line 263
    iget-object v1, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    .end local v0    # "bundle":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    :cond_0
    return-void
.end method

.method public static appendItemString(Ljava/lang/StringBuilder;Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;)V
    .locals 2
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "data"    # Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    .prologue
    .line 275
    invoke-virtual {p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUpResources()V
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->saveOrder()V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 246
    invoke-super {p0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->cleanUpResources()V

    .line 247
    return-void
.end method

.method public getOrderString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v2, "orderString":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 230
    .local v0, "bundle":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    check-cast v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    .end local v0    # "bundle":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    invoke-static {v2, v0}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->appendItemString(Ljava/lang/StringBuilder;Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;)V

    .line 231
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public declared-synchronized resetOrder(Ljava/lang/String;)V
    .locals 16
    .param p1, "orderString"    # Ljava/lang/String;

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 54
    const-string v13, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 56
    .local v12, "st":[Ljava/lang/String;
    move-object v1, v12

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v8, :cond_f

    aget-object v7, v1, v4

    .line 58
    .local v7, "itemString":Ljava/lang/String;
    const-string v13, ":"

    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 59
    .local v10, "parts":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 61
    .local v6, "itemName":Ljava/lang/String;
    array-length v13, v10

    if-eqz v13, :cond_0

    array-length v13, v10

    const/4 v14, 0x2

    if-gt v13, v14, :cond_0

    const/4 v13, 0x0

    aget-object v13, v10, v13

    if-eqz v13, :cond_0

    const/4 v13, 0x0

    aget-object v13, v10, v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 62
    :cond_0
    const-string v13, "FrontCameraShootingModeResourceData"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Obtained invalid string "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 64
    :cond_2
    array-length v13, v10

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    .line 65
    const/4 v13, 0x1

    aget-object v6, v10, v13

    .line 68
    :cond_3
    const/4 v13, 0x0

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 70
    .local v3, "commandId":I
    const/16 v13, 0x18f

    if-eq v3, v13, :cond_1

    .line 74
    const/16 v13, 0x232f

    if-eq v3, v13, :cond_1

    .line 78
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v13

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v13, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v11

    .line 79
    .local v11, "resIDs":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    invoke-static {v3}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v13

    if-nez v13, :cond_4

    const/16 v13, 0x155

    if-ne v3, v13, :cond_5

    :cond_4
    const/4 v5, 0x1

    .line 81
    .local v5, "isExternal":Z
    :goto_2
    if-nez v11, :cond_6

    if-nez v5, :cond_6

    .line 83
    const-string v13, "FrontCameraShootingModeResourceData"

    const-string v14, "Cannot find resource ID"

    invoke-static {v13, v14}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 52
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "commandId":I
    .end local v4    # "i$":I
    .end local v5    # "isExternal":Z
    .end local v6    # "itemName":Ljava/lang/String;
    .end local v7    # "itemString":Ljava/lang/String;
    .end local v8    # "len$":I
    .end local v10    # "parts":[Ljava/lang/String;
    .end local v11    # "resIDs":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .end local v12    # "st":[Ljava/lang/String;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 79
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "commandId":I
    .restart local v4    # "i$":I
    .restart local v6    # "itemName":Ljava/lang/String;
    .restart local v7    # "itemString":Ljava/lang/String;
    .restart local v8    # "len$":I
    .restart local v10    # "parts":[Ljava/lang/String;
    .restart local v11    # "resIDs":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .restart local v12    # "st":[Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 87
    .restart local v5    # "isExternal":Z
    :cond_6
    const/16 v13, 0x12c

    if-ne v3, v13, :cond_7

    .line 88
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/Camera;->isFromGalleryForMagicshot()Z

    move-result v13

    if-nez v13, :cond_1

    .line 92
    :cond_7
    const/16 v13, 0x133

    if-ne v3, v13, :cond_8

    .line 93
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/Camera;->isFromGalleryForMagicshot()Z

    move-result v13

    if-nez v13, :cond_1

    .line 97
    :cond_8
    const/16 v13, 0x140

    if-eq v3, v13, :cond_1

    .line 102
    const/16 v13, 0x13c

    if-eq v3, v13, :cond_1

    .line 107
    const/16 v13, 0x141

    if-eq v3, v13, :cond_1

    .line 112
    const/16 v13, 0x149

    if-ne v3, v13, :cond_9

    .line 113
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/Camera;->isCalling()Z

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_1

    .line 117
    :cond_9
    const/16 v13, 0x13f

    if-eq v3, v13, :cond_1

    .line 122
    const/16 v13, 0x14d

    if-eq v3, v13, :cond_1

    .line 127
    const/16 v13, 0x13a

    if-eq v3, v13, :cond_1

    .line 132
    const/16 v13, 0x12f

    if-eq v3, v13, :cond_1

    .line 137
    const/16 v13, 0x12d

    if-eq v3, v13, :cond_1

    .line 142
    const/16 v13, 0x12e

    if-eq v3, v13, :cond_1

    .line 147
    const/16 v13, 0x14b

    if-eq v3, v13, :cond_1

    .line 152
    const/16 v13, 0x150

    if-ne v3, v13, :cond_a

    .line 153
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_1

    .line 157
    :cond_a
    const/16 v13, 0x136

    if-eq v3, v13, :cond_1

    .line 162
    const/16 v13, 0x139

    if-eq v3, v13, :cond_1

    .line 167
    const/16 v13, 0x148

    if-eq v3, v13, :cond_1

    .line 172
    const/16 v13, 0x151

    if-eq v3, v13, :cond_1

    .line 177
    const/16 v13, 0x152

    if-ne v3, v13, :cond_b

    .line 178
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/Camera;->isFromGalleryForMagicshot()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 182
    :cond_b
    const/16 v13, 0x155

    if-ne v3, v13, :cond_c

    .line 183
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_1

    .line 188
    :cond_c
    const/16 v13, 0x18f

    if-ne v3, v13, :cond_d

    .line 189
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_1

    .line 194
    :cond_d
    if-eqz v5, :cond_e

    .line 195
    invoke-static {v3, v6}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getMode(ILjava/lang/String;)Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v9

    .line 196
    .local v9, "mode":Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->addExternalMode(ILcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;)V

    goto/16 :goto_1

    .line 198
    .end local v9    # "mode":Lcom/sec/android/app/camera/PlugInShootingModesStorage$PlugInShootingMode;
    :cond_e
    new-instance v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    const/4 v13, 0x6

    new-array v13, v13, [I

    const/4 v14, 0x0

    iget v15, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v15, v13, v14

    const/4 v14, 0x1

    iget v15, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v15, v13, v14

    const/4 v14, 0x2

    iget v15, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v15, v13, v14

    const/4 v14, 0x3

    aput v3, v13, v14

    const/4 v14, 0x4

    iget v15, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v15, v13, v14

    const/4 v14, 0x5

    const/4 v15, 0x0

    aput v15, v13, v14

    invoke-direct {v2, v13}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;-><init>([I)V

    .line 201
    .local v2, "bundle":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 207
    .end local v2    # "bundle":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    .end local v3    # "commandId":I
    .end local v5    # "isExternal":Z
    .end local v6    # "itemName":Ljava/lang/String;
    .end local v7    # "itemString":Ljava/lang/String;
    .end local v10    # "parts":[Ljava/lang/String;
    .end local v11    # "resIDs":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_10

    .line 208
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v13

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v14, 0x232f

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v11

    .line 209
    .restart local v11    # "resIDs":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    const/4 v13, 0x6

    new-array v13, v13, [I

    const/4 v14, 0x0

    iget v15, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v15, v13, v14

    const/4 v14, 0x1

    iget v15, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v15, v13, v14

    const/4 v14, 0x2

    iget v15, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v15, v13, v14

    const/4 v14, 0x3

    const/16 v15, 0x232f

    aput v15, v13, v14

    const/4 v14, 0x4

    iget v15, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v15, v13, v14

    const/4 v14, 0x5

    const/4 v15, 0x0

    aput v15, v13, v14

    invoke-direct {v2, v13}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;-><init>([I)V

    .line 212
    .restart local v2    # "bundle":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .end local v2    # "bundle":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    .end local v11    # "resIDs":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_11

    .line 217
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v13

    iget-object v13, v13, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v14, 0x18f

    invoke-virtual {v13, v14}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v11

    .line 218
    .restart local v11    # "resIDs":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    const/4 v13, 0x6

    new-array v13, v13, [I

    const/4 v14, 0x0

    iget v15, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v15, v13, v14

    const/4 v14, 0x1

    iget v15, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v15, v13, v14

    const/4 v14, 0x2

    iget v15, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v15, v13, v14

    const/4 v14, 0x3

    const/16 v15, 0x18f

    aput v15, v13, v14

    const/4 v14, 0x4

    iget v15, v11, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v15, v13, v14

    const/4 v14, 0x5

    const/4 v15, 0x0

    aput v15, v13, v14

    invoke-direct {v2, v13}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;-><init>([I)V

    .line 221
    .restart local v2    # "bundle":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->mMenuResource:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    .end local v2    # "bundle":Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
    .end local v11    # "resIDs":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_11
    monitor-exit p0

    return-void
.end method

.method public saveOrder()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->getOrderString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setFrontCameraShootingModeOrder(Ljava/lang/String;)V

    .line 240
    :cond_0
    return-void
.end method
