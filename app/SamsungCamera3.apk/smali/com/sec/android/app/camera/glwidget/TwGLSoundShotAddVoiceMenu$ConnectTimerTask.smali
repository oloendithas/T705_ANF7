.class Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$ConnectTimerTask;
.super Ljava/util/TimerTask;
.source "TwGLSoundShotAddVoiceMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectTimerTask"
.end annotation


# instance fields
.field mCnt:I

.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;)V
    .locals 1

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$ConnectTimerTask;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$ConnectTimerTask;->mCnt:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;
    .param p2, "x1"    # Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$1;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$ConnectTimerTask;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 117
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$ConnectTimerTask;->mCnt:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$ConnectTimerTask;->mCnt:I

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$ConnectTimerTask;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMicImage:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$ConnectTimerTask;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;

    # getter for: Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->mMicImageArray:[I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu;)[I

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSoundShotAddVoiceMenu$ConnectTimerTask;->mCnt:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 119
    return-void
.end method
