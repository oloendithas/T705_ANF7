.class public Landroid/os/SystemVibrator;
.super Landroid/os/Vibrator;
.source "SystemVibrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SystemVibrator$MagnitudeType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Vibrator"


# instance fields
.field private final TRACE_DEBUG:Z

.field private final mPackageName:Ljava/lang/String;

.field private final mService:Landroid/os/IVibratorService;

.field private final mToken:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/SystemVibrator;->TRACE_DEBUG:Z

    .line 35
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    .line 38
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "vibrator"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVibratorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/SystemVibrator;->TRACE_DEBUG:Z

    .line 35
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "vibrator"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVibratorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    .line 47
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 5

    .prologue
    .line 250
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_5

    .line 262
    :goto_4
    return-void

    .line 254
    :cond_5
    const-string v1, "Vibrator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called cancel() API - PUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", PackageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :try_start_2d
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    iget-object v2, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2}, Landroid/os/IVibratorService;->cancelVibrate(Landroid/os/IBinder;)V

    .line 258
    const-string v1, "Vibrator"

    const-string v2, "Vibrator.cancel()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_3b} :catch_3c

    goto :goto_4

    .line 259
    :catch_3c
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Vibrator"

    const-string v2, "Failed to cancel vibration."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public getMaxMagnitude()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 237
    :try_start_1
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_d

    .line 238
    const-string v1, "Vibrator"

    const-string v2, "Failed to vibrate; no vibrator service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_c
    return v0

    .line 241
    :cond_d
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v1}, Landroid/os/IVibratorService;->getMaxMagnitude()I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_14

    move-result v0

    goto :goto_c

    .line 242
    :catch_14
    move-exception v1

    goto :goto_c
.end method

.method public hasVibrator()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 61
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v1, :cond_d

    .line 62
    const-string v1, "Vibrator"

    const-string v2, "Failed to vibrate; no vibrator service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_c
    return v0

    .line 66
    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v1}, Landroid/os/IVibratorService;->hasVibrator()Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_14

    move-result v0

    goto :goto_c

    .line 67
    :catch_14
    move-exception v1

    goto :goto_c
.end method

.method public resetMagnitude()V
    .registers 2

    .prologue
    .line 391
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v0}, Landroid/os/IVibratorService;->resetMagnitude()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 394
    :goto_5
    return-void

    .line 392
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setMagnitude(I)V
    .registers 3
    .param p1, "magnitude"    # I

    .prologue
    .line 384
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-interface {v0, p1}, Landroid/os/IVibratorService;->setMagnitude(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 387
    :goto_5
    return-void

    .line 385
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public vibrate(ILjava/lang/String;J)V
    .registers 11
    .param p1, "owningUid"    # I
    .param p2, "owningPackage"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J

    .prologue
    .line 89
    const-string v0, "Vibrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called vibrate(int, String, long) API - PUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/SystemVibrator;->vibrate(ILjava/lang/String;JI)V

    .line 91
    return-void
.end method

.method public vibrate(ILjava/lang/String;JI)V
    .registers 14
    .param p1, "owningUid"    # I
    .param p2, "owningPackage"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "magnitude"    # I

    .prologue
    .line 105
    const-string v0, "Vibrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrate - PUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v0, :cond_43

    .line 109
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate; no vibrator service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_42
    return-void

    .line 113
    :cond_43
    :try_start_43
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    iget-object v5, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/os/IVibratorService;->vibrateMagnitude(ILjava/lang/String;JLandroid/os/IBinder;I)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4e} :catch_4f

    goto :goto_42

    .line 114
    :catch_4f
    move-exception v7

    .line 115
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate."

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42
.end method

