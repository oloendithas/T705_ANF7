.class public Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLTimerMenu.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "TwGLTimerMenu"

.field private static final TIMER_2SEC_SOUND:I = 0x1c

.field private static final TIMER_GROUP_HEIGHT:I

.field private static final TIMER_GROUP_POS_X:I

.field private static final TIMER_GROUP_POS_Y:I

.field private static final TIMER_GROUP_WIDTH:I

.field private static final TIMER_NUMBER_POS_X:I

.field private static final TIMER_NUMBER_POS_Y:I

.field private static final TIMER_SOUND:I


# instance fields
.field private mIs2SecSoundPlaying:Z

.field private mTimerBackGround:Lcom/sec/android/glview/TwGLImage;

.field private mTimerGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mTimerNumber:Lcom/sec/android/glview/TwGLImage;

.field private mTimerNumberArray:[I

.field private mTimerValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const v0, 0x7f09017a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_GROUP_POS_X:I

    .line 20
    const v0, 0x7f09017b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_GROUP_POS_Y:I

    .line 21
    const v0, 0x7f09017c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_GROUP_WIDTH:I

    .line 22
    const v0, 0x7f09017d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_GROUP_HEIGHT:I

    .line 23
    const v0, 0x7f09017e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_NUMBER_POS_X:I

    .line 24
    const v0, 0x7f09017f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_NUMBER_POS_Y:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 9
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "viewId"    # I
    .param p3, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p4, "menuResourceDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 39
    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 26
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerNumberArray:[I

    .line 36
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mIs2SecSoundPlaying:Z

    .line 41
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_GROUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_GROUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_GROUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_GROUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 42
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x7f02028c

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerBackGround:Lcom/sec/android/glview/TwGLImage;

    .line 43
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_NUMBER_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->TIMER_NUMBER_POS_Y:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerNumberArray:[I

    const/16 v5, 0x9

    aget v4, v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerNumber:Lcom/sec/android/glview/TwGLImage;

    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerBackGround:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerNumber:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 53
    return-void

    .line 26
    :array_0
    .array-data 4
        0x7f020296
        0x7f020297
        0x7f020298
        0x7f020299
        0x7f02029a
        0x7f02029b
        0x7f02029c
        0x7f02029d
        0x7f02029e
        0x7f02029f
    .end array-data
.end method


# virtual methods
.method public onBack()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 96
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerValue:I

    if-lez v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doCancelShutterTimer()V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->stopCameraSound(I)V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mIs2SecSoundPlaying:Z

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 101
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->setTouchHandled(Z)V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraVoiceCommand()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->startVoiceRecognizer()V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->setTouchHandled(Z)V

    .line 108
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    goto :goto_0
.end method

.method public onHide()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 92
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 93
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 116
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    const/16 v1, 0x1b

    if-eq p1, v1, :cond_0

    const/16 v1, 0x17

    if-eq p1, v1, :cond_0

    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    .line 124
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 128
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 132
    :cond_1
    const/16 v1, 0x1b

    if-eq p1, v1, :cond_0

    const/16 v1, 0x17

    if-eq p1, v1, :cond_0

    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    .line 136
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 113
    return-void
.end method

.method protected onShow()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->setTouchHandled(Z)V

    .line 87
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 88
    return-void
.end method

.method public updateTime(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    const-string v3, "TwGLTimerMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerValue:I

    .line 59
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerValue:I

    if-nez v3, :cond_1

    .line 60
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mIs2SecSoundPlaying:Z

    .line 61
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerNumber:Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 64
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerNumber:Lcom/sec/android/glview/TwGLImage;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerNumberArray:[I

    add-int/lit8 v5, p1, -0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 65
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerNumber:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 67
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 69
    .local v0, "bPlayShutter":Z
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerBackGround:Lcom/sec/android/glview/TwGLImage;

    const v4, 0x7f02028c

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 71
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mTimerValue:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_4

    .line 72
    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mIs2SecSoundPlaying:Z

    if-nez v3, :cond_0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/16 v4, 0x1c

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 75
    :cond_2
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mIs2SecSoundPlaying:Z

    goto :goto_0

    .end local v0    # "bPlayShutter":Z
    :cond_3
    move v0, v2

    .line 67
    goto :goto_1

    .line 78
    .restart local v0    # "bPlayShutter":Z
    :cond_4
    if-eqz v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v2, v2}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    goto :goto_0
.end method
