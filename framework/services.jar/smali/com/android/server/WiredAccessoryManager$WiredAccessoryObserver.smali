.class Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
.super Landroid/os/UEventObserver;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WiredAccessoryObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;,
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;,
        Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;
    }
.end annotation


# static fields
.field private static final BIT_HDMI_16_FORMAT:I = 0x10000

.field private static final BIT_HDMI_176_SAMPLERATE:I = 0x1000000

.field private static final BIT_HDMI_192_SAMPLERATE:I = 0x2000000

.field private static final BIT_HDMI_2:I = 0x2

.field private static final BIT_HDMI_20_FORMAT:I = 0x20000

.field private static final BIT_HDMI_24_FORMAT:I = 0x40000

.field private static final BIT_HDMI_32_SAMPLERATE:I = 0x80000

.field private static final BIT_HDMI_44_SAMPLERATE:I = 0x100000

.field private static final BIT_HDMI_48_SAMPLERATE:I = 0x200000

.field private static final BIT_HDMI_6:I = 0x20

.field private static final BIT_HDMI_88_SAMPLERATE:I = 0x400000

.field private static final BIT_HDMI_96_SAMPLERATE:I = 0x800000

.field private static final BIT_PCM_S16_LE:I = 0x1

.field private static final BIT_PCM_S24_3LE:I = 0x4

.field private static final BIT_PCM_S24_LE:I = 0x2

.field private static final BIT_PCM_S32_LE:I = 0x8

.field private static final CH_HDMI_AUDIO:Ljava/lang/String; = "ch_hdmi_audio"

.field private static final PCM_FORMAT_S16_LE:I = 0x0

.field private static final PCM_FORMAT_S24_3LE:I = 0x4

.field private static final PCM_FORMAT_S24_LE:I = 0x3

.field private static final PCM_FORMAT_S32_LE:I = 0x1

.field private static final SMART_DOCK_CONNECTED:Ljava/lang/String; = "10"

.field private static final USB_AUDIO_DEVICE_UEVENT:Ljava/lang/String; = "MAJOR=116"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler_usbAudio:Landroid/os/Handler;

.field private final mUEventInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUEventUsbAudioObserver:Landroid/os/UEventObserver;

.field mVUsbAudioInfo:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;",
            ">;"
        }
    .end annotation
.end field

.field private saveCHInfo:I

