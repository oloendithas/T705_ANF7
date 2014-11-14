.class public Lcom/sec/android/hardware/SecHardwareInterface;
.super Ljava/lang/Object;
.source "SecHardwareInterface.java"


# static fields
.field public static final BROWSER:I = 0x4

.field public static final CALL:I = 0x1

.field public static final CAMERA:I = 0x6

.field private static final DAEMON_SOCKET:Ljava/lang/String; = "pps"

.field private static EPEN_SAVINGMODE_PATH:Ljava/lang/String; = null

.field private static EPEN_TYPE_PATH:Ljava/lang/String; = null

.field public static final HOTSPOT:I = 0x5

.field private static final MAX_CMD_LEN:I = 0x64

.field public static final MDNIE_BROSWER_MODE:I = 0x8

.field public static final MDNIE_CAMERA_MODE:I = 0x4

.field public static final MDNIE_EBOOK_MODE:I = 0x9

.field public static final MDNIE_EMAIL_MODE:I = 0xa

.field public static final MDNIE_GALLERY_MODE:I = 0x6

.field public static final MDNIE_UI_MODE:I = 0x0

.field public static final MDNIE_VIDEO_MODE:I = 0x1

.field public static final MDNIE_VT_MODE:I = 0x7

.field public static final MUSIC:I = 0x3

.field private static final READING_MODE_PATH:Ljava/lang/String; = "sys.dnle.readingmode"

.field private static final TAG:Ljava/lang/String; = "SecHardwareInterface"

.field public static final TORCH_BRIGHTNESS_MAX:I = 0x1

.field public static final TORCH_BRIGHTNESS_MIN:I = 0xe

.field public static final TORCH_BRIGHTNESS_OFF:I = 0x0

.field public static final TORCH_BRIGHTNESS_STANDARD:I = 0x1

.field public static final VIDEO:I = 0x2

.field private static in:Ljava/io/InputStream;

.field private static isCabcDaemonConnected:Z

.field private static out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 182
    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->in:Ljava/io/InputStream;

    .line 183
    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    .line 185
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/hardware/SecHardwareInterface;->isCabcDaemonConnected:Z

    .line 560
    const-string v0, "/sys/class/sec/sec_epen/epen_type"

    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_TYPE_PATH:Ljava/lang/String;

    .line 609
    const-string v0, "/sys/class/sec/sec_epen/epen_saving_mode"

    sput-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_SAVINGMODE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private static CabcDaemonConnect()V
    .registers 0

    .prologue
    .line 212
    return-void
.end method

