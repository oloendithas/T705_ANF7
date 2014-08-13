.class Lcom/android/contacts/quickcontact/QuickContactActivity$21$2;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity$21;->onItemLongClicked(Lcom/android/contacts/quickcontact/Action;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$21;

.field final synthetic val$action:Lcom/android/contacts/quickcontact/Action;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity$21;Lcom/android/contacts/quickcontact/Action;)V
    .locals 0

    .prologue
    .line 2801
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$21$2;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$21;

    iput-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$21$2;->val$action:Lcom/android/contacts/quickcontact/Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2805
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$21$2;->val$action:Lcom/android/contacts/quickcontact/Action;

    invoke-interface {v3}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2806
    .local v1, "phoneNumber":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$21$2;->val$action:Lcom/android/contacts/quickcontact/Action;

    invoke-interface {v3}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 2808
    .local v2, "type":Ljava/lang/String;
    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2809
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$21$2;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$21;

    iget-object v3, v3, Lcom/android/contacts/quickcontact/QuickContactActivity$21;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->launch(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2818
    .end local v1    # "phoneNumber":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$21$2;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$21;

    iget-object v3, v3, Lcom/android/contacts/quickcontact/QuickContactActivity$21;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->close(Z)V
    invoke-static {v3, v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$900(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)V

    .line 2819
    return-void

    .line 2810
    .restart local v1    # "phoneNumber":Ljava/lang/String;
    .restart local v2    # "type":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v3, "vnd.android.cursor.item/vcall-address"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2811
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$21$2;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$21;

    iget-object v3, v3, Lcom/android/contacts/quickcontact/QuickContactActivity$21;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v4, 0x1

    invoke-static {v3, v1, v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->launch(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2814
    .end local v1    # "phoneNumber":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2815
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "QuickContact"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No activity found for intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$21$2;->val$action:Lcom/android/contacts/quickcontact/Action;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
