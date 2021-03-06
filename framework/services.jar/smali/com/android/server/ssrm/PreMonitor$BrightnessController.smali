.class Lcom/android/server/ssrm/PreMonitor$BrightnessController;
.super Ljava/lang/Object;
.source "PreMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/PreMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BrightnessController"
.end annotation


# static fields
.field static final ACTION_MAX_BRIGHTNESS_CHANGED:Ljava/lang/String; = "android.intent.action.MAX_BRIGHTNESS_CHANGED"

.field static final EXTRA_CHANGE_TYPE:Ljava/lang/String; = "change_type"

.field static final EXTRA_MAX_BRIGHTNESS:Ljava/lang/String; = "max_brightness"

.field static mIntent:Landroid/content/Intent;

.field static mMaxBrightness:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 194
    const/4 v0, -0x1

    sput v0, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->mMaxBrightness:I

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAX_BRIGHTNESS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static limitMaxBrightness(I)V
    .locals 4
    .param p0, "brightness"    # I

    .prologue
    .line 205
    const-string v1, "SSRMv2:PreMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "limitMaxBrightness:: brightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    # getter for: Lcom/android/server/ssrm/PreMonitor;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$300()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 209
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, -0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/PowerManager;->setMasterBrightnessLimit(II)V

    .line 211
    invoke-static {p0}, Lcom/android/server/ssrm/Monitor;->setNotifiedMaxBrightness(I)V

    .line 212
    sput p0, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->mMaxBrightness:I

    .line 213
    return-void
.end method

.method public static limitMaxButtonBrightness(I)V
    .locals 4
    .param p0, "brightness"    # I

    .prologue
    .line 216
    const-string v1, "SSRMv2:PreMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "limitMaxButtonBrightness:: brightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    # getter for: Lcom/android/server/ssrm/PreMonitor;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$300()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 220
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0, p0}, Landroid/os/PowerManager;->setButtonBrightnessLimit(I)V

    .line 221
    return-void
.end method

.method public static notifyMaxBrightnessToSettings()V
    .locals 4

    .prologue
    .line 224
    const-string v1, "SSRMv2:PreMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMaxBrightnessToSettings:: mMaxBrightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->mMaxBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mBootComplete = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/ssrm/PreMonitor;->mBootComplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-boolean v1, Lcom/android/server/ssrm/PreMonitor;->mBootComplete:Z

    if-nez v1, :cond_0

    .line 239
    .local v0, "batteryTemp":I
    :goto_0
    return-void

    .line 230
    .end local v0    # "batteryTemp":I
    :cond_0
    sget-object v1, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->mIntent:Landroid/content/Intent;

    const-string v2, "max_brightness"

    sget v3, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->mMaxBrightness:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->updateBatteryTemperature()V

    .line 232
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getBatteryTemperature()I

    move-result v0

    .line 233
    .restart local v0    # "batteryTemp":I
    if-gez v0, :cond_1

    sget v1, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->mMaxBrightness:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 234
    sget-object v1, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->mIntent:Landroid/content/Intent;

    const-string v2, "change_type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    :goto_1
    # getter for: Lcom/android/server/ssrm/PreMonitor;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->access$300()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 236
    :cond_1
    sget-object v1, Lcom/android/server/ssrm/PreMonitor$BrightnessController;->mIntent:Landroid/content/Intent;

    const-string v2, "change_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method