.method private static CablDaemonControl(Ljava/lang/String;)V
    .registers 8
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 216
    sget-object v4, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    if-eqz v4, :cond_2f

    sget-object v4, Lcom/sec/android/hardware/SecHardwareInterface;->in:Ljava/io/InputStream;

    if-eqz v4, :cond_2f

    .line 221
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 222
    .local v3, "send_buf":[B
    sget-object v4, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V

    .line 223
    sget-object v4, Lcom/sec/android/hardware/SecHardwareInterface;->out:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 226
    const/16 v4, 0x64

    new-array v2, v4, [B

    .line 227
    .local v2, "recv_buf":[B
    sget-object v4, Lcom/sec/android/hardware/SecHardwareInterface;->in:Ljava/io/InputStream;

    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {v4, v2, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 228
    .local v1, "len":I
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v1}, Ljava/lang/String;-><init>([BII)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_29} :catch_2a

    .line 239
    .end local v1    # "len":I
    .end local v2    # "recv_buf":[B
    .end local v3    # "send_buf":[B
    :goto_29
    return-void

    .line 231
    :catch_2a
    move-exception v0

    .line 232
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_29

    .line 237
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2f
    sput-boolean v5, Lcom/sec/android/hardware/SecHardwareInterface;->isCabcDaemonConnected:Z

    goto :goto_29
.end method

.method private static IsCabcDaemonConnected()Z
    .registers 1

    .prologue
    .line 189
    sget-boolean v0, Lcom/sec/android/hardware/SecHardwareInterface;->isCabcDaemonConnected:Z

    return v0
.end method

.method private static _setmDNIeUIMode(I)Z
    .registers 2
    .param p0, "mode"    # I

    .prologue
    .line 295
    const-string v0, "/sys/class/mdnie/mdnie/scenario"

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static enableFastGloveMode(Z)Z
    .registers 2
    .param p0, "enable"    # Z

    .prologue
    .line 676
    const/4 v0, 0x1

    .line 696
    .local v0, "ret":Z
    return v0
.end method

.method public static enableGloveMode(Z)Z
    .registers 6
    .param p0, "enable"    # Z

    .prologue
    .line 644
    const/4 v2, 0x1

    .line 645
    .local v2, "ret":Z
    const/4 v0, 0x1

    .line 647
    .local v0, "con":Z
    if-nez p0, :cond_21

    .line 652
    :try_start_4
    const-string v3, "/sys/class/sec/sec_touchkey/glove_mode"

    const-string v4, "0"

    invoke-static {v3, v4}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_b} :catch_1c

    move-result v2

    .line 663
    :goto_c
    :try_start_c
    const-string v4, "/sys/class/sec/tsp/cmd"

    if-eqz p0, :cond_23

    const-string v3, "glove_mode,1"

    :goto_12
    invoke-static {v4, v3}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_15} :catch_26

    move-result v0

    .line 669
    :goto_16
    if-eqz v2, :cond_2b

    if-eqz v0, :cond_2b

    const/4 v2, 0x1

    .line 671
    :goto_1b
    return v2

    .line 653
    :catch_1c
    move-exception v1

    .line 655
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c

    .line 659
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_21
    const/4 v2, 0x1

    goto :goto_c

    .line 663
    :cond_23
    :try_start_23
    const-string v3, "glove_mode,0"
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_25} :catch_26

    goto :goto_12

    .line 664
    :catch_26
    move-exception v1

    .line 666
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_16

    .line 669
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_2b
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public static enableHandgripEvent(Z)Z
    .registers 2
    .param p0, "enable"    # Z

    .prologue
    .line 639
    const/4 v0, 0x0

    return v0
.end method

.method public static enableHoverEvent(Z)Z
    .registers 2
    .param p0, "enable"    # Z

    .prologue
    .line 627
    const/4 v0, 0x0

    return v0
.end method

.method public static enableISPFirmwareUpdate(Z)Z
    .registers 3
    .param p0, "enable"    # Z

    .prologue
    .line 701
    const-string v1, "/sys/class/camera/rear/rear_checkApp"

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    :goto_5
    invoke-static {v1, v0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static getEPenType()I
    .registers 11

    .prologue
    const/4 v7, -0x1

    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v6, -0x1

    .line 574
    .local v6, "type":I
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/FileInputStream;

    sget-object v10, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_TYPE_PATH:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_14} :catch_24
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_14} :catch_42
    .catchall {:try_start_3 .. :try_end_14} :catchall_51

    .line 581
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_1b} :catch_2d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1b} :catch_69
    .catchall {:try_start_14 .. :try_end_1b} :catchall_66

    move-result v6

    .line 594
    if-eqz v1, :cond_64

    .line 595
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_60

    .line 596
    .end local v1    # "br":Ljava/io/BufferedReader;
    :goto_21
    const/4 v0, 0x0

    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_22
    :goto_22
    move v7, v6

    .line 603
    :cond_23
    :goto_23
    return v7

    .line 576
    :catch_24
    move-exception v2

    .line 577
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_25
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_42
    .catchall {:try_start_25 .. :try_end_28} :catchall_51

    .line 594
    if-eqz v0, :cond_23

    .line 595
    :try_start_2a
    throw v0
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2b} :catch_5e

    .line 596
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_2b
    const/4 v0, 0x0

    goto :goto_23

    .line 582
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_2d
    move-exception v5

    .line 583
    .local v5, "ne":Ljava/lang/NumberFormatException;
    :try_start_2e
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 584
    if-eqz v1, :cond_6c

    .line 585
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_36} :catch_69
    .catchall {:try_start_2e .. :try_end_36} :catchall_66

    .line 586
    const/4 v0, 0x0

    .line 594
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_37
    if-eqz v0, :cond_23

    .line 595
    :try_start_39
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_2b

    .line 598
    :catch_3d
    move-exception v4

    .line 599
    .end local v5    # "ne":Ljava/lang/NumberFormatException;
    .local v4, "ie":Ljava/io/IOException;
    :goto_3e
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_23

    .line 590
    .end local v4    # "ie":Ljava/io/IOException;
    :catch_42
    move-exception v3

    .line 591
    .local v3, "ee":Ljava/io/IOException;
    :goto_43
    :try_start_43
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_51

    .line 594
    if-eqz v0, :cond_22

    .line 595
    :try_start_48
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_21

    .line 598
    :catch_4c
    move-exception v4

    .line 599
    .restart local v4    # "ie":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_22

    .line 593
    .end local v3    # "ee":Ljava/io/IOException;
    .end local v4    # "ie":Ljava/io/IOException;
    :catchall_51
    move-exception v7

    .line 594
    :goto_52
    if-eqz v0, :cond_58

    .line 595
    :try_start_54
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_59

    .line 596
    const/4 v0, 0x0

    .line 593
    :cond_58
    :goto_58
    throw v7

    .line 598
    :catch_59
    move-exception v4

    .line 599
    .restart local v4    # "ie":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_58

    .line 598
    .end local v4    # "ie":Ljava/io/IOException;
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_5e
    move-exception v4

    goto :goto_3e

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_60
    move-exception v4

    .line 599
    .restart local v4    # "ie":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v4    # "ie":Ljava/io/IOException;
    :cond_64
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_22

    .line 593
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_66
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_52

    .line 590
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_69
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_43

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "ne":Ljava/lang/NumberFormatException;
    :cond_6c
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_37
.end method

