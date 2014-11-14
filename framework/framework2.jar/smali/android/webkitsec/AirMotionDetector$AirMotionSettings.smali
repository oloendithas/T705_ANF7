.class Landroid/webkitsec/AirMotionDetector$AirMotionSettings;
.super Ljava/lang/Object;
.source "AirMotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/AirMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirMotionSettings"
.end annotation


# instance fields
.field private mMotionType:I

.field private mSettingsContentResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Landroid/webkitsec/AirMotionDetector;


# direct methods
.method public constructor <init>(Landroid/webkitsec/AirMotionDetector;Landroid/content/Context;I)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "motionType"    # I

    .prologue
    .line 158
    iput-object p1, p0, Landroid/webkitsec/AirMotionDetector$AirMotionSettings;->this$0:Landroid/webkitsec/AirMotionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/AirMotionDetector$AirMotionSettings;->mSettingsContentResolver:Landroid/content/ContentResolver;

    .line 160
    iput p3, p0, Landroid/webkitsec/AirMotionDetector$AirMotionSettings;->mMotionType:I

    .line 161
    return-void
.end method


# virtual methods
.method public checkAIRPINEnalbed()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 187
    iget-object v2, p0, Landroid/webkitsec/AirMotionDetector$AirMotionSettings;->mSettingsContentResolver:Landroid/content/ContentResolver;

    const-string v3, "air_motion_clip"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_14

    .line 188
    const-string v1, "AirMotionDetector"

    const-string v2, " Air Pin Enables  in Settings"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_13
    return v0

    .line 191
    :cond_14
    const-string v0, "AirMotionDetector"

    const-string v2, " Air Pin disables in Settings"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 192
    goto :goto_13
.end method

.method public checkAirMotionEnabled()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 164
    iget-object v1, p0, Landroid/webkitsec/AirMotionDetector$AirMotionSettings;->mSettingsContentResolver:Landroid/content/ContentResolver;

    const-string v2, "air_motion_engine"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_c

    .line 173
    :goto_b
    return v0

    .line 167
    :cond_c
    iget v1, p0, Landroid/webkitsec/AirMotionDetector$AirMotionSettings;->mMotionType:I

    packed-switch v1, :pswitch_data_1c

    goto :goto_b

    .line 169
    :pswitch_12
    invoke-virtual {p0}, Landroid/webkitsec/AirMotionDetector$AirMotionSettings;->checkAirScrollEnalbed()Z

    move-result v0

    goto :goto_b

    .line 171
    :pswitch_17
    invoke-virtual {p0}, Landroid/webkitsec/AirMotionDetector$AirMotionSettings;->checkAIRPINEnalbed()Z

    move-result v0

    goto :goto_b

    .line 167
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_12
        :pswitch_17
    .end packed-switch
.end method

.method public checkAirScrollEnalbed()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 178
    iget-object v2, p0, Landroid/webkitsec/AirMotionDetector$AirMotionSettings;->mSettingsContentResolver:Landroid/content/ContentResolver;

    const-string v3, "air_motion_scroll"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_17

    iget-object v2, p0, Landroid/webkitsec/AirMotionDetector$AirMotionSettings;->mSettingsContentResolver:Landroid/content/ContentResolver;

    const-string v3, "air_motion_scroll_web_page"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_17

    .line 182
    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method
