.class Landroid/os/DVFSHelper$ModelJBP;
.super Landroid/os/DVFSHelper$Model;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DVFSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelJBP"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/DVFSHelper;


# direct methods
.method constructor <init>(Landroid/os/DVFSHelper;)V
    .registers 5

    .prologue
    const v2, 0x16e360

    const/4 v1, -0x1

    .line 946
    iput-object p1, p0, Landroid/os/DVFSHelper$ModelJBP;->this$0:Landroid/os/DVFSHelper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/DVFSHelper$Model;-><init>(Landroid/os/DVFSHelper;Landroid/os/DVFSHelper$1;)V

    .line 947
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_BOOST_TIMEOUT:I

    .line 948
    iput v2, p0, Landroid/os/DVFSHelper$Model;->GALLERY_TOUCH_ARM_FREQ:I

    .line 949
    iput v2, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_ARM_FREQ:I

    .line 950
    iput v1, p0, Landroid/os/DVFSHelper$Model;->LAUNCHER_TOUCH_GPU_FREQ:I

    .line 951
    const v0, 0x124f80

    iput v0, p0, Landroid/os/DVFSHelper$Model;->GROUP_PLAY_ARM_FREQ:I

    .line 952
    const v0, 0xc3500

    iput v0, p0, Landroid/os/DVFSHelper$Model;->LIST_SCROLL_ARM_FREQ:I

    .line 953
    iput v1, p0, Landroid/os/DVFSHelper$Model;->LIST_SCROLL_GPU_FREQ:I

    .line 954
    iput v1, p0, Landroid/os/DVFSHelper$Model;->LIST_SCROLL_BUS_FREQ:I

    .line 955
    const/4 v0, 0x2

    sput v0, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    .line 956
    const v0, 0x118c30

    iput v0, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_ARM_FREQ:I

    .line 957
    iput v1, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_GPU_FREQ:I

    .line 958
    iput v1, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_BUS_FREQ:I

    .line 959
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/DVFSHelper$Model;->AMS_RESUME_CPU_CORE:I

    .line 960
    const/16 v0, 0x12c

    sput v0, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 961
    iput v1, p0, Landroid/os/DVFSHelper$Model;->APP_LAUNCH_GPU_FREQ:I

    .line 962
    iput v1, p0, Landroid/os/DVFSHelper$Model;->APP_LAUNCH_BUS_FREQ:I

    .line 963
    iput v1, p0, Landroid/os/DVFSHelper$Model;->BROWSER_FLING_ARM_FREQ:I

    .line 964
    return-void
.end method