.method private static isReadingMode()Z
    .registers 2

    .prologue
    .line 302
    const-string/jumbo v1, "sys.dnle.readingmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "ret":Ljava/lang/String;
    if-eqz v0, :cond_13

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 304
    const/4 v1, 0x1

    .line 306
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public static setAmoledACL(Z)Z
    .registers 3
    .param p0, "enable"    # Z

    .prologue
    .line 255
    const-string v1, "/sys/class/lcd/panel/power_reduce"

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    :goto_5
    invoke-static {v1, v0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static setAmoledVideoGamma(Z)Z
    .registers 2
    .param p0, "videomode"    # Z

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public static setBatteryADC(Ljava/lang/String;Z)V
    .registers 10
    .param p0, "app"    # Ljava/lang/String;
    .param p1, "enable"    # Z

    .prologue
    .line 380
    const/4 v5, 0x0

    .line 385
    .local v5, "path":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/sys/class/power_supply/battery/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 388
    const/4 v3, 0x0

    .line 391
    .local v3, "out":Ljava/io/OutputStream;
    const/16 v6, 0x64

    :try_start_17
    new-array v0, v6, [B
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_19} :catch_37

    .line 394
    .local v0, "buffer":[B
    :try_start_19
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_23} :catch_32
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_23} :catch_37

    .line 400
    .end local v3    # "out":Ljava/io/OutputStream;
    .local v4, "out":Ljava/io/OutputStream;
    if-eqz p1, :cond_44

    .line 401
    const/4 v6, 0x0

    const/16 v7, 0x31

    :try_start_28
    aput-byte v7, v0, v6

    .line 405
    :goto_2a
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    .line 406
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_30} :catch_4a

    move-object v3, v4

    .line 415
    .end local v0    # "buffer":[B
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :goto_31
    return-void

    .line 395
    .restart local v0    # "buffer":[B
    :catch_32
    move-exception v1

    .line 396
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_33
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_31

    .line 407
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_37
    move-exception v1

    .line 408
    .local v1, "e":Ljava/io/IOException;
    :goto_38
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 410
    :try_start_3b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_31

    .line 411
    :catch_3f
    move-exception v2

    .line 412
    .local v2, "err":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_31

    .line 403
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "err":Ljava/lang/Exception;
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "out":Ljava/io/OutputStream;
    :cond_44
    const/4 v6, 0x0

    const/16 v7, 0x30

    :try_start_47
    aput-byte v7, v0, v6
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_49} :catch_4a

    goto :goto_2a

    .line 407
    :catch_4a
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    goto :goto_38
.end method

