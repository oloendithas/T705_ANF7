.class public Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLItemDataButton.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "TwGLItemDataButton"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mButton:Lcom/sec/android/glview/TwGLButton;

.field private mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

.field private mCommandId:I

.field private mGivenSize:Z

.field private mHeight:F

.field private mModeText:Lcom/sec/android/glview/TwGLText;

.field private mType:I

.field private mWidth:F


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFI)V
    .locals 7
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "commandId"    # I

    .prologue
    const/4 v6, 0x0

    .line 46
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 29
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mWidth:F

    .line 30
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mHeight:F

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mGivenSize:Z

    .line 48
    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    .line 49
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 50
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 53
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mWidth:F

    .line 54
    iput p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mHeight:F

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mGivenSize:Z

    .line 57
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->refreshButton()V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFII)V
    .locals 7
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "commandId"    # I
    .param p7, "type"    # I

    .prologue
    const/4 v6, 0x0

    .line 61
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 29
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mWidth:F

    .line 30
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mHeight:F

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mGivenSize:Z

    .line 63
    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    .line 64
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 65
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 68
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mWidth:F

    .line 69
    iput p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mHeight:F

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mGivenSize:Z

    .line 71
    iput p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mType:I

    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->refreshButton()V

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFI)V
    .locals 2
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "commandId"    # I

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 29
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mWidth:F

    .line 30
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mHeight:F

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mGivenSize:Z

    .line 37
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    .line 38
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 39
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 42
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->refreshButton()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnFocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnFocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnFocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnFocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    return-object v0
.end method

