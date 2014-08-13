.class public Lcom/android/server/MyContainer;
.super Lcom/android/server/SEAMSContainer;
.source "MyContainer.java"


# static fields
.field private static final MAX_MYCONTAIN_NUM:I = 0x12c

.field private static MYCONTAINER_MAC_PERM:Ljava/lang/String; = null

.field private static final MYCONTAINER_SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/mycontainer"

.field private static MYCONTAINER_SEAPP_CONTEXT:Ljava/lang/String; = null

.field private static final MYCONTAINER_TYPE:I = 0x4

.field private static final MYCONTAIN_START_NUM:I = 0xc9

.field private static final TAG:Ljava/lang/String; = "MyContainer"

.field private static mSKLog:Lcom/android/server/SKLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "/data/security/mycontainer/mac_permissions.xml"

    sput-object v0, Lcom/android/server/MyContainer;->MYCONTAINER_MAC_PERM:Ljava/lang/String;

    .line 65
    const-string v0, "/data/security/mycontainer/seapp_contexts"

    sput-object v0, Lcom/android/server/MyContainer;->MYCONTAINER_SEAPP_CONTEXT:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/server/SEAMSContainer;-><init>()V

    .line 79
    sget-object v0, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "MyContainer"

    const-string v2, "enter MyContainer"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iput-object p1, p0, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    .line 81
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 82
    return-void
.end method