.method public static setBatteryUse(IZ)V
    .registers 4
    .param p0, "module"    # I
    .param p1, "enable"    # Z

    .prologue
    .line 61
    packed-switch p0, :pswitch_data_30

    .line 86
    :goto_3
    return-void

    .line 63
    :pswitch_4
    :try_start_4
    const-string v1, "call"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_3

    .line 83
    :catch_a
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 66
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_f
    :try_start_f
    const-string/jumbo v1, "video"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_3

    .line 69
    :pswitch_16
    const-string/jumbo v1, "music"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_3

    .line 72
    :pswitch_1d
    const-string v1, "browser"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_3

    .line 75
    :pswitch_23
    const-string v1, "hotspot"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    goto :goto_3

    .line 78
    :pswitch_29
    const-string v1, "camera"

    invoke-static {v1, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2e} :catch_a

    goto :goto_3

    .line 61
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_4
        :pswitch_f
        :pswitch_16
        :pswitch_1d
        :pswitch_23
        :pswitch_29
    .end packed-switch
.end method

.method public static setEPenSavingmode(I)Z
    .registers 2
    .param p0, "enable"    # I

    .prologue
    .line 613
    sget-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_SAVINGMODE_PATH:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setEPenType(I)Z
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 564
    sget-object v0, Lcom/sec/android/hardware/SecHardwareInterface;->EPEN_TYPE_PATH:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setEpenHandType(I)V
    .registers 7
    .param p0, "handtype"    # I

    .prologue
    .line 532
    const-string v4, "/sys/class/sec/sec_epen/epen_hand"

    .line 533
    .local v4, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .line 539
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_d} :catch_19
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_1e

    .line 544
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    if-nez p0, :cond_2b

    .line 545
    const/16 v5, 0x30

    :try_start_11
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V

    .line 548
    :cond_14
    :goto_14
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_17} :catch_34

    move-object v2, v3

    .line 557
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :goto_18
    return-void

    .line 540
    :catch_19
    move-exception v0

    .line 541
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_18

    .line 549
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1e
    move-exception v0

    .line 550
    .local v0, "e":Ljava/io/IOException;
    :goto_1f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 552
    :try_start_22
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_18

    .line 553
    :catch_26
    move-exception v1

    .line 554
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_18

    .line 546
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :cond_2b
    const/4 v5, 0x1

    if-ne p0, v5, :cond_14

    .line 547
    const/16 v5, 0x31

    :try_start_30
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_14

    .line 549
    :catch_34
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_1f
.end method

.method public static setMaxCPUFreq(Ljava/lang/String;)V
    .registers 7
    .param p0, "max_freq"    # Ljava/lang/String;

    .prologue
    .line 424
    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    .line 425
    .local v4, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .line 431
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_d} :catch_19
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_1e

    .line 436
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_d
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 437
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_2b

    move-object v2, v3

    .line 446
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :goto_18
    return-void

    .line 432
    :catch_19
    move-exception v0

    .line 433
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_18

    .line 438
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1e
    move-exception v0

    .line 439
    .local v0, "e":Ljava/io/IOException;
    :goto_1f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 441
    :try_start_22
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_18

    .line 442
    :catch_26
    move-exception v1

    .line 443
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_18

    .line 438
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_2b
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_1f
.end method

.method public static setPlayVideoSpeed(Z)Z
    .registers 2
    .param p0, "enable"    # Z

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public static setPowerSaveFPS(Z)V
    .registers 1
    .param p0, "enable"    # Z

    .prologue
    .line 421
    return-void
.end method

