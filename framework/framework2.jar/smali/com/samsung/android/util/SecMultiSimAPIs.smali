.class public Lcom/samsung/android/util/SecMultiSimAPIs;
.super Ljava/lang/Object;
.source "SecMultiSimAPIs.java"


# static fields
.field private static final EMULATE_SIM_TOGGLE_PATH:Ljava/lang/String; = "/data/simslot_count"

.field static final ENG_BUILD:Z

.field static final LOG_TAG:Ljava/lang/String; = "SecMultiSimAPIs"

.field public static final SIMSLOT1:I = 0x0

.field public static final SIMSLOT2:I = 0x1

.field public static final SIMSLOT3:I = 0x2

.field public static final SIMSLOT4:I = 0x3

.field public static final SIMSLOT5:I = 0x4

.field private static final mPhoneOnKey:[Ljava/lang/String;

.field private static mReadFromFile:Z

.field private static final mSimIconKey:[Ljava/lang/String;

.field private static final mSimNameKey:[Ljava/lang/String;

.field private static mSimSlotCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    const-string/jumbo v0, "ro.multisim.simslotcount"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/util/SecMultiSimAPIs;->mSimSlotCount:I

    .line 59
    sput-boolean v2, Lcom/samsung/android/util/SecMultiSimAPIs;->mReadFromFile:Z

    .line 62
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "select_name_1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "select_name_2"

    aput-object v1, v0, v3

    const-string/jumbo v1, "select_name_3"

    aput-object v1, v0, v4

    const-string/jumbo v1, "select_name_4"

    aput-object v1, v0, v5

    const-string/jumbo v1, "select_name_5"

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/util/SecMultiSimAPIs;->mSimNameKey:[Ljava/lang/String;

    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "select_icon_1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "select_icon_2"

    aput-object v1, v0, v3

    const-string/jumbo v1, "select_icon_3"

    aput-object v1, v0, v4

    const-string/jumbo v1, "select_icon_4"

    aput-object v1, v0, v5

    const-string/jumbo v1, "select_icon_5"

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/util/SecMultiSimAPIs;->mSimIconKey:[Ljava/lang/String;

    .line 68
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "phone1_on"

    aput-object v1, v0, v2

    const-string/jumbo v1, "phone2_on"

    aput-object v1, v0, v3

    const-string/jumbo v1, "phone3_on"

    aput-object v1, v0, v4

    const-string/jumbo v1, "phone4_on"

    aput-object v1, v0, v5

    const-string/jumbo v1, "phone5_on"

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/util/SecMultiSimAPIs;->mPhoneOnKey:[Ljava/lang/String;

    .line 81
    const-string v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/util/SecMultiSimAPIs;->ENG_BUILD:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;
    .registers 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "simSlot"    # I

    .prologue
    .line 297
    return-object p0
.end method

.method public static appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;
    .registers 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "simSlot"    # I

    .prologue
    .line 274
    return-object p0
.end method

.method private static appendSocketNameSimSlot(Ljava/lang/String;I)Ljava/lang/String;
    .registers 2
    .param p0, "socketName"    # Ljava/lang/String;
    .param p1, "simSlot"    # I

    .prologue
    .line 319
    return-object p0
.end method

.method private static getActivatedSimNum(Landroid/content/Context;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 186
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "simSlot":I
    :goto_2
    invoke-static {}, Lcom/samsung/android/util/SecMultiSimAPIs;->getSimSlotCount()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 187
    const-string/jumbo v3, "ril.ICC_TYPE"

    invoke-static {v2}, Lcom/samsung/android/util/SecMultiSimAPIs;->getLogicalSimSlot(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SecMultiSimAPIs;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "iccType":Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    invoke-static {p0, v2}, Lcom/samsung/android/util/SecMultiSimAPIs;->getIsSIMOn(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 189
    add-int/lit8 v0, v0, 0x1

    .line 186
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 193
    .end local v1    # "iccType":Ljava/lang/String;
    :cond_2c
    return v0
.end method

.method private static getDefaultSimSlot()I
    .registers 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public static getInsertedSimNum()I
    .registers 5

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "simSlot":I
    :goto_2
    invoke-static {}, Lcom/samsung/android/util/SecMultiSimAPIs;->getSimSlotCount()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 174
    const-string/jumbo v3, "ril.ICC_TYPE"

    invoke-static {v3, v2}, Lcom/samsung/android/util/SecMultiSimAPIs;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "iccType":Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 176
    add-int/lit8 v0, v0, 0x1

    .line 173
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 180
    .end local v1    # "iccType":Ljava/lang/String;
    :cond_22
    return v0
.end method

.method private static getIsSIMOn(Landroid/content/Context;I)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlot"    # I

    .prologue
    const/4 v1, 0x1

    .line 410
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/util/SecMultiSimAPIs;->mPhoneOnKey:[Ljava/lang/String;

    aget-object v3, v3, p1

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 411
    .local v0, "simActive":I
    if-ne v0, v1, :cond_11

    .line 414
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private static getLogicalSimSlot(I)I
    .registers 5
    .param p0, "simSlot"    # I

    .prologue
    .line 250
    if-ltz p0, :cond_8

    invoke-static {}, Lcom/samsung/android/util/SecMultiSimAPIs;->getSimSlotCount()I

    move-result v2

    if-lt p0, v2, :cond_a

    .line 251
    :cond_8
    const/4 v0, -0x1

    .line 259
    :cond_9
    :goto_9
    return v0

    .line 253
    :cond_a
    const-string/jumbo v2, "ril.MSIMM"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 254
    .local v1, "masterSim":I
    sub-int v0, p0, v1

    .line 255
    .local v0, "logicalSimSlot":I
    if-gez v0, :cond_9

    .line 256
    invoke-static {}, Lcom/samsung/android/util/SecMultiSimAPIs;->getSimSlotCount()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_9
.end method

.method private static getPhysicalSimSlot(I)I
    .registers 7
    .param p0, "simSlot"    # I

    .prologue
    .line 230
    if-ltz p0, :cond_8

    invoke-static {}, Lcom/samsung/android/util/SecMultiSimAPIs;->getSimSlotCount()I

    move-result v3

    if-lt p0, v3, :cond_a

    .line 231
    :cond_8
    const/4 v2, -0x1

    .line 246
    :cond_9
    :goto_9
    return v2

    .line 233
    :cond_a
    const-string/jumbo v3, "ril.MSIMM"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 234
    .local v1, "masterSim":I
    add-int v2, p0, v1

    .line 236
    .local v2, "physicalSimSlot":I
    invoke-static {}, Lcom/samsung/android/util/SecMultiSimAPIs;->getSimSlotCount()I

    move-result v3

    if-lt v2, v3, :cond_20

    .line 237
    invoke-static {}, Lcom/samsung/android/util/SecMultiSimAPIs;->getSimSlotCount()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_9

    .line 239
    :cond_20
    const-string/jumbo v3, "ril.ICC_TYPE"

    invoke-static {v3, p0}, Lcom/samsung/android/util/SecMultiSimAPIs;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "iccType":Ljava/lang/String;
    const-string v3, "SecMultiSimAPIs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPhysicalSimSlot() : simSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iccType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 242
    const/4 v2, -0x1

    goto :goto_9
.end method

.method public static getSimCardIcon(Landroid/content/Context;I)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlot"    # I

    .prologue
    .line 375
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/util/SecMultiSimAPIs;->mSimIconKey:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 377
    .local v0, "simIcon":I
    const-string v1, "SecMultiSimAPIs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimCardIcon ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SimSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    if-gez v0, :cond_35

    .line 379
    packed-switch p1, :pswitch_data_40

    .line 396
    const/4 v0, 0x0

    .line 401
    :cond_35
    :goto_35
    return v0

    .line 381
    :pswitch_36
    const/4 v0, 0x0

    .line 382
    goto :goto_35

    .line 384
    :pswitch_38
    const/4 v0, 0x1

    .line 385
    goto :goto_35

    .line 387
    :pswitch_3a
    const/4 v0, 0x2

    .line 388
    goto :goto_35

    .line 390
    :pswitch_3c
    const/4 v0, 0x3

    .line 391
    goto :goto_35

    .line 393
    :pswitch_3e
    const/4 v0, 0x4

    .line 394
    goto :goto_35

    .line 379
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_36
        :pswitch_38
        :pswitch_3a
        :pswitch_3c
        :pswitch_3e
    .end packed-switch
.end method

.method public static getSimCardName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlot"    # I

    .prologue
    .line 341
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/util/SecMultiSimAPIs;->mSimNameKey:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "simName":Ljava/lang/String;
    const-string v1, "SecMultiSimAPIs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimCardName ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SimSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    if-nez v0, :cond_35

    .line 345
    packed-switch p1, :pswitch_data_46

    .line 362
    const-string v0, "SIM 1"

    .line 367
    :cond_35
    :goto_35
    return-object v0

    .line 347
    :pswitch_36
    const-string v0, "SIM 1"

    .line 348
    goto :goto_35

    .line 350
    :pswitch_39
    const-string v0, "SIM 2"

    .line 351
    goto :goto_35

    .line 353
    :pswitch_3c
    const-string v0, "SIM 3"

    .line 354
    goto :goto_35

    .line 356
    :pswitch_3f
    const-string v0, "SIM 4"

    .line 357
    goto :goto_35

    .line 359
    :pswitch_42
    const-string v0, "SIM 5"

    .line 360
    goto :goto_35

    .line 345
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
    .end packed-switch
.end method

.method public static getSimSlotCount()I
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, "simslot_count":I
    sget-boolean v1, Lcom/samsung/android/util/SecMultiSimAPIs;->ENG_BUILD:Z

    if-nez v1, :cond_9

    .line 124
    sget v1, Lcom/samsung/android/util/SecMultiSimAPIs;->mSimSlotCount:I

    .line 135
    :goto_8
    return v1

    .line 126
    :cond_9
    sget-boolean v1, Lcom/samsung/android/util/SecMultiSimAPIs;->mReadFromFile:Z

    if-ne v1, v2, :cond_10

    .line 127
    sget v1, Lcom/samsung/android/util/SecMultiSimAPIs;->mSimSlotCount:I

    goto :goto_8

    .line 129
    :cond_10
    invoke-static {}, Lcom/samsung/android/util/SecMultiSimAPIs;->getSimSlotToggleFile()I

    move-result v0

    .line 130
    sput-boolean v2, Lcom/samsung/android/util/SecMultiSimAPIs;->mReadFromFile:Z

    .line 132
    const/4 v1, -0x1

    if-ne v0, v1, :cond_22

    .line 133
    const-string/jumbo v1, "ro.multisim.simslotcount"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/samsung/android/util/SecMultiSimAPIs;->mSimSlotCount:I

    .line 135
    :cond_22
    sget v1, Lcom/samsung/android/util/SecMultiSimAPIs;->mSimSlotCount:I

    goto :goto_8
.end method

.method private static getSimSlotGPIO()I
    .registers 1

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "simslotCount":I
    invoke-static {}, Lcom/samsung/android/util/SecMultiSimAPIs;->getSimSlotCount()I

    move-result v0

    .line 77
    return v0
.end method

.method private static getSimSlotToggleFile()I
    .registers 8

    .prologue
    const/4 v4, -0x1

    .line 85
    const/4 v3, 0x0

    .line 86
    .local v3, "simslotCount":I
    const/4 v0, 0x0

    .line 91
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/data/simslot_count"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_f} :catch_47
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_88
    .catchall {:try_start_3 .. :try_end_f} :catchall_c7

    .line 92
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    if-nez v1, :cond_18

    .line 105
    if-eqz v1, :cond_16

    .line 106
    :try_start_13
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_e9

    :cond_16
    move-object v0, v1

    .line 116
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_17
    :goto_17
    return v4

    .line 94
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :cond_18
    :try_start_18
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 95
    const-string v5, "SecMultiSimAPIs"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sim slot count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_3c} :catch_12e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_3c} :catch_12a
    .catchall {:try_start_18 .. :try_end_3c} :catchall_127

    .line 105
    if-eqz v1, :cond_41

    .line 106
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_109

    .line 114
    :cond_41
    sput v3, Lcom/samsung/android/util/SecMultiSimAPIs;->mSimSlotCount:I

    .line 116
    sget v4, Lcom/samsung/android/util/SecMultiSimAPIs;->mSimSlotCount:I

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_17

    .line 97
    :catch_47
    move-exception v2

    .line 98
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_48
    :try_start_48
    const-string v5, "SecMultiSimAPIs"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read FileNotFoundException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_48 .. :try_end_64} :catchall_c7

    .line 105
    if-eqz v0, :cond_17

    .line 106
    :try_start_66
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_17

    .line 108
    :catch_6a
    move-exception v2

    .line 109
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "SecMultiSimAPIs"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read buffer close IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_84
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 100
    .end local v2    # "e":Ljava/io/IOException;
    :catch_88
    move-exception v2

    .line 101
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_89
    :try_start_89
    const-string v5, "SecMultiSimAPIs"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catchall {:try_start_89 .. :try_end_a5} :catchall_c7

    .line 105
    if-eqz v0, :cond_17

    .line 106
    :try_start_a7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_ac

    goto/16 :goto_17

    .line 108
    :catch_ac
    move-exception v2

    .line 109
    const-string v5, "SecMultiSimAPIs"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read buffer close IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_84

    .line 104
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_c7
    move-exception v5

    .line 105
    :goto_c8
    if-eqz v0, :cond_cd

    .line 106
    :try_start_ca
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_ce

    .line 104
    :cond_cd
    throw v5

    .line 108
    :catch_ce
    move-exception v2

    .line 109
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v5, "SecMultiSimAPIs"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read buffer close IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_84

    .line 108
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_e9
    move-exception v2

    .line 109
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v5, "SecMultiSimAPIs"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read buffer close IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_106
    move-object v0, v1

    .line 110
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto/16 :goto_17

    .line 108
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_109
    move-exception v2

    .line 109
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v5, "SecMultiSimAPIs"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read buffer close IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_106

    .line 104
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_127
    move-exception v5

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_c8

    .line 100
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_12a
    move-exception v2

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto/16 :goto_89

    .line 97
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_12e
    move-exception v2

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto/16 :goto_48
.end method

.method private static getTelephonyManagerFromDataPrefer()Landroid/telephony/TelephonyManager;
    .registers 4

    .prologue
    .line 263
    const-string/jumbo v2, "persist.sys.dataprefer.simid"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 264
    .local v0, "dataPreferSimSlot":I
    invoke-static {v0}, Lcom/samsung/android/util/SecMultiSimAPIs;->getLogicalSimSlot(I)I

    move-result v1

    .line 265
    .local v1, "logicalSimSlot":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    .line 266
    const/4 v1, 0x1

    .line 269
    :cond_10
    invoke-static {v1}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v2

    return-object v2
.end method

.method private static isActivatedSimSlot(Landroid/content/Context;I)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlot"    # I

    .prologue
    const/4 v1, 0x0

    .line 209
    if-ltz p1, :cond_9

    invoke-static {}, Lcom/samsung/android/util/SecMultiSimAPIs;->getSimSlotCount()I

    move-result v2

    if-lt p1, v2, :cond_a

    .line 217
    :cond_9
    :goto_9
    return v1

    .line 212
    :cond_a
    const-string/jumbo v2, "ril.ICC_TYPE"

    invoke-static {p1}, Lcom/samsung/android/util/SecMultiSimAPIs;->getLogicalSimSlot(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SecMultiSimAPIs;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "iccType":Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {p0, p1}, Lcom/samsung/android/util/SecMultiSimAPIs;->getIsSIMOn(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 214
    const/4 v1, 0x1

    goto :goto_9
.end method

.method private static isInsertedSimSlot(I)Z
    .registers 5
    .param p0, "simSlot"    # I

    .prologue
    const/4 v1, 0x0

    .line 197
    if-ltz p0, :cond_9

    invoke-static {}, Lcom/samsung/android/util/SecMultiSimAPIs;->getSimSlotCount()I

    move-result v2

    if-lt p0, v2, :cond_a

    .line 205
    :cond_9
    :goto_9
    return v1

    .line 200
    :cond_a
    const-string/jumbo v2, "ril.ICC_TYPE"

    invoke-static {p0}, Lcom/samsung/android/util/SecMultiSimAPIs;->getLogicalSimSlot(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SecMultiSimAPIs;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "iccType":Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 202
    const/4 v1, 0x1

    goto :goto_9
.end method

.method public static isMultiSimSlot()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 150
    invoke-static {}, Lcom/samsung/android/util/SecMultiSimAPIs;->getSimSlotCount()I

    move-result v1

    if-le v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static isNoSIM()Z
    .registers 6

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "simSlotNum":I
    :goto_2
    invoke-static {}, Lcom/samsung/android/util/SecMultiSimAPIs;->getSimSlotCount()I

    move-result v3

    if-ge v2, v3, :cond_44

    .line 157
    const-string/jumbo v3, "ril.ICC_TYPE"

    invoke-static {v3, v2}, Lcom/samsung/android/util/SecMultiSimAPIs;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "iccType":Ljava/lang/String;
    const-string v3, "SecMultiSimAPIs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNoSIM() : simSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iccType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 160
    add-int/lit8 v0, v0, 0x1

    .line 156
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 163
    .end local v1    # "iccType":Ljava/lang/String;
    :cond_44
    invoke-static {}, Lcom/samsung/android/util/SecMultiSimAPIs;->getSimSlotCount()I

    move-result v3

    if-ne v0, v3, :cond_4c

    .line 164
    const/4 v3, 0x1

    .line 167
    :goto_4b
    return v3

    :cond_4c
    const/4 v3, 0x0

    goto :goto_4b
.end method

.method private static setIsSIMOn(Landroid/content/Context;IZ)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlot"    # I
    .param p2, "isOn"    # Z

    .prologue
    .line 418
    const-string v0, "SecMultiSimAPIs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM 1 change the set turned on or off = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Lcom/samsung/android/util/SecMultiSimAPIs;->mPhoneOnKey:[Ljava/lang/String;

    aget-object v2, v0, p1

    if-eqz p2, :cond_27

    const/4 v0, 0x1

    :goto_23
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 420
    return-void

    .line 419
    :cond_27
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private static setSimCardIcon(Landroid/content/Context;II)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlot"    # I
    .param p2, "icon"    # I

    .prologue
    .line 405
    const-string v0, "SecMultiSimAPIs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM Slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Icon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/util/SecMultiSimAPIs;->mSimIconKey:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 407
    return-void
.end method

.method private static setSimCardName(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlot"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/util/SecMultiSimAPIs;->mSimNameKey:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 372
    return-void
.end method


# virtual methods
.method public getDefaultSimForVoiceCalls()I
    .registers 3

    .prologue
    .line 146
    const-string/jumbo v0, "persist.radio.calldefault.simid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
