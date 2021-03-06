.class public abstract Lcom/android/server/ssrm/settings/BatteryStatesController;
.super Ljava/lang/Object;
.source "BatteryStatesController.java"


# instance fields
.field private mTemperature:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addState(Lcom/android/server/ssrm/settings/BatteryState;)V
.end method

.method protected abstract dumpStateChangeData()Ljava/lang/String;
.end method

.method public abstract getActiveBatteryState(Z)Lcom/android/server/ssrm/settings/BatteryState;
.end method

.method public abstract removeState(Lcom/android/server/ssrm/settings/BatteryState;)V
.end method

.method protected abstract setActiveState(II)V
.end method

.method public final setTemperature(I)V
    .locals 2
    .param p1, "temperature"    # I

    .prologue
    .line 41
    iget v1, p0, Lcom/android/server/ssrm/settings/BatteryStatesController;->mTemperature:I

    if-eq v1, p1, :cond_0

    .line 42
    iget v0, p0, Lcom/android/server/ssrm/settings/BatteryStatesController;->mTemperature:I

    .line 43
    .local v0, "oldTemperature":I
    iput p1, p0, Lcom/android/server/ssrm/settings/BatteryStatesController;->mTemperature:I

    .line 44
    iget v1, p0, Lcom/android/server/ssrm/settings/BatteryStatesController;->mTemperature:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/settings/BatteryStatesController;->setActiveState(II)V

    .line 46
    .end local v0    # "oldTemperature":I
    :cond_0
    return-void
.end method
