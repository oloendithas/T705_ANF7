.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$43;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V
    .locals 0

    .prologue
    .line 12778
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$43;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 12780
    const/4 v1, 0x0

    .line 12782
    .local v1, "temp":Ljava/lang/String;
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "* Keystring parsing service * onServiceConnected()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 12783
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$43;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mMessenger:Landroid/os/Messenger;
    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$8402(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 12784
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$43;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v3, 0x1

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mIsServiceJustConnected:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$8502(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    .line 12787
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$43;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mDigits:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$900(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$8600(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 12793
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12794
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$43;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->sendMessage(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$8700(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Ljava/lang/String;)V

    .line 12796
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$43;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v3, 0x0

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mIsServiceJustConnected:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$8502(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Z)Z

    .line 12798
    return-void

    .line 12789
    :catch_0
    move-exception v0

    .line 12790
    .local v0, "e":Ljava/lang/NullPointerException;
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NullPointerException of mDigits"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 12801
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "* Keystring parsing service * onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 12802
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$43;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mMessenger:Landroid/os/Messenger;
    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$8402(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 12803
    return-void
.end method
