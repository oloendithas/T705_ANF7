.class public abstract Landroid/os/storage/IDirEncryptService$Stub;
.super Landroid/os/Binder;
.source "IDirEncryptService.java"

# interfaces
.implements Landroid/os/storage/IDirEncryptService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IDirEncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IDirEncryptService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IDirEncryptService"

.field static final TRANSACTION_changeEcryptfsPassword:I = 0xe

.field static final TRANSACTION_encryptStorage:I = 0x9

.field static final TRANSACTION_getAdditionalSpaceRequired:I = 0x8

.field static final TRANSACTION_getCurrentStatus:I = 0x6

.field static final TRANSACTION_getLastError:I = 0x7

.field static final TRANSACTION_getSDCardEncryptionPrefs:I = 0xa

.field static final TRANSACTION_isPathMounted:I = 0xf

.field static final TRANSACTION_isStorageCardEncryptionPoliciesApplied:I = 0x4

.field static final TRANSACTION_mountEcryptfsStorageWithPassword:I = 0xc

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_setNeedToCreateKey:I = 0x2a

.field static final TRANSACTION_setNullSDCardPassword:I = 0x29

.field static final TRANSACTION_setPassword:I = 0x5

.field static final TRANSACTION_setStorageCardEncryptionPolicy:I = 0x3

.field static final TRANSACTION_umountEcryptfsStorage:I = 0xd

.field static final TRANSACTION_unmountSDCardByAdmin:I = 0xb

.field static final TRANSACTION_unregisterListener:I = 0x2