.field final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager;)V
    .locals 1

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 375
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->saveCHInfo:I

    .line 495
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mVUsbAudioInfo:Ljava/util/Vector;

    .line 621
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$1;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;)V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventUsbAudioObserver:Landroid/os/UEventObserver;

    .line 913
    new-instance v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$2;

    invoke-direct {v0, p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$2;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;)V

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mHandler_usbAudio:Landroid/os/Handler;

    .line 499
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->makeObservedUEventList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    .line 500
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
    .param p1, "x1"    # Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->sendUSBAudioIntent(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;IZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 351
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getAccInfo(IZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
    .param p1, "x1"    # Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->update_usbaudio(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V

    return-void
.end method

.method private getAccInfo(IZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;
    .locals 20
    .param p1, "state"    # I
    .param p2, "isPlayback"    # Z
    .param p3, "cardNumber"    # Ljava/lang/String;
    .param p4, "deviceNumber"    # Ljava/lang/String;

    .prologue
    .line 687
    const/4 v15, 0x0

    .line 688
    .local v15, "nChannels":I
    const/16 v17, 0x0

    .line 689
    .local v17, "nSamplingRate2":I
    const/16 v18, 0x0

    .line 690
    .local v18, "nSamplingRate6":I
    const/4 v12, 0x0

    .line 691
    .local v12, "nSamplingRate24":I
    const/16 v16, 0x0

    .line 692
    .local v16, "nMaxSupportRate24":I
    const/4 v11, 0x0

    .line 693
    .local v11, "nSupportedFormat":I
    const/4 v9, 0x0

    .line 694
    .local v9, "isSmartdock":Z
    new-instance v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Lcom/android/server/WiredAccessoryManager$1;)V

    .line 695
    .local v2, "usbAudioData":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/asound/card"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/stream"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 697
    .local v19, "streamPath":Ljava/lang/String;
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_12

    .line 698
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->parseAccInfo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_11

    .line 699
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mVUsbAudioInfo:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->trimToSize()V

    .line 700
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mVUsbAudioInfo:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v14, v3, :cond_11

    .line 701
    new-instance v13, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Lcom/android/server/WiredAccessoryManager$1;)V

    .line 702
    .local v13, "audioInfo":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mVUsbAudioInfo:Ljava/util/Vector;

    invoke-virtual {v3, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "audioInfo":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;
    check-cast v13, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;

    .line 703
    .restart local v13    # "audioInfo":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->isPlayback:Z
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1100(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Z

    move-result v3

    move/from16 v0, p2

    if-ne v3, v0, :cond_5

    .line 719
    const-string v3, "S16_LE"

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "S24_3LE"

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "S24_LE"

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "S32_LE"

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 721
    :cond_0
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1300(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 722
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1300(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)I

    move-result v3

    or-int/2addr v15, v3

    .line 723
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1400(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getSamplingRate(Ljava/lang/String;I)I

    move-result v17

    .line 738
    :cond_1
    :goto_1
    const-string v3, "S16_LE"

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 739
    or-int/lit8 v11, v11, 0x1

    .line 760
    :cond_2
    :goto_2
    const-string v3, "S24_LE"

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "S24_3LE"

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "S32_LE"

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 761
    :cond_3
    const v3, 0x2ee00

    if-le v12, v3, :cond_f

    .line 762
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sample rate limit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    if-eqz v16, :cond_e

    .line 764
    move/from16 v12, v16

    .line 779
    :cond_4
    :goto_3
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "####################################################"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### audioInfo.channels : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1300(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### audioInfo.format   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### 2CH SamplingRate   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### 6CH SamplingRate   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### 24bit SamplingRate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "####################################################"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 724
    :cond_6
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1300(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 725
    or-int/lit8 v15, v15, 0x2

    .line 726
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1400(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getSamplingRate(Ljava/lang/String;I)I

    move-result v17

    .line 727
    const v3, 0xbb80

    move/from16 v0, v17

    if-le v0, v3, :cond_1

    .line 728
    const v17, 0xbb80

    goto/16 :goto_1

    .line 730
    :cond_7
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1300(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 731
    or-int/lit8 v15, v15, 0x20

    .line 732
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1400(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getSamplingRate(Ljava/lang/String;I)I

    move-result v18

    .line 733
    const v3, 0xbb80

    move/from16 v0, v18

    if-le v0, v3, :cond_1

    .line 734
    const v18, 0xbb80

    goto/16 :goto_1

    .line 740
    :cond_8
    const-string v3, "S24_LE"

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 741
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1300(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    .line 742
    or-int/lit8 v15, v15, 0x2

    .line 743
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1400(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getSamplingRate(Ljava/lang/String;I)I

    move-result v12

    .line 745
    :cond_9
    or-int/lit8 v11, v11, 0x2

    goto/16 :goto_2

    .line 746
    :cond_a
    const-string v3, "S24_3LE"

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 747
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1300(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b

    .line 748
    or-int/lit8 v15, v15, 0x2

    .line 749
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1400(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getSamplingRate(Ljava/lang/String;I)I

    move-result v12

    .line 751
    :cond_b
    or-int/lit8 v11, v11, 0x4

    goto/16 :goto_2

    .line 752
    :cond_c
    const-string v3, "S32_LE"

    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1200(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 753
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1300(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    .line 754
    or-int/lit8 v15, v15, 0x2

    .line 755
    # getter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1400(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getSamplingRate(Ljava/lang/String;I)I

    move-result v12

    .line 757
    :cond_d
    or-int/lit8 v11, v11, 0x8

    goto/16 :goto_2

    .line 766
    :cond_e
    const v12, 0xbb80

    goto/16 :goto_3

    .line 768
    :cond_f
    const/16 v3, 0x1f40

    if-ge v12, v3, :cond_10

    .line 769
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sample rate limit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to 48K"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const v12, 0xbb80

    goto/16 :goto_3

    .line 772
    :cond_10
    move/from16 v0, v16

    if-le v12, v0, :cond_4

    .line 773
    move/from16 v16, v12

    goto/16 :goto_3

    .line 791
    .end local v13    # "audioInfo":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;
    .end local v14    # "i":I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->isSmartDockConnected()Z

    move-result v9

    .line 794
    :cond_12
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v3, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v10, p2

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->setUsbAudioData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZII)V

    .line 796
    return-object v2
.end method

.method private getFactoryMode()Z
    .locals 5

    .prologue
    .line 999
    const/4 v1, 0x0

    .line 1001
    .local v1, "userMode":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/FactoryApp/factorymode"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1006
    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1007
    const/4 v2, 0x0

    .line 1010
    :goto_1
    return v2

    .line 1002
    :catch_0
    move-exception v0

    .line 1003
    .local v0, "e1":Ljava/io/IOException;
    const-string v1, "OFF"

    .line 1004
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cannot open file : /efs/FactoryApp/factorymode "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1009
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_0
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Current mode is Factorymode, So Popup UI will not be apear"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private getSamplingRate(Ljava/lang/String;I)I
    .locals 9
    .param p1, "rates"    # Ljava/lang/String;
    .param p2, "format"    # I

    .prologue
    .line 812
    invoke-direct {p0, p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->removeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 813
    .local v1, "ratesOnlyDigit":Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v6, " "

    invoke-direct {v3, v1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    .local v3, "stRates":Ljava/util/StringTokenizer;
    const/4 v2, 0x0

    .line 815
    .local v2, "samplingRate":I
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 816
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 817
    .local v5, "tempString":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 818
    const/4 v4, 0x0

    .line 820
    .local v4, "supportedSamplingRate":I
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 821
    const/4 v6, 0x1

    if-ne p2, v6, :cond_1

    const v6, 0xbb80

    if-le v4, v6, :cond_1

    if-eqz v2, :cond_1

    .line 822
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "not supported SamplingRate for 16 bit : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 826
    :catch_0
    move-exception v0

    .line 827
    .local v0, "e":Ljava/lang/NumberFormatException;
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Variable SamplingRate : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", so max rate setting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const v2, 0xbb80

    goto :goto_0

    .line 823
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    if-ge v2, v4, :cond_0

    .line 824
    move v2, v4

    goto :goto_0

    .line 832
    .end local v4    # "supportedSamplingRate":I
    .end local v5    # "tempString":Ljava/lang/String;
    :cond_2
    return v2
.end method

.method private isFactorySim()Z
    .locals 5

    .prologue
    .line 1014
    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1015
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    const-string v0, "999999999999999"

    .line 1016
    .local v0, "IMSI":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 1017
    .local v1, "imsi":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "999999999999999"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1018
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Factory SIM is used now, So Popup UI will not be apear"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    const/4 v3, 0x1

    .line 1021
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private makeObservedUEventList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/16 v6, 0x10

    const/4 v5, 0x0

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 557
    .local v0, "retVal":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;>;"
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z
    invoke-static {v2}, Lcom/android/server/WiredAccessoryManager;->access$600(Lcom/android/server/WiredAccessoryManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 558
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string v2, "h2w"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;II)V

    .line 559
    .local v1, "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 560
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    .end local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_0
    :goto_0
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    const-string/jumbo v2, "usb_audio"

    invoke-direct {v1, p0, v2, v7, v8}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;II)V

    .line 568
    .restart local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 569
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    :goto_1
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .end local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const-string v2, "extcon/usb_audio_ext"

    invoke-direct {v1, p0, v2, v7, v8}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;II)V

    .line 576
    .restart local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 577
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    :goto_2
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .end local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const-string v2, "ch_hdmi_audio"

    invoke-direct {v1, p0, v2, v6, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;II)V

    .line 592
    .restart local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 593
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    :goto_3
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .end local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const-string v2, "hotshoe_mic"

    const/16 v3, 0x20

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;II)V

    .line 611
    .restart local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 612
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    :goto_4
    return-object v0

    .line 562
    :cond_1
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "This kernel does not have wired headset support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 571
    :cond_2
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "This kernel does not have usb audio support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 579
    :cond_3
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "This kernel does not have usb external audio support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 596
    :cond_4
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .end local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const-string v2, "hdmi_audio"

    invoke-direct {v1, p0, v2, v6, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;II)V

    .line 597
    .restart local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 598
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 600
    :cond_5
    new-instance v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .end local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const-string v2, "hdmi"

    invoke-direct {v1, p0, v2, v6, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;II)V

    .line 601
    .restart local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->checkSwitchExists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 602
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 604
    :cond_6
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "This kernel does not have HDMI audio support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 614
    :cond_7
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "This kernel does not have ext mic support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private parseAccInfo(Ljava/lang/String;)I
    .locals 21
    .param p1, "streamPath"    # Ljava/lang/String;

    .prologue
    .line 837
    const/4 v4, 0x0

    .line 838
    .local v4, "f":Ljava/io/File;
    const/4 v9, 0x0

    .line 839
    .local v9, "in":Ljava/io/BufferedReader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mVUsbAudioInfo:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->clear()V

    .line 840
    const/4 v13, 0x1

    .line 841
    .local v13, "nReturn":I
    const/4 v12, 0x0

    .line 844
    .local v12, "mIsCapture":Z
    :try_start_0
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 845
    .end local v4    # "f":Ljava/io/File;
    .local v5, "f":Ljava/io/File;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_1

    .line 846
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "the "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is not exist"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 847
    const/16 v18, 0x0

    .line 895
    if-eqz v5, :cond_d

    const/4 v4, 0x0

    .line 896
    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    :goto_0
    if-eqz v9, :cond_0

    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 901
    :cond_0
    :goto_1
    return v18

    .line 849
    .end local v4    # "f":Ljava/io/File;
    .restart local v5    # "f":Ljava/io/File;
    :cond_1
    :try_start_3
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/FileReader;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 850
    .end local v9    # "in":Ljava/io/BufferedReader;
    .local v10, "in":Ljava/io/BufferedReader;
    :try_start_4
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v18

    const-string v19, "####################################################"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_2
    :goto_2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .local v17, "str":Ljava/lang/String;
    if-eqz v17, :cond_a

    .line 852
    new-instance v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;-><init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Lcom/android/server/WiredAccessoryManager$1;)V

    .line 853
    .local v2, "audioInfo":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "### INFO : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    if-eqz v12, :cond_7

    .line 856
    const/16 v18, 0x0

    move/from16 v0, v18

    # setter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->isPlayback:Z
    invoke-static {v2, v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1102(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;Z)Z

    .line 860
    :goto_3
    const-string v18, "Capture:"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 861
    const/4 v12, 0x1

    .line 863
    :cond_3
    new-instance v14, Ljava/util/StringTokenizer;

    const-string v18, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    .local v14, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 865
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 866
    .local v6, "flag":Ljava/lang/String;
    const-string v18, "Format"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 867
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    # setter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->format:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1202(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 868
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 869
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "### INFO : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    new-instance v15, Ljava/util/StringTokenizer;

    const-string v18, ":"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    .local v15, "stChannel":Ljava/util/StringTokenizer;
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 872
    .local v7, "flagChannel":Ljava/lang/String;
    const-string v18, "Channels"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 873
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    # setter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->channels:I
    invoke-static {v2, v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1302(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;I)I

    .line 874
    :cond_4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 875
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "### INFO : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    new-instance v16, Ljava/util/StringTokenizer;

    const-string v18, ":"

    invoke-direct/range {v16 .. v18}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    .local v16, "stRates":Ljava/util/StringTokenizer;
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 878
    .local v8, "flagRates":Ljava/lang/String;
    const-string v18, "Rates"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 879
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    # setter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->rates:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1402(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mVUsbAudioInfo:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 890
    .end local v2    # "audioInfo":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;
    .end local v6    # "flag":Ljava/lang/String;
    .end local v7    # "flagChannel":Ljava/lang/String;
    .end local v8    # "flagRates":Ljava/lang/String;
    .end local v14    # "st":Ljava/util/StringTokenizer;
    .end local v15    # "stChannel":Ljava/util/StringTokenizer;
    .end local v16    # "stRates":Ljava/util/StringTokenizer;
    .end local v17    # "str":Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v9, v10

    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 891
    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    .local v11, "io":Ljava/io/IOException;
    :goto_4
    :try_start_5
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "cannot create file : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 892
    const/4 v13, 0x0

    .line 895
    if-eqz v4, :cond_5

    const/4 v4, 0x0

    .line 896
    :cond_5
    if-eqz v9, :cond_6

    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .end local v11    # "io":Ljava/io/IOException;
    :cond_6
    :goto_5
    move/from16 v18, v13

    .line 901
    goto/16 :goto_1

    .line 858
    .end local v4    # "f":Ljava/io/File;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "audioInfo":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "str":Ljava/lang/String;
    :cond_7
    const/16 v18, 0x1

    :try_start_7
    move/from16 v0, v18

    # setter for: Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->isPlayback:Z
    invoke-static {v2, v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;->access$1102(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;Z)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    .line 894
    .end local v2    # "audioInfo":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$PureUsbAudioInfo;
    .end local v17    # "str":Ljava/lang/String;
    :catchall_0
    move-exception v18

    move-object v9, v10

    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 895
    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    :goto_6
    if-eqz v4, :cond_8

    const/4 v4, 0x0

    .line 896
    :cond_8
    if-eqz v9, :cond_9

    :try_start_8
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 894
    :cond_9
    :goto_7
    throw v18

    .line 889
    .end local v4    # "f":Ljava/io/File;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "str":Ljava/lang/String;
    :cond_a
    :try_start_9
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v18

    const-string v19, "####################################################"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 895
    if-eqz v5, :cond_c

    const/4 v4, 0x0

    .line 896
    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    :goto_8
    if-eqz v10, :cond_b

    :try_start_a
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_b
    :goto_9
    move-object v9, v10

    .line 900
    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    goto :goto_5

    .line 897
    .end local v17    # "str":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 898
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 897
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v11    # "io":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 898
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 897
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v11    # "io":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 898
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 897
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "str":Ljava/lang/String;
    :catch_4
    move-exception v3

    .line 898
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 894
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v17    # "str":Ljava/lang/String;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v18

    goto :goto_6

    .end local v4    # "f":Ljava/io/File;
    .restart local v5    # "f":Ljava/io/File;
    :catchall_2
    move-exception v18

    move-object v4, v5

    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    goto :goto_6

    .line 890
    :catch_5
    move-exception v11

    goto :goto_4

    .end local v4    # "f":Ljava/io/File;
    .restart local v5    # "f":Ljava/io/File;
    :catch_6
    move-exception v11

    move-object v4, v5

    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    goto :goto_4

    .end local v4    # "f":Ljava/io/File;
    .end local v9    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "str":Ljava/lang/String;
    :cond_c
    move-object v4, v5

    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    goto :goto_8

    .end local v4    # "f":Ljava/io/File;
    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v17    # "str":Ljava/lang/String;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v9    # "in":Ljava/io/BufferedReader;
    :cond_d
    move-object v4, v5

    .end local v5    # "f":Ljava/io/File;
    .restart local v4    # "f":Ljava/io/File;
    goto/16 :goto_0
.end method

.method private parseHdmiInfo(ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "state"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/high16 v9, 0x40000

    const/4 v4, 0x1

    const/high16 v8, 0x200000

    const/high16 v7, 0x100000

    const/high16 v6, 0x80000

    .line 1222
    and-int/lit16 v0, p1, 0xff

    .line 1224
    .local v0, "ch_info":I
    const/high16 v5, 0x70000

    and-int v1, p1, v5

    .line 1225
    .local v1, "format_info":I
    const/high16 v5, 0x3f80000

    and-int v3, p1, v5

    .line 1227
    .local v3, "sampleRate_info":I
    const/4 v5, -0x1

    if-ne p1, v5, :cond_0

    const/4 v2, 0x0

    .line 1228
    .local v2, "hdmiState":I
    :goto_0
    move p1, v2

    .line 1230
    if-nez v0, :cond_1

    const-string v4, "NONE"

    .line 1278
    :goto_1
    return-object v4

    .end local v2    # "hdmiState":I
    :cond_0
    move v2, v4

    .line 1227
    goto :goto_0

    .line 1232
    .restart local v2    # "hdmiState":I
    :cond_1
    if-ne p1, v4, :cond_5

    .line 1233
    iput v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->saveCHInfo:I

    .line 1237
    :cond_2
    :goto_2
    and-int v4, v1, v9

    if-ne v4, v9, :cond_6

    .line 1238
    const/16 v1, 0x28

    .line 1242
    :goto_3
    const/high16 v4, 0x2000000

    and-int/2addr v4, v3

    const/high16 v5, 0x2000000

    if-ne v4, v5, :cond_7

    .line 1243
    const v3, 0x2ee00

    .line 1262
    :goto_4
    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    .line 1263
    const v4, 0xbb80

    if-le v3, v4, :cond_3

    .line 1264
    and-int v4, v3, v8

    if-ne v4, v8, :cond_e

    .line 1265
    const v3, 0xbb80

    .line 1274
    :cond_3
    :goto_5
    invoke-direct {p0, p1, v0, v1, v3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->sendIntentToPopupUI(IIII)I

    move-result v0

    .line 1275
    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    .line 1276
    const/16 v1, 0x10

    .line 1278
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1234
    :cond_5
    if-nez p1, :cond_2

    .line 1235
    iget v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->saveCHInfo:I

    goto :goto_2

    .line 1240
    :cond_6
    const/16 v1, 0x10

    goto :goto_3

    .line 1244
    :cond_7
    const/high16 v4, 0x1000000

    and-int/2addr v4, v3

    const/high16 v5, 0x1000000

    if-ne v4, v5, :cond_8

    .line 1245
    const v3, 0x2b110

    goto :goto_4

    .line 1246
    :cond_8
    const/high16 v4, 0x800000

    and-int/2addr v4, v3

    const/high16 v5, 0x800000

    if-ne v4, v5, :cond_9

    .line 1247
    const v3, 0x17700

    goto :goto_4

    .line 1248
    :cond_9
    const/high16 v4, 0x400000

    and-int/2addr v4, v3

    const/high16 v5, 0x400000

    if-ne v4, v5, :cond_a

    .line 1249
    const v3, 0x15888

    goto :goto_4

    .line 1250
    :cond_a
    and-int v4, v3, v8

    if-ne v4, v8, :cond_b

    .line 1251
    const v3, 0xbb80

    goto :goto_4

    .line 1252
    :cond_b
    and-int v4, v3, v7

    if-ne v4, v7, :cond_c

    .line 1253
    const v3, 0xac44

    goto :goto_4

    .line 1254
    :cond_c
    and-int v4, v3, v6

    if-ne v4, v6, :cond_d

    .line 1255
    const/16 v3, 0x7d00

    goto/16 :goto_4

    .line 1257
    :cond_d
    const v3, 0xbb80

    goto/16 :goto_4

    .line 1266
    :cond_e
    and-int v4, v3, v7

    if-ne v4, v7, :cond_f

    .line 1267
    const v3, 0xac44

    goto/16 :goto_5

    .line 1268
    :cond_f
    and-int v4, v3, v6

    if-ne v4, v6, :cond_10

    .line 1269
    const/16 v3, 0x7d00

    goto/16 :goto_5

    .line 1271
    :cond_10
    const v3, 0xbb80

    goto/16 :goto_5
.end method

.method private removeChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 800
    if-nez p1, :cond_0

    const-string v2, ""

    .line 807
    :goto_0
    return-object v2

    .line 801
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 802
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 803
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    .line 804
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 802
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 807
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private final declared-synchronized sendIntentToPopupUI(IIII)I
    .locals 7
    .param p1, "hdmiState"    # I
    .param p2, "ch_info"    # I
    .param p3, "format_info"    # I
    .param p4, "sampleRate_info"    # I

    .prologue
    const/16 v6, 0x20

    const/4 v5, -0x1

    .line 948
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hdmi_audio_output"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/server/WiredAccessoryManager;->mHdmiSettingValue:I
    invoke-static {v1, v2}, Lcom/android/server/WiredAccessoryManager;->access$1602(Lcom/android/server/WiredAccessoryManager;I)I

    .line 952
    and-int/lit8 v1, p2, 0x20

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mHdmiSettingValue:I
    invoke-static {v1}, Lcom/android/server/WiredAccessoryManager;->access$1600(Lcom/android/server/WiredAccessoryManager;)I

    move-result v1

    if-ne v1, v5, :cond_1

    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getFactoryMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->isFactorySim()Z

    move-result v1

    if-nez v1, :cond_1

    .line 954
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent BroadCasting : android.intent.action.ACTION_HDMI_AUDIO_CH_POPUP(state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", channels:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " format_info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sampleRate_info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    if-eqz p1, :cond_0

    .line 957
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 958
    .local v0, "intentToPopup":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 959
    const-string v1, "com.sec.android.app.popupuireceiver"

    const-string v2, "com.sec.android.app.popupuireceiver.popupAudio"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 960
    const-string v1, "AudioState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 961
    const-string v1, "Audiochannels"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 962
    const-string v1, "AudioFormat"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 963
    const-string v1, "AudioSampleRate"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 964
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 972
    :goto_0
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/WiredAccessoryManager;->IntentToPopupUI:Z
    invoke-static {v1, v2}, Lcom/android/server/WiredAccessoryManager;->access$1702(Lcom/android/server/WiredAccessoryManager;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 995
    .end local v0    # "intentToPopup":Landroid/content/Intent;
    :goto_1
    monitor-exit p0

    return p2

    .line 966
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_HDMI_AUDIO_CH_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 967
    .restart local v0    # "intentToPopup":Landroid/content/Intent;
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 968
    const-string v1, "channels"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 970
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 948
    .end local v0    # "intentToPopup":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 975
    :cond_1
    and-int/lit8 v1, p2, 0x20

    if-ne v1, v6, :cond_2

    :try_start_2
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mHdmiSettingValue:I
    invoke-static {v1}, Lcom/android/server/WiredAccessoryManager;->access$1600(Lcom/android/server/WiredAccessoryManager;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 979
    :cond_2
    :goto_2
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "not show POPUP UI"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/WiredAccessoryManager;->IntentToPopupUI:Z
    invoke-static {v1, v2}, Lcom/android/server/WiredAccessoryManager;->access$1702(Lcom/android/server/WiredAccessoryManager;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 977
    :cond_3
    const/4 p2, 0x2

    goto :goto_2
.end method

.method private final sendUSBAudioIntent(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V
    .locals 6
    .param p1, "usbAudioData"    # Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 922
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 924
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 925
    const-string/jumbo v1, "state"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 926
    const-string v1, "card"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getCardNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 927
    const-string v1, "device"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getDeviceNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 928
    const-string v1, "channels"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getChannels()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 929
    const-string v1, "samplingRate2"

    invoke-virtual {p1, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getSamplingRate(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 930
    const-string v1, "samplingRate6"

    invoke-virtual {p1, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getSamplingRate(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 931
    const-string/jumbo v1, "usb_headset"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 932
    const-string v1, "issmartdock"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getIsSmartdock()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 933
    const-string v1, "hostDevice"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 934
    const-string v1, "isplayback"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getIsPlayback()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 935
    const-string v1, "24format"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->get24Format()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 936
    const-string/jumbo v1, "supportedformat"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getSupportedPCMFormat()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 937
    const-string v1, "samplingRate24"

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getSamplingRate24()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 939
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 940
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " channels:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getChannels()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " samplingRate2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getSamplingRate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " samplingRate6:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getSamplingRate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " issmartdock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getIsSmartdock()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isplayback:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getIsPlayback()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " format:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->get24Format()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " supporedformat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getSupportedPCMFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " samplingRate24="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;->getSamplingRate24()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    return-void
.end method

.method private updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "devPath"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "state"    # I

    .prologue
    .line 1197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1198
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 1199
    .local v1, "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1201
    const-string v2, "ch_hdmi_audio"

    invoke-virtual {v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1202
    invoke-direct {p0, p3, p2}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->parseHdmiInfo(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1203
    const-string v2, "NONE"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1213
    .end local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_0
    :goto_1
    return-void

    .line 1206
    .restart local v1    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_1
    const/4 v2, -0x1

    if-ne p3, v2, :cond_3

    const/4 p3, 0x0

    .line 1209
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mHeadsetState:I
    invoke-static {v3}, Lcom/android/server/WiredAccessoryManager;->access$1800(Lcom/android/server/WiredAccessoryManager;)I

    move-result v3

    invoke-virtual {v1, v3, p3}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->computeNewHeadsetState(II)I

    move-result v3

    # invokes: Lcom/android/server/WiredAccessoryManager;->updateLocked(Ljava/lang/String;I)V
    invoke-static {v2, p2, v3}, Lcom/android/server/WiredAccessoryManager;->access$1900(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;I)V

    goto :goto_1

    .line 1206
    :cond_3
    const/4 p3, 0x1

    goto :goto_2

    .line 1197
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateStateUSBDevice()V
    .locals 35

    .prologue
    .line 1099
    const-string v26, "/sys/class/sound"

    .line 1100
    .local v26, "source":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v26

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1101
    .local v9, "dir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 1102
    .local v13, "fileList":[Ljava/io/File;
    const-string v4, ""

    .line 1103
    .local v4, "card":Ljava/lang/String;
    const/16 v22, 0x0

    .line 1105
    .local v22, "newCard":Z
    const/4 v15, 0x0

    .line 1107
    .local v15, "in":Ljava/io/BufferedReader;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    :try_start_0
    array-length v0, v13

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v14, v0, :cond_0

    .line 1108
    aget-object v12, v13, v14

    .line 1109
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v32

    if-eqz v32, :cond_3

    .line 1110
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    .line 1111
    .local v21, "name":Ljava/lang/String;
    const-string v32, "card"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_3

    const-string v32, "card0"

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_3

    .line 1112
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "card Name is ==> "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    move-object/from16 v4, v21

    .line 1114
    const/16 v22, 0x1

    .line 1120
    .end local v12    # "file":Ljava/io/File;
    .end local v21    # "name":Ljava/lang/String;
    :cond_0
    if-eqz v22, :cond_b

    .line 1121
    new-instance v25, Ljava/io/File;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1122
    .local v25, "path":Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v24

    .line 1124
    .local v24, "nodes":[Ljava/io/File;
    const/16 v18, 0x0

    .local v18, "j":I
    move-object/from16 v16, v15

    .end local v15    # "in":Ljava/io/BufferedReader;
    .local v16, "in":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v18

    move/from16 v1, v32

    if-ge v0, v1, :cond_a

    .line 1125
    aget-object v23, v24, v18

    .line 1126
    .local v23, "node":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->isDirectory()Z

    move-result v32

    if-eqz v32, :cond_c

    .line 1127
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    .line 1128
    .restart local v21    # "name":Ljava/lang/String;
    const-string v32, "pcm"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_1

    const-string v32, "control"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_c

    .line 1129
    :cond_1
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/uevent"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1130
    .local v31, "uePath":Ljava/lang/String;
    new-instance v30, Ljava/io/File;

    invoke-direct/range {v30 .. v31}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1131
    .local v30, "ueNode":Ljava/io/File;
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v32

    if-eqz v32, :cond_c

    .line 1132
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "uevent node ===> "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "ACTION=add\u0000DEVPATH="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\u0000"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1135
    .local v29, "ue":Ljava/lang/String;
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v32, Ljava/io/FileReader;

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v32

    invoke-direct {v15, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1136
    .end local v16    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "in":Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v28

    .local v28, "str":Ljava/lang/String;
    if-eqz v28, :cond_4

    .line 1137
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "\u0000"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1138
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "uevent contents ===> "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1180
    .end local v18    # "j":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v23    # "node":Ljava/io/File;
    .end local v24    # "nodes":[Ljava/io/File;
    .end local v25    # "path":Ljava/io/File;
    .end local v28    # "str":Ljava/lang/String;
    .end local v29    # "ue":Ljava/lang/String;
    .end local v30    # "ueNode":Ljava/io/File;
    .end local v31    # "uePath":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 1181
    .local v10, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1186
    if-eqz v15, :cond_2

    .line 1187
    :try_start_4
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1194
    .end local v10    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    return-void

    .line 1107
    .restart local v12    # "file":Ljava/io/File;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 1140
    .end local v12    # "file":Ljava/io/File;
    .restart local v18    # "j":I
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v23    # "node":Ljava/io/File;
    .restart local v24    # "nodes":[Ljava/io/File;
    .restart local v25    # "path":Ljava/io/File;
    .restart local v28    # "str":Ljava/lang/String;
    .restart local v29    # "ue":Ljava/lang/String;
    .restart local v30    # "ueNode":Ljava/io/File;
    .restart local v31    # "uePath":Ljava/lang/String;
    :cond_4
    :try_start_5
    new-instance v11, Landroid/os/UEventObserver$UEvent;

    move-object/from16 v0, v29

    invoke-direct {v11, v0}, Landroid/os/UEventObserver$UEvent;-><init>(Ljava/lang/String;)V

    .line 1142
    .local v11, "event":Landroid/os/UEventObserver$UEvent;
    const-string v32, "ACTION"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1143
    .local v3, "action":Ljava/lang/String;
    const-string v32, "DEVPATH"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1144
    .local v8, "devpath":Ljava/lang/String;
    const-string v32, "MAJOR"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1145
    .local v19, "major":Ljava/lang/String;
    const-string v32, "MINOR"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1146
    .local v20, "minor":Ljava/lang/String;
    const-string v32, "DEVNAME"

    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1147
    .local v7, "devname":Ljava/lang/String;
    const-string v5, "1"

    .line 1148
    .local v5, "cardNumber":Ljava/lang/String;
    const-string v6, "0"

    .line 1149
    .local v6, "deviceNumber":Ljava/lang/String;
    const/16 v27, 0x0

    .line 1150
    .local v27, "state":I
    const/16 v17, 0x0

    .line 1152
    .local v17, "isPlayback":Z
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "onUEvent(device) :: action = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", MAJOR = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", MINOR = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", DEVPATH = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "DEVNAME = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    const-string v32, "116"

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_7

    .line 1156
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 1157
    const-string/jumbo v32, "usb"

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_7

    const-string v32, "gadget"

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_7

    .line 1159
    const-string v32, "p"

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_5

    const-string v32, "c"

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_7

    .line 1160
    :cond_5
    const-string v32, "p"

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_6

    .line 1161
    const/16 v17, 0x1

    .line 1163
    :cond_6
    const/16 v32, 0x8

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    .line 1164
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, " cardNumber = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    const/16 v32, 0xa

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    .line 1166
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v32

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, " deviceNumber = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    const-string v32, "add"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_8

    .line 1168
    const/16 v27, 0x1

    .line 1171
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->getAccInfo(IZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->update_usbaudio(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1124
    .end local v3    # "action":Ljava/lang/String;
    .end local v5    # "cardNumber":Ljava/lang/String;
    .end local v6    # "deviceNumber":Ljava/lang/String;
    .end local v7    # "devname":Ljava/lang/String;
    .end local v8    # "devpath":Ljava/lang/String;
    .end local v11    # "event":Landroid/os/UEventObserver$UEvent;
    .end local v17    # "isPlayback":Z
    .end local v19    # "major":Ljava/lang/String;
    .end local v20    # "minor":Ljava/lang/String;
    .end local v21    # "name":Ljava/lang/String;
    .end local v27    # "state":I
    .end local v28    # "str":Ljava/lang/String;
    .end local v29    # "ue":Ljava/lang/String;
    .end local v30    # "ueNode":Ljava/io/File;
    .end local v31    # "uePath":Ljava/lang/String;
    :cond_7
    :goto_6
    add-int/lit8 v18, v18, 0x1

    move-object/from16 v16, v15

    .end local v15    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 1170
    .end local v16    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "action":Ljava/lang/String;
    .restart local v5    # "cardNumber":Ljava/lang/String;
    .restart local v6    # "deviceNumber":Ljava/lang/String;
    .restart local v7    # "devname":Ljava/lang/String;
    .restart local v8    # "devpath":Ljava/lang/String;
    .restart local v11    # "event":Landroid/os/UEventObserver$UEvent;
    .restart local v15    # "in":Ljava/io/BufferedReader;
    .restart local v17    # "isPlayback":Z
    .restart local v19    # "major":Ljava/lang/String;
    .restart local v20    # "minor":Ljava/lang/String;
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v27    # "state":I
    .restart local v28    # "str":Ljava/lang/String;
    .restart local v29    # "ue":Ljava/lang/String;
    .restart local v30    # "ueNode":Ljava/io/File;
    .restart local v31    # "uePath":Ljava/lang/String;
    :cond_8
    const/16 v27, 0x0

    goto :goto_5

    .line 1182
    .end local v3    # "action":Ljava/lang/String;
    .end local v5    # "cardNumber":Ljava/lang/String;
    .end local v6    # "deviceNumber":Ljava/lang/String;
    .end local v7    # "devname":Ljava/lang/String;
    .end local v8    # "devpath":Ljava/lang/String;
    .end local v11    # "event":Landroid/os/UEventObserver$UEvent;
    .end local v17    # "isPlayback":Z
    .end local v18    # "j":I
    .end local v19    # "major":Ljava/lang/String;
    .end local v20    # "minor":Ljava/lang/String;
    .end local v21    # "name":Ljava/lang/String;
    .end local v23    # "node":Ljava/io/File;
    .end local v24    # "nodes":[Ljava/io/File;
    .end local v25    # "path":Ljava/io/File;
    .end local v27    # "state":I
    .end local v28    # "str":Ljava/lang/String;
    .end local v29    # "ue":Ljava/lang/String;
    .end local v30    # "ueNode":Ljava/io/File;
    .end local v31    # "uePath":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 1183
    .local v10, "e":Ljava/lang/NullPointerException;
    :goto_7
    :try_start_6
    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1186
    if-eqz v15, :cond_2

    .line 1187
    :try_start_7
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_4

    .line 1189
    :catch_2
    move-exception v10

    .line 1191
    .local v10, "e":Ljava/io/IOException;
    :goto_8
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 1185
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v32

    .line 1186
    :goto_9
    if-eqz v15, :cond_9

    .line 1187
    :try_start_8
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 1185
    :cond_9
    :goto_a
    throw v32

    .line 1189
    :catch_3
    move-exception v10

    .line 1191
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 1189
    :catch_4
    move-exception v10

    goto :goto_8

    .end local v10    # "e":Ljava/io/IOException;
    .end local v15    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "in":Ljava/io/BufferedReader;
    .restart local v18    # "j":I
    .restart local v24    # "nodes":[Ljava/io/File;
    .restart local v25    # "path":Ljava/io/File;
    :cond_a
    move-object/from16 v15, v16

    .line 1186
    .end local v16    # "in":Ljava/io/BufferedReader;
    .end local v18    # "j":I
    .end local v24    # "nodes":[Ljava/io/File;
    .end local v25    # "path":Ljava/io/File;
    .restart local v15    # "in":Ljava/io/BufferedReader;
    :cond_b
    if-eqz v15, :cond_2

    .line 1187
    :try_start_9
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_4

    .line 1189
    :catch_5
    move-exception v10

    goto :goto_8

    .line 1185
    .end local v15    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "in":Ljava/io/BufferedReader;
    .restart local v18    # "j":I
    .restart local v24    # "nodes":[Ljava/io/File;
    .restart local v25    # "path":Ljava/io/File;
    :catchall_1
    move-exception v32

    move-object/from16 v15, v16

    .end local v16    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "in":Ljava/io/BufferedReader;
    goto :goto_9

    .line 1182
    .end local v15    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "in":Ljava/io/BufferedReader;
    :catch_6
    move-exception v10

    move-object/from16 v15, v16

    .end local v16    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "in":Ljava/io/BufferedReader;
    goto :goto_7

    .line 1180
    .end local v15    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "in":Ljava/io/BufferedReader;
    :catch_7
    move-exception v10

    move-object/from16 v15, v16

    .end local v16    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .end local v15    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "in":Ljava/io/BufferedReader;
    .restart local v23    # "node":Ljava/io/File;
    :cond_c
    move-object/from16 v15, v16

    .end local v16    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "in":Ljava/io/BufferedReader;
    goto :goto_6
.end method

.method private final declared-synchronized update_usbaudio(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;)V
    .locals 5
    .param p1, "usbAudioData"    # Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UsbAudioData;

    .prologue
    .line 906
    monitor-enter p0

    const/16 v0, 0x1f4

    .line 907
    .local v0, "delay":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/WiredAccessoryManager;->access$300(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 908
    iget-object v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mHandler_usbAudio:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mHandler_usbAudio:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    monitor-exit p0

    return-void

    .line 906
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method init()V
    .locals 12

    .prologue
    .line 503
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/WiredAccessoryManager;->access$400(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 504
    :try_start_0
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v8

    const-string v10, "init()"

    invoke-static {v8, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/16 v8, 0x400

    new-array v0, v8, [C

    .line 507
    .local v0, "buffer":[C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 508
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    .local v7, "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    const/4 v3, 0x0

    .line 512
    .local v3, "file":Ljava/io/FileReader;
    :try_start_1
    new-instance v4, Ljava/io/FileReader;

    invoke-virtual {v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 513
    .end local v3    # "file":Ljava/io/FileReader;
    .local v4, "file":Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v10, 0x400

    :try_start_2
    invoke-virtual {v4, v0, v8, v10}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 514
    .local v6, "len":I
    new-instance v8, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v8, v0, v10, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 516
    .local v1, "curState":I
    if-lez v1, :cond_0

    .line 517
    invoke-virtual {v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v8, v10, v1}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 526
    :cond_0
    if-eqz v4, :cond_1

    .line 527
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :goto_1
    move-object v3, v4

    .line 507
    .end local v1    # "curState":I
    .end local v4    # "file":Ljava/io/FileReader;
    .end local v6    # "len":I
    .restart local v3    # "file":Ljava/io/FileReader;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 519
    :catch_0
    move-exception v2

    .line 520
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not found while attempting to determine initial switch state"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 526
    if-eqz v3, :cond_2

    .line 527
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 529
    :catch_1
    move-exception v2

    .line 531
    .local v2, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 539
    .end local v0    # "buffer":[C
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/FileReader;
    .end local v5    # "i":I
    .end local v7    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v8

    .line 522
    .restart local v0    # "buffer":[C
    .restart local v3    # "file":Ljava/io/FileReader;
    .restart local v5    # "i":I
    .restart local v7    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :catch_2
    move-exception v2

    .line 523
    .local v2, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_7
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v8

    const-string v10, ""

    invoke-static {v8, v10, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 526
    if-eqz v3, :cond_2

    .line 527
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 529
    :catch_3
    move-exception v2

    .line 531
    .local v2, "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 525
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v8

    .line 526
    :goto_5
    if-eqz v3, :cond_3

    .line 527
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 525
    :cond_3
    :goto_6
    :try_start_b
    throw v8

    .line 538
    .end local v3    # "file":Ljava/io/FileReader;
    .end local v7    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateUSBDevice()V

    .line 539
    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 544
    const/4 v5, 0x0

    :goto_7
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_5

    .line 545
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 546
    .restart local v7    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DEVPATH="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->startObserving(Ljava/lang/String;)V

    .line 544
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 549
    .end local v7    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :cond_5
    iget-object v8, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventUsbAudioObserver:Landroid/os/UEventObserver;

    const-string v9, "MAJOR=116"

    invoke-virtual {v8, v9}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 550
    return-void

    .line 529
    .restart local v3    # "file":Ljava/io/FileReader;
    .restart local v7    # "uei":Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :catch_4
    move-exception v2

    .line 531
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 529
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v1    # "curState":I
    .restart local v4    # "file":Ljava/io/FileReader;
    .restart local v6    # "len":I
    :catch_5
    move-exception v2

    .line 531
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    .line 525
    .end local v1    # "curState":I
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "len":I
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_5

    .line 522
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto :goto_4

    .line 519
    .end local v3    # "file":Ljava/io/FileReader;
    .restart local v4    # "file":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/FileReader;
    .restart local v3    # "file":Ljava/io/FileReader;
    goto/16 :goto_3
.end method

.method public isSmartDockConnected()Z
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1027
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v10

    const-string v11, "checkSmartDock"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    new-array v1, v12, [C

    .line 1029
    .local v1, "buffer":[C
    const-string/jumbo v0, "sys/class/sec/switch/adc"

    .line 1030
    .local v0, "SmartDName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1031
    .local v5, "file":Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 1033
    .local v2, "deviceValue":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1034
    .end local v5    # "file":Ljava/io/FileReader;
    .local v6, "file":Ljava/io/FileReader;
    const/4 v10, 0x0

    const/16 v11, 0x8

    :try_start_1
    invoke-virtual {v6, v1, v10, v11}, Ljava/io/FileReader;->read([CII)I

    move-result v7

    .line 1035
    .local v7, "len":I
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 1036
    if-le v7, v8, :cond_1

    .line 1037
    new-instance v3, Ljava/lang/String;

    const/4 v10, 0x0

    add-int/lit8 v11, v7, -0x1

    invoke-direct {v3, v1, v10, v11}, Ljava/lang/String;-><init>([CII)V

    .end local v2    # "deviceValue":Ljava/lang/String;
    .local v3, "deviceValue":Ljava/lang/String;
    move-object v2, v3

    .line 1040
    .end local v3    # "deviceValue":Ljava/lang/String;
    .restart local v2    # "deviceValue":Ljava/lang/String;
    :goto_0
    const-string v10, "10"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v10

    if-eqz v10, :cond_2

    .line 1049
    if-eqz v6, :cond_0

    .line 1050
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_1
    move-object v5, v6

    .line 1058
    .end local v6    # "file":Ljava/io/FileReader;
    .end local v7    # "len":I
    .restart local v5    # "file":Ljava/io/FileReader;
    :goto_2
    return v8

    .line 1039
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    .restart local v7    # "len":I
    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v3, v1, v10, v7}, Ljava/lang/String;-><init>([CII)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v2    # "deviceValue":Ljava/lang/String;
    .restart local v3    # "deviceValue":Ljava/lang/String;
    move-object v2, v3

    .end local v3    # "deviceValue":Ljava/lang/String;
    .restart local v2    # "deviceValue":Ljava/lang/String;
    goto :goto_0

    .line 1049
    :cond_2
    if-eqz v6, :cond_3

    .line 1050
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_3
    :goto_3
    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .end local v7    # "len":I
    .restart local v5    # "file":Ljava/io/FileReader;
    :cond_4
    :goto_4
    move v8, v9

    .line 1058
    goto :goto_2

    .line 1043
    :catch_0
    move-exception v4

    .line 1044
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_5
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v8

    const-string v10, "checkSmartDock This kernel does not have wired headset support "

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1049
    if-eqz v5, :cond_4

    .line 1050
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    .line 1052
    :catch_1
    move-exception v4

    .line 1054
    .local v4, "e":Ljava/io/IOException;
    :goto_6
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1045
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 1046
    .local v4, "e":Ljava/lang/Exception;
    :goto_7
    :try_start_7
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v8

    const-string v10, ""

    invoke-static {v8, v10, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1049
    if-eqz v5, :cond_4

    .line 1050
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_4

    .line 1052
    :catch_3
    move-exception v4

    goto :goto_6

    .line 1048
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 1049
    :goto_8
    if-eqz v5, :cond_5

    .line 1050
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 1048
    :cond_5
    :goto_9
    throw v8

    .line 1052
    :catch_4
    move-exception v4

    .line 1054
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 1052
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    .restart local v7    # "len":I
    :catch_5
    move-exception v4

    .line 1054
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1052
    .end local v4    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 1054
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1048
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "len":I
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto :goto_8

    .line 1045
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    :catch_7
    move-exception v4

    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto :goto_7

    .line 1043
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    :catch_8
    move-exception v4

    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto :goto_5
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 1064
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Headset UEVENT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    iget-object v5, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mContext:Landroid/content/Context;

    const-string v6, "enterprise_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1069
    .local v2, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v2, :cond_0

    .line 1070
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/enterprise/RestrictionPolicy;->isHeadphoneEnabled(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1072
    :try_start_0
    const-string v5, "DEVPATH"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 1077
    .local v0, "devPath":Ljava/lang/String;
    :try_start_1
    const-string v5, "SWITCH_NAME"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 1083
    .local v3, "name":Ljava/lang/String;
    :goto_0
    :try_start_2
    const-string v5, "SWITCH_STATE"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    .line 1087
    .local v4, "state":I
    :goto_1
    :try_start_3
    iget-object v5, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    # getter for: Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/WiredAccessoryManager;->access$400(Lcom/android/server/WiredAccessoryManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1088
    :try_start_4
    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1089
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1096
    .end local v0    # "devPath":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "state":I
    :cond_0
    :goto_2
    return-void

    .line 1078
    .restart local v0    # "devPath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1079
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v5, "NAME"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_0

    .line 1084
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1085
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "STATE"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2

    move-result v4

    .restart local v4    # "state":I
    goto :goto_1

    .line 1089
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v5
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1090
    .end local v0    # "devPath":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "state":I
    :catch_2
    move-exception v1

    .line 1091
    .local v1, "e":Ljava/lang/NumberFormatException;
    # getter for: Lcom/android/server/WiredAccessoryManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/WiredAccessoryManager;->access$500()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not parse switch state from event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
