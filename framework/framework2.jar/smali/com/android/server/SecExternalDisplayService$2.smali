.class Lcom/android/server/SecExternalDisplayService$2;
.super Landroid/os/Handler;
.source "SecExternalDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecExternalDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SecExternalDisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/SecExternalDisplayService;)V
    .registers 2

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/server/SecExternalDisplayService$2;->this$0:Lcom/android/server/SecExternalDisplayService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 182
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 183
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$2;->this$0:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_HOMETHEATRE_CONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayToast(I)V

    .line 186
    :goto_10
    return-void

    .line 185
    :cond_11
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$2;->this$0:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_HOMETHEATRE_DISCONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayToast(I)V

    goto :goto_10
.end method