.method private refreshButton()V
    .locals 15

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v10

    .line 159
    .local v10, "menuid":I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/CameraSettings;->getSettingValue(I)I

    move-result v11

    .line 160
    .local v11, "modeid":I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v13

    .line 161
    .local v13, "selectedCommandId":I
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    .line 162
    const/16 v13, 0x63

    .line 164
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 165
    const/16 v13, 0x8

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v0, v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v12

    .line 169
    .local v12, "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    if-nez v12, :cond_3

    .line 170
    const-string v0, "TwGLItemDataButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing resource for CommandID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_2
    :goto_0
    return-void

    .line 174
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-nez v0, :cond_4

    .line 175
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mGivenSize:Z

    if-eqz v0, :cond_9

    .line 176
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 177
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mHeight:F

    iget v6, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v7, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v8, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const v9, 0x7f020260

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 183
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setObjectTag(I)V

    .line 186
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    if-ne v13, v0, :cond_a

    .line 187
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSubTitle(Ljava/lang/String;)V

    .line 197
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v2, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSubTitle(Ljava/lang/String;)V

    .line 200
    :cond_5
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v0, :cond_d

    .line 201
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget v1, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v2, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v3, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const v4, 0x7f020260

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 209
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 236
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    const/16 v1, 0x63

    if-ne v0, v1, :cond_6

    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setDraggable(Z)V

    .line 240
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mModeText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    .line 241
    const-string v14, ""

    .line 243
    .local v14, "title":Ljava/lang/String;
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_f

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v14

    .line 258
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mModeText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v14}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 179
    .end local v14    # "title":Ljava/lang/String;
    :cond_8
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mHeight:F

    iget v6, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v7, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v8, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    goto/16 :goto_1

    .line 181
    :cond_9
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v5, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v6, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    goto/16 :goto_1

    .line 189
    :cond_a
    iget v0, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mContentDescription:I

    if-eqz v0, :cond_b

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mContentDescription:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSubTitle(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 192
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->setSubTitle(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 204
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget v1, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v2, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v3, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    goto/16 :goto_3

    .line 206
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget v1, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v2, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v3, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    goto/16 :goto_3

    .line 247
    .restart local v14    # "title":Ljava/lang/String;
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v13

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v0, v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v12

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_4

    .line 252
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, v12, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    const/4 v0, 0x4

    if-eq v10, v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    const/16 v0, 0xbb9

    if-ne v10, v0, :cond_7

    .line 254
    :cond_10
    const-string v0, " "

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v14, v0, v1

    goto/16 :goto_4
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->unregisterCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 82
    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 83
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 2
    .param p1, "menuid"    # I
    .param p2, "modeid"    # I

    .prologue
    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isActivityDestoying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    if-ne v0, v1, :cond_0

    .line 333
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->refreshButton()V

    goto :goto_0
.end method

.method protected onDraw()V
    .locals 4

    .prologue
    .line 322
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 323
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->draw([FLandroid/graphics/Rect;)V

    goto :goto_0

    .line 326
    :cond_0
    return-void
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setContentDescription(Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method

.method public setDim(Z)V
    .locals 1
    .param p1, "dim"    # Z

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 144
    :cond_0
    return-void
.end method

.method public setHighlightVisibility(Z)V
    .locals 1
    .param p1, "visibility"    # Z

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setHighlightVisibility(Z)V

    .line 138
    :cond_0
    return-void
.end method

.method public setModeText(Lcom/sec/android/glview/TwGLText;)V
    .locals 0
    .param p1, "modeText"    # Lcom/sec/android/glview/TwGLText;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mModeText:Lcom/sec/android/glview/TwGLText;

    .line 361
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 357
    :cond_0
    return-void
.end method

.method public setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V
    .locals 9
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnClickListener;

    .prologue
    const/4 v8, 0x0

    .line 264
    if-nez p1, :cond_2

    .line 265
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 277
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/command/CommandIdMap;->getMenuIDByCommandID(I)I

    move-result v0

    .line 278
    .local v0, "menuid":I
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/CameraSettings;->getSettingValue(I)I

    move-result v1

    .line 279
    .local v1, "modeid":I
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getCommandIdMap()Lcom/sec/android/app/camera/command/CommandIdMap;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v3

    .line 280
    .local v3, "selectedCommandId":I
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mCommandId:I

    const/16 v5, 0x63

    if-ne v4, v5, :cond_0

    .line 281
    const/16 v3, 0x63

    .line 283
    :cond_0
    const/16 v4, 0x8

    if-ne v0, v4, :cond_1

    .line 284
    const/16 v3, 0x8

    .line 287
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v2

    .line 289
    .local v2, "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    if-eqz p1, :cond_4

    .line 290
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 291
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget v5, v2, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v6, v2, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v7, v2, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const v8, 0x7f020260

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    .line 298
    :goto_1
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 299
    return-void

    .line 267
    .end local v0    # "menuid":I
    .end local v1    # "modeid":I
    .end local v2    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .end local v3    # "selectedCommandId":I
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v5, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$4;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$4;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    goto :goto_0

    .line 293
    .restart local v0    # "menuid":I
    .restart local v1    # "modeid":I
    .restart local v2    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .restart local v3    # "selectedCommandId":I
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget v5, v2, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v6, v2, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v7, v2, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    goto :goto_1

    .line 295
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget v5, v2, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v6, v2, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v7, v2, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/android/glview/TwGLButton;->setButtonResources(IIII)V

    goto :goto_1
.end method

.method public setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V
    .locals 2
    .param p1, "l"    # Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnFocusListener:Lcom/sec/android/glview/TwGLView$OnFocusListener;

    .line 304
    if-nez p1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 318
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$5;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    goto :goto_0
.end method

.method public setResourceOffset(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 148
    :cond_0
    const/4 v0, 0x0

    .line 154
    :goto_0
    return v0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLButton;->setResourceOffset(FF)Z

    .line 154
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized setSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 339
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 342
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mWidth:F

    .line 343
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mHeight:F

    .line 344
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    monitor-exit p0

    return-void

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method

.method public setText(Lcom/sec/android/glview/TwGLText;)V
    .locals 1
    .param p1, "text"    # Lcom/sec/android/glview/TwGLText;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 114
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;)V

    .line 108
    :cond_0
    return-void
.end method

.method public setTextAlign(II)V
    .locals 1
    .param p1, "hAlign"    # I
    .param p2, "vAlign"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLButton;->setTextAlign(II)V

    .line 126
    :cond_0
    return-void
.end method

.method public setTextPosition(FF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLButton;->setTextPosition(FF)V

    .line 120
    :cond_0
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 1
    .param p1, "visibility"    # Z

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLButton;->setTextVisibility(Z)V

    .line 132
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method public setToggleButton()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->setToggleButton()V

    .line 351
    :cond_0
    return-void
.end method
