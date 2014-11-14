.class Landroid/os/DVFSHelper$Model;
.super Ljava/lang/Object;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Model"
.end annotation


# instance fields
.field protected AMS_RESUME_ARM_FREQ:I

.field protected AMS_RESUME_BUS_FREQ:I

.field protected AMS_RESUME_CPU_CORE:I

.field protected AMS_RESUME_GPU_FREQ:I

.field protected APP_LAUNCH_BUS_FREQ:I

.field protected APP_LAUNCH_GPU_FREQ:I

.field protected BROWSER_FLING_ARM_FREQ:I

.field protected GALLERY_TOUCH_ARM_FREQ:I

.field protected GROUP_PLAY_ARM_FREQ:I

.field protected LAUNCHER_TOUCH_ARM_FREQ:I

.field protected LAUNCHER_TOUCH_BOOST_TIMEOUT:I

.field protected LAUNCHER_TOUCH_GPU_FREQ:I

.field protected LIST_SCROLL_ARM_FREQ:I

.field protected LIST_SCROLL_BUS_FREQ:I

.field protected LIST_SCROLL_GPU_FREQ:I

.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method private constructor <init>(Landroid/os/DVFSHelper;)V
    .registers 2

    .prologue
    .line 853
    iput-object p1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/DVFSHelper;Landroid/os/DVFSHelper$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/DVFSHelper;
    .param p2, "x1"    # Landroid/os/DVFSHelper$1;

    .prologue
    .line 853
    invoke-direct {p0, p1}, Landroid/os/DVFSHelper$Model;-><init>(Landroid/os/DVFSHelper;)V

    return-void
.end method


# virtual methods
.method public getAMSResumeBUSFreq()I
    .registers 2

    .prologue
    .line 889
    iget v0, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_BUS_FREQ:I

    return v0
.end method

.method public getAMSResumeCPUCore()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 892
    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    # getter for: Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I
    invoke-static {v0}, Landroid/os/DVFSHelper;->access$000(Landroid/os/DVFSHelper;)[I

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    # getter for: Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I
    invoke-static {v0}, Landroid/os/DVFSHelper;->access$000(Landroid/os/DVFSHelper;)[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2b

    .line 893
    iget v0, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_CPU_CORE:I

    iget-object v1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    # getter for: Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I
    invoke-static {v1}, Landroid/os/DVFSHelper;->access$000(Landroid/os/DVFSHelper;)[I

    move-result-object v1

    aget v1, v1, v2

    if-le v0, v1, :cond_28

    .line 894
    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    # getter for: Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I
    invoke-static {v0}, Landroid/os/DVFSHelper;->access$000(Landroid/os/DVFSHelper;)[I

    move-result-object v0

    aget v0, v0, v2

    .line 899
    :goto_27
    return v0

    .line 896
    :cond_28
    iget v0, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_CPU_CORE:I

    goto :goto_27

    .line 899
    :cond_2b
    const/4 v0, -0x1

    goto :goto_27
.end method

.method public getAMSResumeCPUFreq()I
    .registers 5

    .prologue
    .line 924
    iget-object v1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    const-wide v2, 0x3fe6666666666666L

    invoke-virtual {v1, v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyByPercentOfMaximumForSSRM(D)I

    move-result v0

    .line 925
    .local v0, "freq":I
    if-gtz v0, :cond_f

    .line 926
    const/4 v0, -0x1

    .line 931
    .end local v0    # "freq":I
    :cond_e
    :goto_e
    return v0

    .line 928
    .restart local v0    # "freq":I
    :cond_f
    iget v1, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_ARM_FREQ:I

    if-gt v0, v1, :cond_e

    .line 931
    iget-object v1, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    iget v2, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_ARM_FREQ:I

    invoke-virtual {v1, v2}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v0

    goto :goto_e
.end method

.method public getAMSResumeGPUFreq()I
    .registers 2

    .prologue
    .line 886
    iget v0, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_GPU_FREQ:I

    return v0
.end method

.method public getAppLaunchBUSFreq()I
    .registers 2

    .prologue
    .line 906
    iget v0, p0, Landroid/os/DVFSHelper$Model;->APP_LAUNCH_BUS_FREQ:I

    return v0
.end method

.method public getAppLaunchGPUFreq()I
    .registers 2

    .prologue
    .line 903
    iget v0, p0, Landroid/os/DVFSHelper$Model;->APP_LAUNCH_GPU_FREQ:I

    return v0
.end method

.method public getBrowserFlingCpuFreq()I
    .registers 2

    .prologue
    .line 921
    iget v0, p0, Landroid/os/DVFSHelper$Model;->BROWSER_FLING_ARM_FREQ:I

    return v0
.end method

.method public getGalleryTouchCPUFreq()I
    .registers 2

    .prologue
    .line 877
    iget v0, p0, Landroid/os/DVFSHelper$Model;->GALLERY_TOUCH_ARM_FREQ:I

    return v0
.end method

.method public getLauncherTouchCPUFreq()I
    .registers 2

    .prologue
    .line 880
    iget v0, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_ARM_FREQ:I

    return v0
.end method

.method public getLauncherTouchGPUFreq()I
    .registers 2

    .prologue
    .line 883
    iget v0, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_GPU_FREQ:I

    return v0
.end method

.method public getListScrollBUSFreq()I
    .registers 2

    .prologue
    .line 915
    iget v0, p0, Landroid/os/DVFSHelper$Model;->LIST_SCROLL_BUS_FREQ:I

    return v0
.end method

.method public getListScrollCPUFreq()I
    .registers 2

    .prologue
    .line 909
    iget v0, p0, Landroid/os/DVFSHelper$Model;->LIST_SCROLL_ARM_FREQ:I

    return v0
.end method

.method public getListScrollGPUFreq()I
    .registers 2

    .prologue
    .line 912
    iget v0, p0, Landroid/os/DVFSHelper$Model;->LIST_SCROLL_GPU_FREQ:I

    return v0
.end method

.method public getRotationCPUFreq()I
    .registers 3

    .prologue
    .line 935
    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    # getter for: Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I
    invoke-static {v0}, Landroid/os/DVFSHelper;->access$100(Landroid/os/DVFSHelper;)[I

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    # getter for: Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I
    invoke-static {v0}, Landroid/os/DVFSHelper;->access$100(Landroid/os/DVFSHelper;)[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1c

    .line 936
    iget-object v0, p0, Landroid/os/DVFSHelper$Model;->this$0:Landroid/os/DVFSHelper;

    # getter for: Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I
    invoke-static {v0}, Landroid/os/DVFSHelper;->access$100(Landroid/os/DVFSHelper;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 938
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, -0x1

    goto :goto_1b
.end method

.method public getShareMusicCPUFreq()I
    .registers 2

    .prologue
    .line 918
    iget v0, p0, Landroid/os/DVFSHelper$Model;->GROUP_PLAY_ARM_FREQ:I

    return v0
.end method

.method public getTimeoutForAction(Ljava/lang/String;)I
    .registers 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 871
    const-string v0, "Launcher_touch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 872
    iget v0, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 874
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public onAppLaunchEvent(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 942
    return-void
.end method