.method private getGenericMDMID()Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 288
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "entered getGenericMDMID"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 291
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 292
    .local v2, "pid":I
    new-instance v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    invoke-direct {v0}, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;-><init>()V

    .line 293
    .local v0, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    iget-object v5, p0, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v3}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    .line 294
    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 296
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "GenericMDMID package name is null"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 313
    .end local v0    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :goto_0
    return-object v0

    .line 300
    .restart local v0    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :cond_0
    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/MyContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 301
    .local v1, "mdmCerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 303
    :cond_1
    sget-object v5, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "GenericMDMID certs are null"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 305
    goto :goto_0

    .line 307
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    .line 309
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getGenericMDMID:  package name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getGenericMDMID:  certs = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "Returning GenericMDMID"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isRunningPackageName(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 318
    iget-object v6, p0, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 319
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 320
    .local v4, "l":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 321
    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 322
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v3, v6

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 323
    .local v3, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 324
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 325
    const/4 v6, 0x1

    .line 329
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    :goto_0
    return v6

    :cond_2
    move v6, v7

    goto :goto_0
.end method


# virtual methods
.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 334
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "enter addAppToContainer"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/4 v4, 0x3

    move/from16 v0, p4

    if-eq v0, v4, :cond_0

    const/4 v4, 0x4

    move/from16 v0, p4

    if-eq v0, v4, :cond_0

    .line 337
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "Apptype not 3 or 4"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const/4 v4, -0x1

    .line 490
    :goto_0
    return v4

    .line 342
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/MyContainer;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 343
    if-nez p1, :cond_1

    .line 344
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, " addAppToContainer failed, no packageName found"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const/4 v4, -0x1

    goto :goto_0

    .line 347
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 348
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, " invalid container ID"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const/16 v4, -0xc

    goto :goto_0

    .line 351
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MyContainer;->getGenericMDMID()Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    move-result-object v11

    .line 352
    .local v11, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    if-nez v11, :cond_3

    .line 353
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "genericMDMID is null, Returning null"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const/4 v4, -0x2

    goto :goto_0

    .line 357
    :cond_3
    iget-object v4, v11, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    iget-object v6, v11, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    move/from16 v0, p3

    invoke-static {v4, v6, v0}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 358
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "Given Container ID not created by Caller - Returning Refused"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const/4 v4, -0x2

    goto :goto_0

    .line 362
    :cond_4
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addAppToContainer, instance of MyContainer "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const/4 v9, 0x0

    .line 365
    .local v9, "certMatch":Z
    const/4 v3, 0x0

    .line 366
    .local v3, "signature":Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v12, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, " addAppToContainer 101"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/MyContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 371
    if-nez p2, :cond_7

    .line 373
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, " addAppToContainer 102"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    if-nez v12, :cond_5

    .line 377
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "addAppToContainer, signature is null, package not installed yet"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const/16 v4, -0xe

    goto/16 :goto_0

    .line 381
    :cond_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "certificate":[Ljava/lang/String;
    check-cast p2, [Ljava/lang/String;

    .line 411
    .restart local p2    # "certificate":[Ljava/lang/String;
    :cond_6
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, " addAppToContainer 103"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/android/server/MyContainer;->MYCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 414
    .local v2, "macPermFile":Ljava/io/File;
    if-nez v2, :cond_a

    .line 416
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addAppToContainer, "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " is null"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 384
    .end local v2    # "macPermFile":Ljava/io/File;
    :cond_7
    if-nez v12, :cond_8

    .line 386
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "addAppToContainer, Sigs is null, use the certificate passed as argument"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const/4 v4, 0x0

    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-virtual {v12, v4, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 391
    :cond_8
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "signature":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 394
    .restart local v3    # "signature":Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 396
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "addAppToContainer, cert matches"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const/4 v9, 0x1

    .line 400
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addAppToContainer, certMatch: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_9
    if-nez v9, :cond_6

    .line 405
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "addAppToContainer, input certificate does not match the certificate extracted from package"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const/16 v4, -0xd

    goto/16 :goto_0

    .line 421
    .restart local v2    # "macPermFile":Ljava/io/File;
    :cond_a
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "addAppToContainer 104"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v14

    .line 425
    .local v14, "userId":I
    const/4 v4, 0x3

    move/from16 v0, p4

    if-ne v0, v4, :cond_b

    .line 426
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/SELinuxMMAC;->checkContainerAllowCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 427
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, " Given Package Name has a non-empty Container Allow Category"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const/16 v4, -0x9

    goto/16 :goto_0

    .line 432
    :cond_b
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " addAppToContainer packageName = "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 435
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "addAppToContainer, Got Application Info"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v4, v8, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    if-eqz v4, :cond_13

    .line 438
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "addAppToContainer, Got Application Info, Seinfo is not null"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget v4, v8, Landroid/content/pm/ApplicationInfo;->category:I

    if-lez v4, :cond_c

    iget v4, v8, Landroid/content/pm/ApplicationInfo;->category:I

    const/16 v6, 0x1f5

    if-ge v4, v6, :cond_c

    .line 440
    const/16 v4, -0x9

    goto/16 :goto_0

    .line 441
    :cond_c
    iget v4, v8, Landroid/content/pm/ApplicationInfo;->category:I

    if-nez v4, :cond_d

    .line 442
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 444
    :cond_d
    const-string v4, "default"

    iget-object v6, v8, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 445
    const-string/jumbo v4, "untrusted"

    iput-object v4, v8, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 448
    :cond_e
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "addAppToContainer 105"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 451
    .local v13, "uid":I
    const/4 v5, 0x0

    .line 452
    .local v5, "newSeinfo":Ljava/lang/String;
    const/4 v4, 0x3

    move/from16 v0, p4

    if-ne v0, v4, :cond_f

    .line 453
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v8, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-s0:c"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 457
    :goto_1
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v4, p1

    move/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/MyContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_10

    .line 458
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "addAppToContainer: addEntryToMac failed"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 455
    :cond_f
    iget-object v5, v8, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    goto :goto_1

    .line 462
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/android/server/MyContainer;->loadContainerSetting(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_11

    .line 463
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v2, v3, v0, v4, v1}, Lcom/android/server/MyContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 464
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 467
    :cond_11
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "load container setting is done"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const/4 v4, 0x3

    move/from16 v0, p4

    if-ne v0, v4, :cond_12

    .line 471
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "relabelAppDir "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :cond_12
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "leave addAppToContainer + containerID ="

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 477
    .end local v5    # "newSeinfo":Ljava/lang/String;
    .end local v13    # "uid":I
    :cond_13
    :try_start_1
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addAppToContainer, "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " seinfo is null"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 479
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 481
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "userId":I
    :catch_0
    move-exception v10

    .line 483
    .local v10, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "MyContainer"

    const-string v7, "leave addAppToContainer + Exception e + Returning Policy Failed"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const/4 v4, -0x1

    goto/16 :goto_0
.end method

.method public createSEContainer(II)I
    .locals 11
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    const/4 v1, -0x7

    const/4 v10, -0x1

    .line 93
    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    const-string v4, "enter createContainer"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :try_start_0
    new-instance v9, Ljava/io/File;

    const-string v2, "/data/security/mycontainer"

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v9, "myContainerDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 98
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->hasGenericContainers()Z

    move-result v2

    if-nez v2, :cond_1

    .line 99
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string v3, "Issue with myContainerDir directory"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v10

    .line 139
    .end local v9    # "myContainerDir":Ljava/io/File;
    :cond_0
    :goto_0
    return v6

    .line 102
    .restart local v9    # "myContainerDir":Ljava/io/File;
    :cond_1
    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not exist. Creating dir"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    .line 104
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 105
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_2
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/server/MyContainer;->MYCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "macPermFile":Ljava/io/File;
    if-nez v0, :cond_3

    .line 116
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAppToContainer, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v10

    .line 117
    goto :goto_0

    .line 108
    .end local v0    # "macPermFile":Ljava/io/File;
    .end local v9    # "myContainerDir":Ljava/io/File;
    :catch_0
    move-exception v7

    .line 109
    .local v7, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string v3, "Issue with myContainerDir directory"

    invoke-virtual {v1, v2, v3, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    move v6, v10

    .line 111
    goto :goto_0

    .line 119
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v0    # "macPermFile":Ljava/io/File;
    .restart local v9    # "myContainerDir":Ljava/io/File;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/MyContainer;->getGenericMDMID()Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    move-result-object v8

    .line 120
    .local v8, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    if-nez v8, :cond_4

    move v6, v10

    .line 121
    goto :goto_0

    .line 124
    :cond_4
    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    const-string v4, "addEntryToMac ok!"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v8, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->createContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 127
    .local v6, "containerID":I
    if-ne v6, v1, :cond_5

    .line 128
    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    const-string v4, "Generic Container Count Overflow"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v1

    .line 129
    goto/16 :goto_0

    .line 131
    :cond_5
    invoke-static {v6}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, v8, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    iget-object v2, v8, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    const-string v3, "generic_mdm"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static/range {v0 .. v5}, Lcom/android/server/MyContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string v3, "addAppToContainer: addEntryToMac failed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v8, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    iget-object v3, v8, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v6}, Lcom/android/server/pm/PackageManagerService;->removeMyContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    move v6, v10

    .line 136
    goto/16 :goto_0
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .locals 6
    .param p1, "containerID"    # I
    .param p2, "appType"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x4

    .line 216
    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    const-string v4, "Entered Get Package Names from Container"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {p1}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 220
    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    const-string v4, "Given Container ID is my Container ID"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Lcom/android/server/MyContainer;->getGenericMDMID()Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    move-result-object v0

    .line 223
    .local v0, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    if-nez v0, :cond_0

    .line 224
    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    const-string v4, "genericMDMID is null, Returning null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .end local v0    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :goto_0
    return-object v1

    .line 227
    .restart local v0    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :cond_0
    iget-object v2, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 228
    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    const-string v4, "Given Container ID not created by Caller - Returning Refused"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_1
    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    .line 232
    iget-object v1, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, v5, p2}, Lcom/android/server/pm/PackageManagerService;->getPackageNamesFromSEContainerID(III)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 233
    :cond_2
    if-ne p2, v5, :cond_3

    .line 235
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string v3, "Calling getContainerAllowPackageNamesFromSEContainer"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, v5, p2}, Lcom/android/server/pm/PackageManagerService;->getContainerAllowPackageNamesFromSEContainer(III)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 240
    .end local v0    # "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    :cond_3
    sget-object v2, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "MyContainer"

    const-string v4, "Given Container ID is not my Container ID, returning null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSEContainerIDs()Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string v3, "enter getContainerIDs"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Lcom/android/server/MyContainer;->getGenericMDMID()Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    move-result-object v0

    .line 277
    .local v0, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    if-nez v0, :cond_0

    .line 279
    sget-object v1, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "MyContainer"

    const-string v3, "genericMDMID is null, Returning null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const/4 v1, 0x0

    .line 283
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->getMyContainerIDs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    goto :goto_0
.end method

.method public getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appType"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x4

    .line 252
    sget-object v0, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "MyContainer"

    const-string v2, "enter getSEContainerIDsfromPackageName"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-static {p1}, Lcom/android/server/MyContainer;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 255
    invoke-direct {p0}, Lcom/android/server/MyContainer;->getGenericMDMID()Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    move-result-object v6

    .line 256
    .local v6, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    if-nez v6, :cond_1

    .line 258
    sget-object v0, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "MyContainer"

    const-string v2, "genericMDMID is null, Returning null"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_0
    :goto_0
    return-object v7

    .line 262
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v6, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    iget-object v2, v6, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->getSEContainerIDFromPackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v8

    .line 264
    .local v8, "retContainerID":I
    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v0, 0x0

    aput v8, v7, v0

    .line 265
    .local v7, "retContainerArray":[I
    goto :goto_0

    .line 266
    .end local v7    # "retContainerArray":[I
    .end local v8    # "retContainerID":I
    :cond_2
    if-ne p2, v4, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v6, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    iget-object v2, v6, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->getSEContainerIDsFromContainerAllowPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[I

    move-result-object v7

    goto :goto_0
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 495
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "enter removeAppFromContainer"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const/4 v3, 0x0

    .line 498
    .local v3, "signature":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/MyContainer;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 499
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .local v13, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 501
    .local v9, "certMatch":Z
    if-nez p1, :cond_0

    .line 502
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, " removeAppFromContainer failed, no packageName found"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const/4 v4, -0x1

    .line 601
    :goto_0
    return v4

    .line 505
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/MyContainer;->getGenericMDMID()Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    move-result-object v11

    .line 506
    .local v11, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    if-nez v11, :cond_1

    .line 507
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "genericMDMID is null, Returning null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const/4 v4, -0x2

    goto :goto_0

    .line 510
    :cond_1
    iget-object v4, v11, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    iget-object v5, v11, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    move/from16 v0, p3

    invoke-static {v4, v5, v0}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 511
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "Given Container ID not created by Caller - Returning Refused - Container Allow Package Case"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const/4 v4, -0x2

    goto :goto_0

    .line 515
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/MyContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 516
    if-nez p2, :cond_5

    .line 517
    if-nez v13, :cond_3

    .line 518
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "removeAppFromContainer, signature is null, package not installed yet"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const/16 v4, -0xe

    goto :goto_0

    .line 521
    :cond_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "certificate":[Ljava/lang/String;
    check-cast p2, [Ljava/lang/String;

    .line 542
    .restart local p2    # "certificate":[Ljava/lang/String;
    :cond_4
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, " removeAppFromContainer 103"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/android/server/MyContainer;->MYCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 545
    .local v2, "macPermFile":Ljava/io/File;
    if-nez v2, :cond_7

    .line 546
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeAppFromContainer, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const/4 v4, -0x1

    goto :goto_0

    .line 524
    .end local v2    # "macPermFile":Ljava/io/File;
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "signature":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 527
    .restart local v3    # "signature":Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 529
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "removeAppFromContainer, cert matches"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const/4 v9, 0x1

    .line 533
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeAppFromContainer, certMatch: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_6
    if-nez v9, :cond_4

    .line 537
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "removeAppFromContainer, input certificate does not match the certificate extracted from package"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const/16 v4, -0xd

    goto/16 :goto_0

    .line 550
    .restart local v2    # "macPermFile":Ljava/io/File;
    :cond_7
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, " removeAppFromContainer 104"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 554
    .local v14, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 555
    .local v12, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v15

    .line 557
    .local v15, "userId":I
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " removeAppFromContainer tempPackage = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 561
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "removeAppFromContainer ok!11"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v4, v8, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 564
    const/4 v4, 0x3

    move/from16 v0, p4

    if-ne v0, v4, :cond_a

    .line 566
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove ContainerID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v8, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v2, v3, v0, v4, v1}, Lcom/android/server/MyContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 569
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "removeEntryFromMac failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 572
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/android/server/MyContainer;->loadContainerSetting(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_9

    .line 573
    iget-object v5, v8, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v8, Landroid/content/pm/ApplicationInfo;->category:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v7}, Lcom/android/server/MyContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 574
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 576
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/MyContainer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/enterprise/knox/seams/SEAMS;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/seams/SEAMS;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/sec/enterprise/knox/seams/SEAMS;->relabelAppDir(Ljava/lang/String;)I

    .line 578
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "relabelAppDir1 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :cond_a
    const/4 v4, 0x4

    move/from16 v0, p4

    if-ne v0, v4, :cond_d

    .line 582
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v2, v3, v0, v4, v1}, Lcom/android/server/MyContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_b

    .line 583
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "removeEntryFromMac failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 586
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/android/server/MyContainer;->loadContainerSetting(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_d

    .line 587
    iget-object v5, v8, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v7}, Lcom/android/server/MyContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 588
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 592
    :cond_c
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeAppFromContainer, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seinfo is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 595
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "pid":I
    .end local v14    # "uid":I
    .end local v15    # "userId":I
    :catch_0
    move-exception v10

    .line 596
    .local v10, "e":Ljava/lang/Exception;
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 599
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v12    # "pid":I
    .restart local v14    # "uid":I
    .restart local v15    # "userId":I
    :cond_d
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "leave removeAppFromContainer"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public removeSEContainer(III)I
    .locals 9
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "containerID"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v3, -0x1

    .line 152
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "enter destroyContainer"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/android/server/MyContainer;->MYCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, "macPermFile":Ljava/io/File;
    if-nez v1, :cond_0

    .line 156
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAppToContainer, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_0
    return v3

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/android/server/MyContainer;->getGenericMDMID()Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;

    move-result-object v0

    .line 160
    .local v0, "genericMDMID":Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;
    if-nez v0, :cond_1

    .line 161
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "genericMDMID is null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_1
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "genericMDMID is not null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "destroyContainer:  package name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "destroyContainer:  certs = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "destroyContainer:  containerID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {p3}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 173
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "Given containerID is myContainer ID"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0, p3, v8}, Lcom/android/server/MyContainer;->getPackageNamesFromSEContainer(II)[Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "packageNames":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v4, v2

    if-nez v4, :cond_5

    .line 178
    :cond_2
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "container is empty"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v4, p0, Lcom/android/server/MyContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, p3}, Lcom/android/server/pm/PackageManagerService;->removeMyContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_4

    .line 182
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "remove MyContainer ID Successful"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v4, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->certs:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$GenericMDMID;->packageName:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v4, v5, v6, v8}, Lcom/android/server/MyContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 185
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "removeEntryFromMac failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 189
    :cond_3
    sget-object v3, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "MyContainer"

    const-string v5, "removeEntryFromMac Successful"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 194
    :cond_4
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "remove MyContainer ID Failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    :cond_5
    sget-object v3, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "MyContainer"

    const-string v5, "CONTAINER not empty"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/16 v3, -0xb

    goto/16 :goto_0

    .line 202
    .end local v2    # "packageNames":[Ljava/lang/String;
    :cond_6
    sget-object v4, Lcom/android/server/MyContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "MyContainer"

    const-string v6, "Not my containerID"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