.method public vibrate(ILjava/lang/String;[JI)V
    .registers 12
    .param p1, "owningUid"    # I
    .param p2, "owningPackage"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I

    .prologue
    .line 154
    const-string v0, "Vibrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrate - PUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pattern, repeat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v0, :cond_39

    .line 158
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate; no vibrator service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_38
    return-void

    .line 164
    :cond_39
    array-length v0, p3

    if-ge p4, v0, :cond_51

    .line 166
    :try_start_3c
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    iget-object v5, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/os/IVibratorService;->vibratePattern(ILjava/lang/String;[JILandroid/os/IBinder;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_47} :catch_48

    goto :goto_38

    .line 167
    :catch_48
    move-exception v6

    .line 168
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    .line 171
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_51
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public vibrate(J)V
    .registers 9
    .param p1, "milliseconds"    # J

    .prologue
    .line 74
    const-string v0, "Vibrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called vibrate(long) API - PUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    const/4 v5, -0x1

    move-object v0, p0

    move-wide v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/os/SystemVibrator;->vibrate(ILjava/lang/String;JI)V

    .line 76
    return-void
.end method

.method public vibrate(JLandroid/os/SystemVibrator$MagnitudeType;)V
    .registers 11
    .param p1, "milliseconds"    # J
    .param p3, "magnitudeType"    # Landroid/os/SystemVibrator$MagnitudeType;

    .prologue
    .line 128
    const-string v0, "Vibrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrate - PUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", magType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v0, :cond_4d

    .line 132
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate; no vibrator service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_4c
    return-void

    .line 136
    :cond_4d
    :try_start_4d
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    move-wide v3, p1

    invoke-interface/range {v0 .. v6}, Landroid/os/IVibratorService;->vibrateMagnitudeType(ILjava/lang/String;JLandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_5f} :catch_60

    goto :goto_4c

    .line 137
    :catch_60
    move-exception v0

    goto :goto_4c
.end method

.method public vibrate([JI)V
    .registers 6
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I

    .prologue
    .line 80
    const-string v0, "Vibrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called vibrate(long[], int) API - PUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/os/SystemVibrator;->vibrate(ILjava/lang/String;[JI)V

    .line 82
    return-void
.end method

.method public vibrate([JII)V
    .registers 12
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I
    .param p3, "magnitude"    # I

    .prologue
    .line 184
    const-string v0, "Vibrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrate - PUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pattern, repeat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v0, :cond_49

    .line 188
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate; no vibrator service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_48
    return-void

    .line 194
    :cond_49
    array-length v0, p1

    if-ge p2, v0, :cond_66

    .line 196
    :try_start_4c
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    move-object v3, p1

    move v4, p2

    move v6, p3

    invoke-interface/range {v0 .. v6}, Landroid/os/IVibratorService;->vibratePatternByMagnitude(ILjava/lang/String;[JILandroid/os/IBinder;I)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_5c} :catch_5d

    goto :goto_48

    .line 197
    :catch_5d
    move-exception v7

    .line 198
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate."

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48

    .line 201
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_66
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public vibrate([JILandroid/os/SystemVibrator$MagnitudeType;)V
    .registers 12
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I
    .param p3, "magnitudeType"    # Landroid/os/SystemVibrator$MagnitudeType;

    .prologue
    .line 214
    const-string v0, "Vibrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrate - PUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pattern, repeat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", magType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    if-nez v0, :cond_4d

    .line 218
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate; no vibrator service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_4c
    return-void

    .line 224
    :cond_4d
    array-length v0, p1

    if-ge p2, v0, :cond_6d

    .line 226
    :try_start_50
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, p1

    move v4, p2

    invoke-interface/range {v0 .. v6}, Landroid/os/IVibratorService;->vibratePatternByMagnitudeType(ILjava/lang/String;[JILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_63} :catch_64

    goto :goto_4c

    .line 227
    :catch_64
    move-exception v7

    .line 228
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate."

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4c

    .line 231
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_6d
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public vibrateCall(I)V
    .registers 5
    .param p1, "type"    # I

    .prologue
    .line 355
    const-string v0, "Vibrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called vibrateCall() API - PUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :try_start_32
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Landroid/os/IVibratorService;->vibrateCall(ILjava/lang/String;I)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3d} :catch_3e

    .line 362
    :goto_3d
    return-void

    .line 360
    :catch_3e
    move-exception v0

    goto :goto_3d
.end method

.method public vibrateImmVibe(I)V
    .registers 5
    .param p1, "type"    # I

    .prologue
    .line 265
    const-string v0, "Vibrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called vibrateImmVibe(int) API - PUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    sget-object v0, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {p0, p1, v0}, Landroid/os/SystemVibrator;->vibrateImmVibe(ILandroid/os/SystemVibrator$MagnitudeType;)V

    .line 267
    return-void
.end method

.method public vibrateImmVibe(II)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "magnitude"    # I

    .prologue
    .line 278
    const-string v0, "Vibrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrateImmVibe - PUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :try_start_3d
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/os/IVibratorService;->vibrateImmVibe(ILjava/lang/String;II)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_48} :catch_49

    .line 285
    :goto_48
    return-void

    .line 283
    :catch_49
    move-exception v0

    goto :goto_48
.end method

.method public vibrateImmVibe(ILandroid/os/SystemVibrator$MagnitudeType;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "magnitudeType"    # Landroid/os/SystemVibrator$MagnitudeType;

    .prologue
    .line 296
    const-string v0, "Vibrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrateImmVibe - PUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", magType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :try_start_41
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, p1, v3}, Landroid/os/IVibratorService;->vibrateImmVibeMagnitudeType(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_50} :catch_51

    .line 303
    :goto_50
    return-void

    .line 301
    :catch_51
    move-exception v0

    goto :goto_50
.end method

.method public vibrateImmVibe([B)V
    .registers 5
    .param p1, "pattern"    # [B

    .prologue
    .line 306
    const-string v0, "Vibrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called vibrateImmVibe(byte []) API - PUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    sget-object v0, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {p0, p1, v0}, Landroid/os/SystemVibrator;->vibrateImmVibe([BLandroid/os/SystemVibrator$MagnitudeType;)V

    .line 308
    return-void
.end method

.method public vibrateImmVibe([BI)V
    .registers 6
    .param p1, "pattern"    # [B
    .param p2, "magnitude"    # I

    .prologue
    .line 319
    const-string v0, "Vibrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrateImmVibe - PUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pattern, mag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :try_start_33
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/os/IVibratorService;->vibrateImmVibePattern(ILjava/lang/String;[BI)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3e} :catch_3f

    .line 326
    :goto_3e
    return-void

    .line 324
    :catch_3f
    move-exception v0

    goto :goto_3e
.end method

.method public vibrateImmVibe([BLandroid/os/SystemVibrator$MagnitudeType;)V
    .registers 7
    .param p1, "pattern"    # [B
    .param p2, "magnitudeType"    # Landroid/os/SystemVibrator$MagnitudeType;

    .prologue
    .line 337
    const-string v0, "Vibrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrateImmVibe - PUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pattern, magType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :try_start_37
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, p1, v3}, Landroid/os/IVibratorService;->vibrateImmVibePatternMagnitudeType(ILjava/lang/String;[BLjava/lang/String;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_46} :catch_47

    .line 344
    :goto_46
    return-void

    .line 342
    :catch_47
    move-exception v0

    goto :goto_46
.end method

.method public vibrateNotification(I)V
    .registers 5
    .param p1, "type"    # I

    .prologue
    .line 373
    const-string v0, "Vibrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called vibrateNotification() API - PUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :try_start_32
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/SystemVibrator;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Landroid/os/IVibratorService;->vibrateNotification(ILjava/lang/String;I)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3d} :catch_3e

    .line 380
    :goto_3d
    return-void

    .line 378
    :catch_3e
    move-exception v0

    goto :goto_3d
.end method
