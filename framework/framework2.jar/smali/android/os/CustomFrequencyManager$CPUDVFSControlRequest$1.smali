.class Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$1;
.super Ljava/lang/Object;
.source "CustomFrequencyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;)V
    .registers 2

    .prologue
    .line 414
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$1;->this$1:Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest$1;->this$1:Landroid/os/CustomFrequencyManager$CPUDVFSControlRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 417
    return-void
.end method