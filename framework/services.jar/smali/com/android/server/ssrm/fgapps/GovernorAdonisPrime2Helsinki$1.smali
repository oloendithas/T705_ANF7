.class Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki$1;
.super Landroid/os/Handler;
.source "GovernorAdonisPrime2Helsinki.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki$1;->this$0:Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 287
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 301
    :goto_0
    return-void

    .line 290
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki$1;->this$0:Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;

    iget-object v1, v1, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->TAG:Ljava/lang/String;

    const/16 v2, 0x19

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->x([I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki$1;->this$0:Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;

    invoke-virtual {v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki$1;->this$0:Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;

    invoke-static {v0}, Lcom/android/server/ssrm/HotGameList;->isKnownGame(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsKnownGameInForeground:Z

    .line 296
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki$1;->this$0:Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;

    invoke-virtual {v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    goto :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 290
    :array_0
    .array-data 4
        0x37
        0x29
        0x3d
        0x25
        0x31
        0x34
        0x35
        0x2d
        0x34
        0x25
        0x3d
        0x3b
        0x37
        0x3f
        0x25
        0x3c
        0x35
        0x28
        0x3f
        0x3d
        0x28
        0x35
        0x2f
        0x34
        0x3e
    .end array-data
.end method
