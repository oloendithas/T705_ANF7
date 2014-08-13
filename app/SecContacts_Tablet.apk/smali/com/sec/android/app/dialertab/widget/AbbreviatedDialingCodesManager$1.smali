.class Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$1;
.super Landroid/content/BroadcastReceiver;
.source "AbbreviatedDialingCodesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->registerReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$1;->this$0:Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$1;->this$0:Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager$1;->this$0:Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->updateCall()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/android/app/dialertab/widget/AbbreviatedDialingCodesManager;->fileExist:Z

    .line 159
    const-string v0, "AbbreviatedDialingCodesManager"

    const-string v1, "received change chameleon list"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method
