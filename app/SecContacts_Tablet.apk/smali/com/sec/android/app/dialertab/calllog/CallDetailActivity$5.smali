.class Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$5;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V
    .locals 0

    .prologue
    .line 761
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$5;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 764
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$5;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->finishPhoneNumerSelectedActionModeIfShown()Z
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 779
    :goto_0
    return-void

    .line 767
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$5;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 768
    .local v1, "isMMSAvailable":Z
    if-eqz v1, :cond_1

    .line 769
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$5;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;

    iget-object v2, v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ViewEntry;->tertiaryIntent:Landroid/content/Intent;

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 771
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 772
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.app.popupuireceiver"

    const-string v3, "com.sec.android.app.popupuireceiver.DisableApp"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 773
    const-string v2, "app_package_name"

    const-string v3, "com.android.mms"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 775
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$5;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v2, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