.method private static setReadingMode(Z)V
    .registers 3
    .param p0, "enable"    # Z

    .prologue
    .line 311
    if-eqz p0, :cond_b

    .line 312
    const-string/jumbo v0, "sys.dnle.readingmode"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :goto_a
    return-void

    .line 314
    :cond_b
    const-string/jumbo v0, "sys.dnle.readingmode"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public static setTconUIMode(I)Z
    .registers 2
    .param p0, "mode"    # I

    .prologue
    .line 348
    const-string v0, "/sys/class/tcon/tcon/mode"

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setTorchLight(I)V
    .registers 9
    .param p0, "level"    # I

    .prologue
    .line 479
    const/4 v2, 0x0

    .line 481
    .local v2, "fw":Ljava/io/FileWriter;
    const-string v5, " "

    .line 485
    .local v5, "modelname":Ljava/lang/String;
    const-string v7, "GT-N7000"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_13

    const-string v7, "GT-I9220"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 487
    :cond_13
    const-string v6, "/sys/class/leds/leds-sec/brightness"

    .line 499
    .local v6, "path":Ljava/lang/String;
    :goto_15
    :try_start_15
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 500
    .local v1, "fl":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_22

    .line 501
    const-string v6, "/sys/class/camera/rear/rear_flash"

    .line 503
    :cond_22
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_27} :catch_92
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_27} :catch_6f
    .catchall {:try_start_15 .. :try_end_27} :catchall_7b

    .line 505
    .end local v2    # "fw":Ljava/io/FileWriter;
    .local v3, "fw":Ljava/io/FileWriter;
    if-lez p0, :cond_59

    const/16 v7, 0xf

    if-ge p0, v7, :cond_59

    .line 507
    :try_start_2d
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 508
    .local v4, "lLevel":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_34} :catch_5f
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_34} :catch_8f
    .catchall {:try_start_2d .. :try_end_34} :catchall_8c

    .line 521
    .end local v4    # "lLevel":Ljava/lang/String;
    :goto_34
    if-eqz v3, :cond_39

    .line 523
    :try_start_36
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_87

    :cond_39
    :goto_39
    move-object v2, v3

    .line 529
    .end local v1    # "fl":Ljava/io/File;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :cond_3a
    :goto_3a
    return-void

    .line 488
    .end local v6    # "path":Ljava/lang/String;
    :cond_3b
    const-string v7, "SHV-E160S"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_53

    const-string v7, "SHV-E160K"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_53

    const-string v7, "SHV-E160L"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 492
    :cond_53
    const-string v6, "/sys/class/ledflash/sec_ledflash/torch"

    .restart local v6    # "path":Ljava/lang/String;
    goto :goto_15

    .line 495
    .end local v6    # "path":Ljava/lang/String;
    :cond_56
    const-string v6, "/sys/class/camera/flash/rear_flash"

    .restart local v6    # "path":Ljava/lang/String;
    goto :goto_15

    .line 514
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fl":Ljava/io/File;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :cond_59
    :try_start_59
    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_59 .. :try_end_5e} :catch_5f
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5e} :catch_8f
    .catchall {:try_start_59 .. :try_end_5e} :catchall_8c

    goto :goto_34

    .line 516
    :catch_5f
    move-exception v0

    move-object v2, v3

    .line 517
    .end local v1    # "fl":Ljava/io/File;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :goto_61
    :try_start_61
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_7b

    .line 521
    if-eqz v2, :cond_3a

    .line 523
    :try_start_66
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_3a

    .line 524
    :catch_6a
    move-exception v0

    .line 525
    .local v0, "e":Ljava/io/IOException;
    :goto_6b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3a

    .line 518
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6f
    move-exception v0

    .line 519
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_70
    :try_start_70
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_7b

    .line 521
    if-eqz v2, :cond_3a

    .line 523
    :try_start_75
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_3a

    .line 524
    :catch_79
    move-exception v0

    goto :goto_6b

    .line 521
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_7b
    move-exception v7

    :goto_7c
    if-eqz v2, :cond_81

    .line 523
    :try_start_7e
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82

    .line 521
    :cond_81
    :goto_81
    throw v7

    .line 524
    :catch_82
    move-exception v0

    .line 525
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_81

    .line 524
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fl":Ljava/io/File;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catch_87
    move-exception v0

    .line 525
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_39

    .line 521
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_8c
    move-exception v7

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_7c

    .line 518
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catch_8f
    move-exception v0

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_70

    .line 516
    .end local v1    # "fl":Ljava/io/File;
    :catch_92
    move-exception v0

    goto :goto_61
.end method

.method public static setTorchLight(Z)V
    .registers 2
    .param p0, "enable"    # Z

    .prologue
    .line 456
    if-eqz p0, :cond_8

    .line 457
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 461
    :goto_7
    return-void

    .line 459
    :cond_8
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    goto :goto_7
.end method

