.class Landroid/sec/clipboard/ClipboardExManager$1;
.super Landroid/os/Handler;
.source "ClipboardExManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/ClipboardExManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/clipboard/ClipboardExManager;


# direct methods
.method constructor <init>(Landroid/sec/clipboard/ClipboardExManager;)V
    .registers 2

    .prologue
    .line 118
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v4, 0x1040b19

    const v3, 0x104087e

    const/4 v5, 0x0

    .line 121
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_b8

    .line 164
    :cond_c
    :goto_c
    return-void

    .line 123
    :pswitch_d
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 125
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Landroid/sec/clipboard/ClipboardExManager;->access$100(Landroid/sec/clipboard/ClipboardExManager;)Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_36

    .line 126
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    # setter for: Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->access$102(Landroid/sec/clipboard/ClipboardExManager;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 130
    :goto_2c
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Landroid/sec/clipboard/ClipboardExManager;->access$100(Landroid/sec/clipboard/ClipboardExManager;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_c

    .line 128
    :cond_36
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Landroid/sec/clipboard/ClipboardExManager;->access$100(Landroid/sec/clipboard/ClipboardExManager;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Toast;->setText(I)V

    goto :goto_2c

    .line 134
    :pswitch_40
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 138
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v0

    .line 139
    .local v0, "rp":Landroid/sec/enterprise/RestrictionPolicy;
    invoke-virtual {v0, v5}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 145
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Landroid/sec/clipboard/ClipboardExManager;->access$100(Landroid/sec/clipboard/ClipboardExManager;)Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_82

    .line 146
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    # setter for: Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->access$102(Landroid/sec/clipboard/ClipboardExManager;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 151
    :goto_6d
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Landroid/sec/clipboard/ClipboardExManager;->access$100(Landroid/sec/clipboard/ClipboardExManager;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 153
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_c

    const-string v1, "ClipboardServiceEx"

    const-string v2, "Fail set data "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 148
    :cond_82
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Landroid/sec/clipboard/ClipboardExManager;->access$100(Landroid/sec/clipboard/ClipboardExManager;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Toast;->setText(I)V

    goto :goto_6d

    .line 159
    .end local v0    # "rp":Landroid/sec/enterprise/RestrictionPolicy;
    :pswitch_8c
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager$1;->this$0:Landroid/sec/clipboard/ClipboardExManager;

    # getter for: Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/sec/clipboard/ClipboardExManager;->access$000(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040882

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_c

    .line 121
    nop

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_d
        :pswitch_40
        :pswitch_8c
    .end packed-switch
.end method