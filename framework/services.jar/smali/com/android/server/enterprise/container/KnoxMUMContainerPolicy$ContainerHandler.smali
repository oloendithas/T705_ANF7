.class Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;
.super Landroid/os/Handler;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerHandler"
.end annotation


# static fields
.field public static final MSG_KLMS_LICENSE_UPDATE:I = 0x2

.field public static final MSG_REMOVE_ORPHANED_CONTAINERS:I = 0x4

.field public static final MSG_START_MIGRATION_WIZARD:I = 0x5

.field public static final MSG_START_SETUP_WIZARD:I = 0x1

.field public static final MSG_UPDATE_CONTAINER_CREATION_STATUS:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 536
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 537
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 38
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 540
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 543
    :pswitch_0
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v8, "ContainerHandler.MSG_START_SETUP_WIZARD is called ..."

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/sec/knox/container/ContainerCreationParams;

    .line 548
    .local v27, "params":Lcom/sec/knox/container/ContainerCreationParams;
    new-instance v23, Landroid/content/Intent;

    const-string v2, "com.sec.knox.start.SETUP_WIZARD"

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 549
    .local v23, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.knox.knoxsetupwizardclient"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    const-string v2, "creation_params"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 551
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$900()Landroid/content/Context;

    move-result-object v2

    new-instance v8, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 552
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createContainer: intent from User:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with requestid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v27 .. v27}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 553
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v27    # "params":Lcom/sec/knox/container/ContainerCreationParams;
    :catch_0
    move-exception v19

    .line 554
    .local v19, "e":Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 560
    .end local v19    # "e":Ljava/lang/Exception;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Integer;

    move-object/from16 v27, v2

    check-cast v27, [Ljava/lang/Integer;

    .line 561
    .local v27, "params":[Ljava/lang/Integer;
    const/4 v2, 0x0

    aget-object v2, v27, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 562
    .local v5, "requestId":I
    const/4 v2, 0x1

    aget-object v2, v27, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 563
    .local v4, "containerId":I
    const/4 v2, 0x2

    aget-object v2, v27, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 564
    .local v7, "adminUid":I
    const/4 v2, 0x3

    aget-object v2, v27, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 566
    .local v6, "creatorUid":I
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "creation status: reqId - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", containerId -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", adminUid-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", creatorUid-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$900()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v32

    .line 569
    .local v32, "pkgNames":[Ljava/lang/String;
    if-eqz v32, :cond_2

    .line 570
    move-object/from16 v15, v32

    .local v15, "arr$":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v24, v0

    .local v24, "len$":I
    const/16 v20, 0x0

    .local v20, "i$":I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_3

    aget-object v3, v15, v20

    .line 571
    .local v3, "pkgName":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sending creation update to package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntent(Ljava/lang/String;IIII)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1000(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    .line 574
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1100()Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntentBC(Ljava/lang/String;IIII)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    .line 570
    :cond_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 580
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v15    # "arr$":[Ljava/lang/String;
    .end local v20    # "i$":I
    .end local v24    # "len$":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v9, 0x0

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntent(Ljava/lang/String;IIII)V
    invoke-static/range {v8 .. v13}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1000(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    .line 582
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1100()Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 583
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v9, 0x0

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntentBC(Ljava/lang/String;IIII)V
    invoke-static/range {v8 .. v13}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    .line 588
    :cond_3
    if-lez v4, :cond_5

    if-ne v7, v6, :cond_5

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v12

    .line 590
    .local v12, "ownerUid":I
    if-lez v12, :cond_5

    if-eq v12, v6, :cond_5

    .line 591
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$900()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v33

    .line 592
    .local v33, "pkgs":[Ljava/lang/String;
    if-eqz v33, :cond_4

    .line 593
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sending creation update to app uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    move-object/from16 v15, v33

    .restart local v15    # "arr$":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v24, v0

    .restart local v24    # "len$":I
    const/16 v20, 0x0

    .restart local v20    # "i$":I
    :goto_2
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    aget-object v3, v15, v20

    .line 595
    .restart local v3    # "pkgName":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sending creation update to package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object v9, v3

    move v10, v4

    move v11, v5

    move v13, v7

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntent(Ljava/lang/String;IIII)V
    invoke-static/range {v8 .. v13}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1000(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    .line 594
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 599
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v15    # "arr$":[Ljava/lang/String;
    .end local v20    # "i$":I
    .end local v24    # "len$":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v9, 0x0

    move v10, v4

    move v11, v5

    move v13, v7

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->sendContainerCreationIntent(Ljava/lang/String;IIII)V
    invoke-static/range {v8 .. v13}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1000(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    .line 605
    .end local v12    # "ownerUid":I
    .end local v33    # "pkgs":[Ljava/lang/String;
    :cond_5
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1100()Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 606
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v8, "create callback found, updating callback.."

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/16 v34, 0x3ea

    .line 608
    .local v34, "retCode":I
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 609
    .local v18, "data":Landroid/os/Bundle;
    if-lez v4, :cond_6

    .line 610
    const/16 v34, 0x3e9

    .line 611
    const-string v2, "containerid"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 620
    :goto_3
    :try_start_1
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1100()Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    move-result-object v2

    move/from16 v0, v34

    move-object/from16 v1, v18

    invoke-interface {v2, v0, v1}, Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;->updateStatus(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 625
    :goto_4
    const/4 v2, 0x0

    # setter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1102(Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    goto/16 :goto_0

    .line 612
    :cond_6
    const/16 v2, -0x3f9

    if-ne v4, v2, :cond_7

    .line 613
    const/16 v34, 0x3f8

    .line 614
    const-string v2, "containerid"

    const/4 v8, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 615
    const-string v2, "requestid"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 617
    :cond_7
    const-string v2, "containerid"

    const/4 v8, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 621
    :catch_1
    move-exception v19

    .line 622
    .local v19, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {v19 .. v19}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 631
    .end local v4    # "containerId":I
    .end local v5    # "requestId":I
    .end local v6    # "creatorUid":I
    .end local v7    # "adminUid":I
    .end local v18    # "data":Landroid/os/Bundle;
    .end local v19    # "e":Landroid/os/RemoteException;
    .end local v27    # "params":[Ljava/lang/Integer;
    .end local v32    # "pkgNames":[Ljava/lang/String;
    .end local v34    # "retCode":I
    :pswitch_2
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v8, "MSG_REMOVE_ORPHANED_CONTAINERS received"

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v30

    .line 633
    .local v30, "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v30, :cond_0

    .line 634
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/PersonaInfo;

    .line 635
    .local v22, "info":Landroid/content/pm/PersonaInfo;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v21, v0

    .line 636
    .local v21, "id":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/PersonaManager;->getPersonaState(I)I

    move-result v37

    .line 637
    .local v37, "state":I
    const/4 v2, -0x1

    move/from16 v0, v37

    if-eq v0, v2, :cond_9

    const/4 v2, 0x1

    move/from16 v0, v37

    if-eq v0, v2, :cond_9

    const/4 v2, 0x4

    move/from16 v0, v37

    if-ne v0, v2, :cond_b

    :cond_9
    const/16 v28, 0x1

    .line 640
    .local v28, "partial":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v2

    move-object/from16 v0, v22

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v2, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v12

    .line 641
    .restart local v12    # "ownerUid":I
    if-lez v12, :cond_a

    if-eqz v28, :cond_8

    .line 642
    :cond_a
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Orphan container removing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v22

    iget v9, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    move-object/from16 v0, v22

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v9, 0x1

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->removeContainer(IZ)I
    invoke-static {v2, v8, v9}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$1400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;IZ)I

    goto :goto_5

    .line 637
    .end local v12    # "ownerUid":I
    .end local v28    # "partial":Z
    :cond_b
    const/16 v28, 0x0

    goto :goto_6

    .line 651
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v21    # "id":I
    .end local v22    # "info":Landroid/content/pm/PersonaInfo;
    .end local v30    # "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v37    # "state":I
    :pswitch_3
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v8, "ContainerHandler.MSG_START_MIGRATION_WIZARD is called ..."

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/sec/knox/container/ContainerCreationParams;

    .line 656
    .local v27, "params":Lcom/sec/knox/container/ContainerCreationParams;
    new-instance v23, Landroid/content/Intent;

    const-string v2, "com.sec.knox.start.MIGRATION_WIZARD"

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 657
    .restart local v23    # "intent":Landroid/content/Intent;
    const-string v2, "com.sec.knox.containeragent"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 658
    const-string v2, "creation_params"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 659
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$900()Landroid/content/Context;

    move-result-object v2

    new-instance v8, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 660
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createContainer: intent from User:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with requestid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v27 .. v27}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 661
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v27    # "params":Lcom/sec/knox/container/ContainerCreationParams;
    :catch_2
    move-exception v19

    .line 662
    .local v19, "e":Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 668
    .end local v19    # "e":Ljava/lang/Exception;
    :pswitch_4
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v8, "MSG_KLMS_LICENSE_UPDATE received"

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 670
    .local v16, "code":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v31

    .line 671
    .local v31, "personasList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v31, :cond_f

    .line 672
    const/16 v35, 0x0

    .line 673
    .local v35, "retVal":Z
    const-string v2, "persona"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v36

    check-cast v36, Lcom/android/server/pm/PersonaManagerService;

    .line 675
    .local v36, "service":Lcom/android/server/pm/PersonaManagerService;
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [I

    move-object/from16 v29, v0

    .line 676
    .local v29, "personaIds":[I
    const/16 v25, 0x0

    .line 677
    .local v25, "length":I
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20    # "i$":Ljava/util/Iterator;
    :cond_c
    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/PersonaInfo;

    .line 678
    .restart local v22    # "info":Landroid/content/pm/PersonaInfo;
    move-object/from16 v0, v22

    iget-boolean v2, v0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-nez v2, :cond_c

    .line 679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v2

    move-object/from16 v0, v22

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v2, v8}, Landroid/os/PersonaManager;->getPersonaState(I)I

    move-result v17

    .line 680
    .local v17, "currentState":I
    const/16 v2, 0x5a

    move/from16 v0, v16

    if-ne v0, v2, :cond_d

    .line 681
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentState for persona- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v22

    iget v9, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " oldState= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v22

    iget v9, v0, Landroid/content/pm/PersonaInfo;->oldState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/16 v2, 0x9

    move/from16 v0, v17

    if-ne v0, v2, :cond_c

    .line 684
    if-eqz v36, :cond_c

    .line 685
    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->handleSuperUnlockPersona(Landroid/content/pm/PersonaInfo;)Z

    move-result v35

    .line 686
    if-eqz v35, :cond_c

    .line 687
    add-int/lit8 v26, v25, 0x1

    .end local v25    # "length":I
    .local v26, "length":I
    move-object/from16 v0, v22

    iget v2, v0, Landroid/content/pm/PersonaInfo;->id:I

    aput v2, v29, v25

    move/from16 v25, v26

    .end local v26    # "length":I
    .restart local v25    # "length":I
    goto :goto_7

    .line 692
    :cond_d
    const/16 v2, 0x9

    move/from16 v0, v17

    if-eq v0, v2, :cond_c

    .line 693
    const/4 v2, 0x7

    move/from16 v0, v17

    if-eq v0, v2, :cond_c

    .line 694
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "setting persona state to KLMS_LOCKED"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    # invokes: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->getService()Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;

    move-result-object v2

    move-object/from16 v0, v22

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/16 v9, 0x9

    invoke-virtual {v2, v8, v9}, Landroid/os/PersonaManager;->setPersonaState(II)V

    goto/16 :goto_7

    .line 701
    .end local v17    # "currentState":I
    .end local v22    # "info":Landroid/content/pm/PersonaInfo;
    :cond_e
    if-lez v25, :cond_0

    .line 702
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$900()Landroid/content/Context;

    move-result-object v2

    const-string v8, "activity"

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager;

    .line 704
    .local v14, "activityManager":Landroid/app/ActivityManager;
    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/app/ActivityManager;->softStartPersonas([I)Z

    goto/16 :goto_0

    .line 707
    .end local v14    # "activityManager":Landroid/app/ActivityManager;
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v25    # "length":I
    .end local v29    # "personaIds":[I
    .end local v35    # "retVal":Z
    .end local v36    # "service":Lcom/android/server/pm/PersonaManagerService;
    :cond_f
    # getter for: Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v8, "persona list is null"

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