.field static mDemCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Landroid/os/storage/IDirEncryptService$Stub;->mDemCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 468
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 469
    const-string v0, "IDirEncryptService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IDirEncryptService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 457
    if-nez p0, :cond_4

    .line 458
    const/4 v0, 0x0

    .line 464
    :goto_3
    return-object v0

    .line 460
    :cond_4
    const-string v1, "IDirEncryptService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 461
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/storage/IDirEncryptService;

    if-eqz v1, :cond_13

    .line 462
    check-cast v0, Landroid/os/storage/IDirEncryptService;

    goto :goto_3

    .line 464
    :cond_13
    new-instance v0, Landroid/os/storage/IDirEncryptService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/storage/IDirEncryptService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 473
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 30
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 480
    sparse-switch p1, :sswitch_data_2c0

    .line 703
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_7
    return v2

    .line 482
    :sswitch_8
    const-string v2, "IDirEncryptService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 483
    const/4 v2, 0x1

    goto :goto_7

    .line 486
    :sswitch_11
    const-string v2, "IDirEncryptService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IDirEncryptServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IDirEncryptServiceListener;

    move-result-object v22

    .line 489
    .local v22, "listener":Landroid/os/storage/IDirEncryptServiceListener;
    if-nez v22, :cond_24

    .line 490
    const/4 v2, 0x0

    goto :goto_7

    .line 492
    :cond_24
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/storage/IDirEncryptService$Stub;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 493
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    const/4 v2, 0x1

    goto :goto_7

    .line 497
    .end local v22    # "listener":Landroid/os/storage/IDirEncryptServiceListener;
    :sswitch_30
    const-string v2, "IDirEncryptService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IDirEncryptServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IDirEncryptServiceListener;

    move-result-object v22

    .line 500
    .restart local v22    # "listener":Landroid/os/storage/IDirEncryptServiceListener;
    if-nez v22, :cond_43

    .line 501
    const/4 v2, 0x0

    goto :goto_7

    .line 503
    :cond_43
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/storage/IDirEncryptService$Stub;->unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 504
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    const/4 v2, 0x1

    goto :goto_7

    .line 508
    .end local v22    # "listener":Landroid/os/storage/IDirEncryptServiceListener;
    :sswitch_4f
    const-string v2, "IDirEncryptService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/storage/IDirEncryptService$Stub;->setStorageCardEncryptionPolicy(III)I

    move-result v20

    .line 510
    .local v20, "_resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    const/4 v2, 0x1

    goto :goto_7

    .line 515
    .end local v20    # "_resultCode":I
    :sswitch_74
    const-string v2, "IDirEncryptService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IDirEncryptService$Stub;->isStorageCardEncryptionPoliciesApplied()I

    move-result v20

    .line 517
    .restart local v20    # "_resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 523
    .end local v20    # "_resultCode":I
    :sswitch_8c
    const-string v2, "IDirEncryptService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/storage/IDirEncryptService$Stub;->setPassword(Ljava/lang/String;)I

    move-result v20

    .line 525
    .restart local v20    # "_resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 531
    .end local v20    # "_resultCode":I
    :sswitch_aa
    const-string v2, "IDirEncryptService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IDirEncryptService$Stub;->getCurrentStatus()I

    move-result v20

    .line 533
    .restart local v20    # "_resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 539
    .end local v20    # "_resultCode":I
    :sswitch_c2
    const-string v2, "IDirEncryptService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IDirEncryptService$Stub;->getLastError()I

    move-result v20

    .line 541
    .restart local v20    # "_resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 547
    .end local v20    # "_resultCode":I
    :sswitch_da
    const-string v2, "IDirEncryptService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IDirEncryptService$Stub;->getAdditionalSpaceRequired()I

    move-result v20

    .line 549
    .restart local v20    # "_resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 551
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 555
    .end local v20    # "_resultCode":I
    :sswitch_f2
    const-string v2, "IDirEncryptService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/storage/IDirEncryptService$Stub;->encryptStorage(Ljava/lang/String;)I

    move-result v20

    .line 557
    .restart local v20    # "_resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 563
    .end local v20    # "_resultCode":I
    :sswitch_110
    const-string v2, "IDirEncryptService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IDirEncryptService$Stub;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v23

    .line 565
    .local v23, "policies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    if-eqz v23, :cond_12e

    .line 567
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    const/4 v2, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/dirEncryption/SDCardEncryptionPolicies;->writeToParcel(Landroid/os/Parcel;I)V

    .line 570
    :cond_12e
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 573
    .end local v23    # "policies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :sswitch_131
    const-string v2, "IDirEncryptService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IDirEncryptService$Stub;->unmountSDCardByAdmin()V

    .line 575
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 584
    :sswitch_141
    const-string v2, "IDirEncryptService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    const/4 v10, 0x0

    .line 590
    .local v10, "emCallback":Landroid/dirEncryption/IDirEncryptionManagerCallBack;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-result-object v10

    .line 592
    sget-object v2, Landroid/os/storage/IDirEncryptService$Stub;->mDemCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    if-nez v2, :cond_18a

    .line 594
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_188

    const/4 v6, 0x1

    .local v6, "mountAndEncryptBool":Z
    :goto_169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Landroid/os/storage/IDirEncryptService$Stub;->mountEcryptfsStorage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILandroid/dirEncryption/IDirEncryptionManagerCallBack;)I

    move-result v20

    .line 604
    .restart local v20    # "_resultCode":I
    :goto_17b
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 594
    .end local v6    # "mountAndEncryptBool":Z
    .end local v20    # "_resultCode":I
    :cond_188
    const/4 v6, 0x0

    goto :goto_169

    .line 599
    :cond_18a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b4

    const/4 v6, 0x1

    .restart local v6    # "mountAndEncryptBool":Z
    :goto_19e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    sget-object v19, Landroid/os/storage/IDirEncryptService$Stub;->mDemCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v11, p0

    move v15, v6

    invoke-virtual/range {v11 .. v19}, Landroid/os/storage/IDirEncryptService$Stub;->mountEcryptfsStorage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILandroid/dirEncryption/IDirEncryptionManagerCallBack;)I

    move-result v20

    .restart local v20    # "_resultCode":I
    goto :goto_17b

    .end local v6    # "mountAndEncryptBool":Z
    .end local v20    # "_resultCode":I
    :cond_1b4
    const/4 v6, 0x0

    goto :goto_19e

    .line 622
    .end local v10    # "emCallback":Landroid/dirEncryption/IDirEncryptionManagerCallBack;
    :sswitch_1b6
    const-string v2, "IDirEncryptService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    const/4 v10, 0x0

    .line 627
    .restart local v10    # "emCallback":Landroid/dirEncryption/IDirEncryptionManagerCallBack;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-result-object v10

    .line 629
    sget-object v2, Landroid/os/storage/IDirEncryptService$Stub;->mDemCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    if-nez v2, :cond_1e9

    .line 631
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10, v3, v4}, Landroid/os/storage/IDirEncryptService$Stub;->unmountEcryptfsStorage(Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;II)I

    move-result v20

    .line 637
    .restart local v20    # "_resultCode":I
    :goto_1dc
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 639
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 634
    .end local v20    # "_resultCode":I
    :cond_1e9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/storage/IDirEncryptService$Stub;->mDemCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/storage/IDirEncryptService$Stub;->unmountEcryptfsStorage(Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;II)I

    move-result v20

    .restart local v20    # "_resultCode":I
    goto :goto_1dc

    .line 644
    .end local v10    # "emCallback":Landroid/dirEncryption/IDirEncryptionManagerCallBack;
    .end local v20    # "_resultCode":I
    :sswitch_1fe
    const-string v2, "IDirEncryptService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    const/4 v10, 0x0

    .line 649
    .restart local v10    # "emCallback":Landroid/dirEncryption/IDirEncryptionManagerCallBack;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-result-object v10

    .line 651
    sget-object v2, Landroid/os/storage/IDirEncryptService$Stub;->mDemCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    if-nez v2, :cond_236

    .line 653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v11, p0

    move-object v15, v10

    invoke-virtual/range {v11 .. v16}, Landroid/os/storage/IDirEncryptService$Stub;->changeEcryptfsPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;I)I

    move-result v20

    .line 659
    .restart local v20    # "_resultCode":I
    :goto_229
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 656
    .end local v20    # "_resultCode":I
    :cond_236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Landroid/os/storage/IDirEncryptService$Stub;->mDemCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v16}, Landroid/os/storage/IDirEncryptService$Stub;->changeEcryptfsPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;I)I

    move-result v20

    .restart local v20    # "_resultCode":I
    goto :goto_229

    .line 665
    .end local v10    # "emCallback":Landroid/dirEncryption/IDirEncryptionManagerCallBack;
    .end local v20    # "_resultCode":I
    :sswitch_24f
    const-string v2, "IDirEncryptService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    const/4 v10, 0x0

    .line 670
    .restart local v10    # "emCallback":Landroid/dirEncryption/IDirEncryptionManagerCallBack;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack$Stub;->asInterface(Landroid/os/IBinder;)Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-result-object v10

    .line 672
    sget-object v2, Landroid/os/storage/IDirEncryptService$Stub;->mDemCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    if-nez v2, :cond_27a

    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Landroid/os/storage/IDirEncryptService$Stub;->isPathMounted(Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;)I

    move-result v20

    .line 680
    .restart local v20    # "_resultCode":I
    :goto_26d
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 676
    .end local v20    # "_resultCode":I
    :cond_27a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/os/storage/IDirEncryptService$Stub;->mDemCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/os/storage/IDirEncryptService$Stub;->isPathMounted(Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;)I

    move-result v20

    .restart local v20    # "_resultCode":I
    goto :goto_26d

    .line 688
    .end local v10    # "emCallback":Landroid/dirEncryption/IDirEncryptionManagerCallBack;
    .end local v20    # "_resultCode":I
    :sswitch_287
    const-string v2, "IDirEncryptService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IDirEncryptService$Stub;->setNullSDCardPassword()I

    move-result v24

    .line 690
    .local v24, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 692
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 696
    .end local v24    # "result":I
    :sswitch_29f
    const-string v2, "IDirEncryptService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2bc

    const/16 v21, 0x1

    .local v21, "in":Z
    :goto_2af
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/storage/IDirEncryptService$Stub;->setNeedToCreateKey(Z)V

    .line 699
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 698
    .end local v21    # "in":Z
    :cond_2bc
    const/16 v21, 0x0

    goto :goto_2af

    .line 480
    nop

    :sswitch_data_2c0
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_30
        0x3 -> :sswitch_4f
        0x4 -> :sswitch_74
        0x5 -> :sswitch_8c
        0x6 -> :sswitch_aa
        0x7 -> :sswitch_c2
        0x8 -> :sswitch_da
        0x9 -> :sswitch_f2
        0xa -> :sswitch_110
        0xb -> :sswitch_131
        0xc -> :sswitch_141
        0xd -> :sswitch_1b6
        0xe -> :sswitch_1fe
        0xf -> :sswitch_24f
        0x29 -> :sswitch_287
        0x2a -> :sswitch_29f
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
