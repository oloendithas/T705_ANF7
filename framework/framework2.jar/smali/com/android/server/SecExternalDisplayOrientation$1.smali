.class Lcom/android/server/SecExternalDisplayOrientation$1;
.super Landroid/view/OrientationEventListener;
.source "SecExternalDisplayOrientation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SecExternalDisplayOrientation;->setOrientationListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SecExternalDisplayOrientation;


# direct methods
.method constructor <init>(Lcom/android/server/SecExternalDisplayOrientation;Landroid/content/Context;)V
    .registers 3
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/SecExternalDisplayOrientation$1;->this$0:Lcom/android/server/SecExternalDisplayOrientation;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 5
    .param p1, "orientation"    # I

    .prologue
    .line 110
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 167
    :cond_3
    :goto_3
    return-void

    .line 116
    :cond_4
    # getter for: Lcom/android/server/SecExternalDisplayOrientation;->bIsRearCameraOn:Z
    invoke-static {}, Lcom/android/server/SecExternalDisplayOrientation;->access$000()Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 117
    sget-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Potrait:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    # setter for: Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I
    invoke-static {v0}, Lcom/android/server/SecExternalDisplayOrientation;->access$102(I)I

    .line 121
    :goto_13
    rem-int/lit16 p1, p1, 0x168

    .line 123
    const/16 v0, 0x2d

    if-ge p1, v0, :cond_e1

    .line 125
    # getter for: Lcom/android/server/SecExternalDisplayOrientation;->bIsRearCameraOn:Z
    invoke-static {}, Lcom/android/server/SecExternalDisplayOrientation;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 126
    sget-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Landscape:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    # setter for: Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I
    invoke-static {v0}, Lcom/android/server/SecExternalDisplayOrientation;->access$102(I)I

    .line 158
    :cond_28
    :goto_28
    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v0, :cond_72

    .line 159
    const-string v0, "SecExternalDisplayOrientation_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Checking Orientation Value :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I
    invoke-static {}, Lcom/android/server/SecExternalDisplayOrientation;->access$100()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bIsRearCameraOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/SecExternalDisplayOrientation;->bIsRearCameraOn:Z
    invoke-static {}, Lcom/android/server/SecExternalDisplayOrientation;->access$000()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CAMERA_ON = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/SecExternalDisplayOrientation;->bIsFrontCameraOn:Z
    invoke-static {}, Lcom/android/server/SecExternalDisplayOrientation;->access$200()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " &"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/SecExternalDisplayOrientation;->bIsRearCameraOn:Z
    invoke-static {}, Lcom/android/server/SecExternalDisplayOrientation;->access$000()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_72
    # getter for: Lcom/android/server/SecExternalDisplayOrientation;->bIsFrontCameraOn:Z
    invoke-static {}, Lcom/android/server/SecExternalDisplayOrientation;->access$200()Z

    move-result v0

    if-nez v0, :cond_7e

    # getter for: Lcom/android/server/SecExternalDisplayOrientation;->bIsRearCameraOn:Z
    invoke-static {}, Lcom/android/server/SecExternalDisplayOrientation;->access$000()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_7e
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation$1;->this$0:Lcom/android/server/SecExternalDisplayOrientation;

    iget-object v0, v0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-nez v0, :cond_be

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation$1;->this$0:Lcom/android/server/SecExternalDisplayOrientation;

    iget-object v0, v0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_WFD:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation$1;->this$0:Lcom/android/server/SecExternalDisplayOrientation;

    iget-object v0, v0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation$1;->this$0:Lcom/android/server/SecExternalDisplayOrientation;

    iget-object v0, v0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_RVF:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 166
    :cond_be
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation$1;->this$0:Lcom/android/server/SecExternalDisplayOrientation;

    iget-object v0, v0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    # getter for: Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I
    invoke-static {}, Lcom/android/server/SecExternalDisplayOrientation;->access$100()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    goto/16 :goto_3

    .line 119
    :cond_cb
    sget-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Landscape:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    # setter for: Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I
    invoke-static {v0}, Lcom/android/server/SecExternalDisplayOrientation;->access$102(I)I

    goto/16 :goto_13

    .line 128
    :cond_d6
    sget-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Landscape:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    # setter for: Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I
    invoke-static {v0}, Lcom/android/server/SecExternalDisplayOrientation;->access$102(I)I

    goto/16 :goto_28

    .line 131
    :cond_e1
    const/16 v0, 0x87

    if-ge p1, v0, :cond_101

    .line 133
    # getter for: Lcom/android/server/SecExternalDisplayOrientation;->bIsRearCameraOn:Z
    invoke-static {}, Lcom/android/server/SecExternalDisplayOrientation;->access$000()Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 134
    sget-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Inverse_Potrait:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    # setter for: Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I
    invoke-static {v0}, Lcom/android/server/SecExternalDisplayOrientation;->access$102(I)I

    goto/16 :goto_28

    .line 136
    :cond_f6
    sget-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Inverse_Potrait:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    # setter for: Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I
    invoke-static {v0}, Lcom/android/server/SecExternalDisplayOrientation;->access$102(I)I

    goto/16 :goto_28

    .line 139
    :cond_101
    const/16 v0, 0xe1

    if-ge p1, v0, :cond_121

    .line 141
    # getter for: Lcom/android/server/SecExternalDisplayOrientation;->bIsRearCameraOn:Z
    invoke-static {}, Lcom/android/server/SecExternalDisplayOrientation;->access$000()Z

    move-result v0

    if-eqz v0, :cond_116

    .line 142
    sget-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Inverse_Landscape:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    # setter for: Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I
    invoke-static {v0}, Lcom/android/server/SecExternalDisplayOrientation;->access$102(I)I

    goto/16 :goto_28

    .line 144
    :cond_116
    sget-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Inverse_Landscape:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    # setter for: Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I
    invoke-static {v0}, Lcom/android/server/SecExternalDisplayOrientation;->access$102(I)I

    goto/16 :goto_28

    .line 146
    :cond_121
    const/16 v0, 0x13b

    if-ge p1, v0, :cond_141

    .line 148
    # getter for: Lcom/android/server/SecExternalDisplayOrientation;->bIsRearCameraOn:Z
    invoke-static {}, Lcom/android/server/SecExternalDisplayOrientation;->access$000()Z

    move-result v0

    if-eqz v0, :cond_136

    .line 149
    sget-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Potrait:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    # setter for: Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I
    invoke-static {v0}, Lcom/android/server/SecExternalDisplayOrientation;->access$102(I)I

    goto/16 :goto_28

    .line 151
    :cond_136
    sget-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Potrait:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    # setter for: Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I
    invoke-static {v0}, Lcom/android/server/SecExternalDisplayOrientation;->access$102(I)I

    goto/16 :goto_28

    .line 153
    :cond_141
    const/16 v0, 0x168

    if-ge p1, v0, :cond_28

    .line 155
    # getter for: Lcom/android/server/SecExternalDisplayOrientation;->bIsRearCameraOn:Z
    invoke-static {}, Lcom/android/server/SecExternalDisplayOrientation;->access$000()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 156
    sget-object v0, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Landscape:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    # setter for: Lcom/android/server/SecExternalDisplayOrientation;->newOrientation:I
    invoke-static {v0}, Lcom/android/server/SecExternalDisplayOrientation;->access$102(I)I

    goto/16 :goto_28
.end method
