.class Landroid/webkitsec/DeviceOrientationService$1;
.super Ljava/lang/Object;
.source "DeviceOrientationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/DeviceOrientationService;->sendErrorEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Landroid/webkitsec/DeviceOrientationService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 83
    const-class v0, Landroid/webkitsec/DeviceOrientationService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/webkitsec/DeviceOrientationService$1;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Landroid/webkitsec/DeviceOrientationService;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Landroid/webkitsec/DeviceOrientationService$1;->this$0:Landroid/webkitsec/DeviceOrientationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 86
    sget-boolean v0, Landroid/webkitsec/DeviceOrientationService$1;->$assertionsDisabled:Z

    if-nez v0, :cond_1b

    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 87
    :cond_1b
    iget-object v0, p0, Landroid/webkitsec/DeviceOrientationService$1;->this$0:Landroid/webkitsec/DeviceOrientationService;

    # getter for: Landroid/webkitsec/DeviceOrientationService;->mIsRunning:Z
    invoke-static {v0}, Landroid/webkitsec/DeviceOrientationService;->access$000(Landroid/webkitsec/DeviceOrientationService;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 89
    iget-object v0, p0, Landroid/webkitsec/DeviceOrientationService$1;->this$0:Landroid/webkitsec/DeviceOrientationService;

    # getter for: Landroid/webkitsec/DeviceOrientationService;->mManager:Landroid/webkitsec/DeviceMotionAndOrientationManager;
    invoke-static {v0}, Landroid/webkitsec/DeviceOrientationService;->access$100(Landroid/webkitsec/DeviceOrientationService;)Landroid/webkitsec/DeviceMotionAndOrientationManager;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2}, Landroid/webkitsec/DeviceMotionAndOrientationManager;->onOrientationChange(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 91
    :cond_2c
    return-void
.end method
