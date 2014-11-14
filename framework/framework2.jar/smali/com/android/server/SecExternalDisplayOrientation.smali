.class public Lcom/android/server/SecExternalDisplayOrientation;
.super Ljava/lang/Object;
.source "SecExternalDisplayOrientation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SecExternalDisplayOrientation$2;,
        Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;,
        Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;
    }
.end annotation


# static fields
.field public static final EXTRA_IS_FORCE_MIRROR:Ljava/lang/String; = "isForceMirror"

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "SecExternalDisplayOrientation_Java"

.field private static bIsFrontCameraOn:Z

.field protected static bIsLogEnabled:Z

.field private static bIsRearCameraOn:Z

.field private static bIsTabletConnected:Z

.field private static newOrientation:I


# instance fields
.field private mDockSurfaceHeight:I

.field private mDockSurfaceWidth:I

.field protected mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

.field mOrientationListener:Landroid/view/OrientationEventListener;

.field private setOrientation:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 43
    sput-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsFrontCameraOn:Z

    .line 44
    sput-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsRearCameraOn:Z

    .line 45
    sput-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsTabletConnected:Z

    .line 47
    sput v0, Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I

    .line 53
    sput-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x500

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->setOrientation:I

    .line 49
    iput v1, p0, Lcom/android/server/SecExternalDisplayOrientation;->mDockSurfaceWidth:I

    .line 50
    iput v1, p0, Lcom/android/server/SecExternalDisplayOrientation;->mDockSurfaceHeight:I

    .line 174
    return-void
.end method