.method public static setTouchJitterFilter(Z)Z
    .registers 2
    .param p0, "enable"    # Z

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public static setmDNIeColorBlind(Z[I)Z
    .registers 4
    .param p0, "enable"    # Z
    .param p1, "result"    # [I

    .prologue
    .line 355
    const-string v1, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p0, :cond_a

    const/4 v0, 0x2

    :goto_5
    invoke-static {v1, v0, p1}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite_CB(Ljava/lang/String;I[I)Z

    move-result v0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static setmDNIeNegative(Z)Z
    .registers 3
    .param p0, "enable"    # Z

    .prologue
    .line 338
    const-string v1, "/sys/class/mdnie/mdnie/accessibility"

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    :goto_5
    invoke-static {v1, v0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static setmDNIeOutDoor(Z)Z
    .registers 3
    .param p0, "enable"    # Z

    .prologue
    .line 329
    const-string v1, "/sys/class/mdnie/mdnie/outdoor"

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    :goto_5
    invoke-static {v1, v0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static setmDNIeReadingMode(I)Z
    .registers 2
    .param p0, "mode"    # I

    .prologue
    .line 277
    if-nez p0, :cond_b

    .line 278
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setReadingMode(Z)V

    .line 282
    :goto_6
    invoke-static {p0}, Lcom/sec/android/hardware/SecHardwareInterface;->_setmDNIeUIMode(I)Z

    move-result v0

    return v0

    .line 280
    :cond_b
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setReadingMode(Z)V

    goto :goto_6
.end method

.method public static setmDNIeUIMode(I)Z
    .registers 2
    .param p0, "mode"    # I

    .prologue
    .line 286
    invoke-static {}, Lcom/sec/android/hardware/SecHardwareInterface;->isReadingMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 287
    const/4 v0, 0x0

    .line 289
    :goto_7
    return v0

    :cond_8
    invoke-static {p0}, Lcom/sec/android/hardware/SecHardwareInterface;->_setmDNIeUIMode(I)Z

    move-result v0

    goto :goto_7
.end method

.method public static setmDNIeUserMode(I)Z
    .registers 2
    .param p0, "mode"    # I

    .prologue
    .line 321
    const-string v0, "/sys/class/mdnie/mdnie/mode"

    invoke-static {v0, p0}, Lcom/sec/android/hardware/SecHardwareInterface;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static sysfsWrite(Ljava/lang/String;I)Z
    .registers 8
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x0

    .line 98
    const/4 v2, 0x0

    .line 102
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_1d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_22

    .line 108
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_c
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 109
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1a} :catch_2f

    .line 120
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_1c
    return v4

    .line 103
    :catch_1d
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_1c

    .line 110
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_22
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/IOException;
    :goto_23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 113
    :try_start_26
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_1c

    .line 114
    :catch_2a
    move-exception v1

    .line 115
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1c

    .line 110
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_2f
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_23
.end method

.method private static sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 124
    const/4 v2, 0x0

    .line 128
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_19
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_1e

    .line 134
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 135
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_2b

    .line 146
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_18
    return v4

    .line 129
    :catch_19
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_18

    .line 136
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1e
    move-exception v0

    .line 137
    .local v0, "e":Ljava/io/IOException;
    :goto_1f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 139
    :try_start_22
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_18

    .line 140
    :catch_26
    move-exception v1

    .line 141
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_18

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_2b
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1f
.end method

.method private static sysfsWrite_CB(Ljava/lang/String;I[I)Z
    .registers 12
    .param p0, "sysfs"    # Ljava/lang/String;
    .param p1, "value"    # I
    .param p2, "result"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 151
    const/4 v3, 0x0

    .line 152
    .local v3, "out":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 154
    .local v2, "mParameter":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v6

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p2, v5

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x4

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x6

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x7

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x8

    aget v8, p2, v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    :try_start_ad
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b7
    .catch Ljava/io/FileNotFoundException; {:try_start_ad .. :try_end_b7} :catch_c3
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b7} :catch_c9

    .line 166
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_b7
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/OutputStream;->write([B)V

    .line 167
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_c1} :catch_d7

    move-object v3, v4

    .line 177
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :goto_c2
    return v5

    .line 161
    :catch_c3
    move-exception v0

    .line 162
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_c4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_c9

    move v5, v6

    .line 163
    goto :goto_c2

    .line 168
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_c9
    move-exception v0

    .line 169
    .local v0, "e":Ljava/io/IOException;
    :goto_ca
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 171
    :try_start_cd
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d0} :catch_d2

    :goto_d0
    move v5, v6

    .line 175
    goto :goto_c2

    .line 172
    :catch_d2
    move-exception v1

    .line 173
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d0

    .line 168
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_d7
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_ca
.end method
