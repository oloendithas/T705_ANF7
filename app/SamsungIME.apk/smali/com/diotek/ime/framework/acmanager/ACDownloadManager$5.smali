.class Lcom/diotek/ime/framework/acmanager/ACDownloadManager$5;
.super Landroid/os/Handler;
.source "ACDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/acmanager/ACDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)V
    .locals 0

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$5;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1093
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1107
    :goto_0
    return-void

    .line 1095
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1096
    .local v1, "percentage":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;

    .line 1097
    .local v0, "cb":Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;
    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    .line 1098
    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->downloadPercentage(I)V

    goto :goto_0

    .line 1100
    :cond_0
    invoke-virtual {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->dummyDownloadComplete()V

    .line 1101
    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$5;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ACDownloadCB;->getId()I

    move-result v3

    const/4 v4, 0x0

    # invokes: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->modifySharedPreferenceByDownloadLanguage(IZ)V
    invoke-static {v2, v3, v4}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$800(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;IZ)V

    goto :goto_0

    .line 1093
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