.method public constructor <init>(Lcom/android/server/SecExternalDisplayService;)V
    .registers 12
    .param p1, "_obj"    # Lcom/android/server/SecExternalDisplayService;

    .prologue
    const/16 v7, 0x500

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/SecExternalDisplayOrientation;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 48
    iput v8, p0, Lcom/android/server/SecExternalDisplayOrientation;->setOrientation:I

    .line 49
    iput v7, p0, Lcom/android/server/SecExternalDisplayOrientation;->mDockSurfaceWidth:I

    .line 50
    iput v7, p0, Lcom/android/server/SecExternalDisplayOrientation;->mDockSurfaceHeight:I

    .line 178
    iput-object p1, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    .line 179
    const-string v6, "SecExternalDisplayOrientation_Java"

    const-string v7, "SecExternalDisplayService constructor"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v6, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v6}, Lcom/android/server/SecExternalDisplayService;->getEDSContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/SecExternalDisplayOrientation;->setOrientationListener(Landroid/content/Context;)V

    .line 181
    const-string/jumbo v6, "persist.sys.SecEDS.Logs"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    .line 183
    iget-object v6, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v6}, Lcom/android/server/SecExternalDisplayService;->getEDSContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "display"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 184
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v4

    .line 185
    .local v4, "presentationDisplays":[Landroid/view/Display;
    aget-object v0, v4, v8

    .line 186
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 187
    .local v5, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 188
    .local v2, "height":I
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 190
    .local v3, "orientation":I
    if-le v5, v2, :cond_52

    if-eqz v3, :cond_59

    const/4 v6, 0x2

    if-eq v3, v6, :cond_59

    :cond_52
    if-ge v5, v2, :cond_63

    if-eq v3, v9, :cond_59

    const/4 v6, 0x3

    if-ne v3, v6, :cond_63

    .line 191
    :cond_59
    sput-boolean v9, Lcom/android/server/SecExternalDisplayOrientation;->bIsTabletConnected:Z

    .line 194
    :goto_5b
    iget-object v6, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-boolean v7, Lcom/android/server/SecExternalDisplayOrientation;->bIsTabletConnected:Z

    invoke-virtual {v6, v7}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayType(Z)Z

    .line 195
    return-void

    .line 193
    :cond_63
    sput-boolean v8, Lcom/android/server/SecExternalDisplayOrientation;->bIsTabletConnected:Z

    goto :goto_5b
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsRearCameraOn:Z

    return v0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 37
    sget v0, Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I

    return v0
.end method

.method static synthetic access$102(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 37
    sput p0, Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I

    return p0
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsFrontCameraOn:Z

    return v0
.end method

.method private setOrientationListener(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_b

    .line 106
    new-instance v0, Lcom/android/server/SecExternalDisplayOrientation$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/SecExternalDisplayOrientation$1;-><init>(Lcom/android/server/SecExternalDisplayOrientation;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 170
    :cond_b
    return-void
.end method


# virtual methods
.method public SecExternalDisplaySetOrientationMode(Z)V
    .registers 3
    .param p1, "bMode"    # Z

    .prologue
    .line 90
    if-eqz p1, :cond_c

    .line 92
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_b

    .line 93
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 100
    :cond_b
    :goto_b
    return-void

    .line 97
    :cond_c
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_b

    .line 98
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_b
.end method

.method public handleCameraConnection(I)Z
    .registers 8
    .param p1, "status"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 199
    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v0, :cond_1e

    .line 200
    const-string v0, "SecExternalDisplayOrientation_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle Camera Connection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_1e
    sget-object v0, Lcom/android/server/SecExternalDisplayOrientation$2;->$SwitchMap$com$android$server$SecExternalDisplayOrientation$EDS_CameraStatus:[I

    invoke-static {p1}, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->toStatus(I)Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_220

    .line 294
    :cond_2d
    :goto_2d
    return v4

    .line 205
    :pswitch_2e
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_CAMERA_START_REAR:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 207
    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v0, :cond_44

    .line 208
    const-string v0, "SecExternalDisplayOrientation_Java"

    const-string v1, "entered Camera Rear Case"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_44
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_RVF:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 213
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-ne v0, v4, :cond_92

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-ne v0, v4, :cond_92

    .line 216
    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v0, :cond_87

    .line 217
    const-string v0, "SecExternalDisplayOrientation_Java"

    const-string v1, "Destroy SmartDock Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_87
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    const-string v1, "Internal"

    iget v2, p0, Lcom/android/server/SecExternalDisplayOrientation;->mDockSurfaceWidth:I

    iget v3, p0, Lcom/android/server/SecExternalDisplayOrientation;->mDockSurfaceHeight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z

    .line 220
    :cond_92
    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsRearCameraOn:Z

    if-eqz v0, :cond_e0

    .line 221
    sget v0, Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I

    add-int/lit16 v0, v0, 0xb4

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->setOrientation:I

    .line 222
    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v0, :cond_bc

    .line 223
    const-string v0, "SecExternalDisplayOrientation_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Calling Camera with setOrientation Value :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/SecExternalDisplayOrientation;->setOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_bc
    iget v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->setOrientation:I

    sget-object v1, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Potrait:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_d0

    iget v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->setOrientation:I

    sget-object v1, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Inverse_Landscape:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_d7

    .line 225
    :cond_d0
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    iget v1, p0, Lcom/android/server/SecExternalDisplayOrientation;->setOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    .line 229
    :cond_d7
    :goto_d7
    sput-boolean v4, Lcom/android/server/SecExternalDisplayOrientation;->bIsRearCameraOn:Z

    .line 230
    sput-boolean v5, Lcom/android/server/SecExternalDisplayOrientation;->bIsFrontCameraOn:Z

    .line 231
    invoke-virtual {p0, v4}, Lcom/android/server/SecExternalDisplayOrientation;->SecExternalDisplaySetOrientationMode(Z)V

    goto/16 :goto_2d

    .line 228
    :cond_e0
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget v1, Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    goto :goto_d7

    .line 235
    :pswitch_e8
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_CAMERA_START_FRONT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 237
    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v0, :cond_fe

    .line 238
    const-string v0, "SecExternalDisplayOrientation_Java"

    const-string v1, "entered Camera Front Case"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_fe
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_RVF:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 243
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-ne v0, v4, :cond_14c

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-ne v0, v4, :cond_14c

    .line 246
    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v0, :cond_141

    .line 247
    const-string v0, "SecExternalDisplayOrientation_Java"

    const-string v1, "Destroy SmartDock Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_141
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    const-string v1, "Internal"

    iget v2, p0, Lcom/android/server/SecExternalDisplayOrientation;->mDockSurfaceWidth:I

    iget v3, p0, Lcom/android/server/SecExternalDisplayOrientation;->mDockSurfaceHeight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z

    .line 251
    :cond_14c
    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsRearCameraOn:Z

    if-eq v0, v4, :cond_19a

    .line 252
    sget v0, Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I

    add-int/lit16 v0, v0, 0xb4

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->setOrientation:I

    .line 253
    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v0, :cond_176

    .line 254
    const-string v0, "SecExternalDisplayOrientation_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Calling Camera with setOrientation Value :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/SecExternalDisplayOrientation;->setOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_176
    iget v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->setOrientation:I

    sget-object v1, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Potrait:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_18a

    iget v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->setOrientation:I

    sget-object v1, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Inverse_Landscape:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_191

    .line 257
    :cond_18a
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    iget v1, p0, Lcom/android/server/SecExternalDisplayOrientation;->setOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    .line 263
    :cond_191
    :goto_191
    sput-boolean v5, Lcom/android/server/SecExternalDisplayOrientation;->bIsRearCameraOn:Z

    .line 264
    sput-boolean v4, Lcom/android/server/SecExternalDisplayOrientation;->bIsFrontCameraOn:Z

    .line 265
    invoke-virtual {p0, v4}, Lcom/android/server/SecExternalDisplayOrientation;->SecExternalDisplaySetOrientationMode(Z)V

    goto/16 :goto_2d

    .line 261
    :cond_19a
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget v1, Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    goto :goto_191

    .line 269
    :pswitch_1a2
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_CAMERA_START_REAR:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v5}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 270
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_CAMERA_START_FRONT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v5}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 272
    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v0, :cond_1c3

    .line 273
    const-string v0, "SecExternalDisplayOrientation_Java"

    const-string v1, "Camera Stop Case"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_1c3
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-ne v0, v4, :cond_1fb

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-ne v0, v4, :cond_1fb

    .line 277
    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v0, :cond_1ea

    .line 278
    const-string v0, "SecExternalDisplayOrientation_Java"

    const-string v1, "Create SmartDock Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_1ea
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    iget-boolean v0, v0, Lcom/android/server/SecExternalDisplayService;->CALL_CONNECT:Z

    if-nez v0, :cond_1fb

    .line 280
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    const-string v1, "Internal"

    iget v2, p0, Lcom/android/server/SecExternalDisplayOrientation;->mDockSurfaceWidth:I

    iget v3, p0, Lcom/android/server/SecExternalDisplayOrientation;->mDockSurfaceHeight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z

    .line 283
    :cond_1fb
    sput-boolean v5, Lcom/android/server/SecExternalDisplayOrientation;->bIsRearCameraOn:Z

    .line 284
    sput-boolean v5, Lcom/android/server/SecExternalDisplayOrientation;->bIsFrontCameraOn:Z

    .line 285
    invoke-virtual {p0, v5}, Lcom/android/server/SecExternalDisplayOrientation;->SecExternalDisplaySetOrientationMode(Z)V

    .line 286
    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsTabletConnected:Z

    if-eqz v0, :cond_213

    .line 287
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Landscape:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    goto/16 :goto_2d

    .line 289
    :cond_213
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Potrait:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    goto/16 :goto_2d

    .line 201
    :pswitch_data_220
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_e8
        :pswitch_1a2
    .end packed-switch
.end method

.method public handleRVFConnection(Z)Z
    .registers 5
    .param p1, "status"    # Z

    .prologue
    .line 337
    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v0, :cond_1c

    .line 338
    const-string v0, "SecExternalDisplayOrientation_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entered handleRVFConnection with status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_1c
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_RVF:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eq p1, v0, :cond_35

    .line 340
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Potrait:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    .line 342
    :cond_35
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_RVF:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 343
    const/4 v0, 0x1

    return v0
.end method

.method public handleSideSyncConnection(Z)Z
    .registers 7
    .param p1, "status"    # Z

    .prologue
    .line 305
    sget-boolean v2, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v2, :cond_1c

    .line 306
    const-string v2, "SecExternalDisplayOrientation_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "entered handleSideSyncConnection with status :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_1c
    if-eqz p1, :cond_45

    .line 310
    const/4 v0, 0x1

    .line 311
    .local v0, "mSideSyncConnect":Z
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v3, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v2

    if-eq v0, v2, :cond_43

    .line 312
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v3, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Sidesync_connected:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    .line 313
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v3, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 326
    .end local v0    # "mSideSyncConnect":Z
    :cond_43
    :goto_43
    const/4 v2, 0x1

    return v2

    .line 319
    :cond_45
    const/4 v1, 0x0

    .line 320
    .local v1, "mSideSyncDisconnect":Z
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v3, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v2

    if-eq v1, v2, :cond_43

    .line 321
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v3, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Sidesync_disconnected:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    .line 322
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v3, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    goto :goto_43
.end method
