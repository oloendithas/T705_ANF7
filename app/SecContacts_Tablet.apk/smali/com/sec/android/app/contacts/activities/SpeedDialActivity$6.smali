.class Lcom/sec/android/app/contacts/activities/SpeedDialActivity$6;
.super Ljava/lang/Object;
.source "SpeedDialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V
    .locals 0

    .prologue
    .line 1462
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$6;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1465
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1467
    .local v1, "id":I
    packed-switch v1, :pswitch_data_0

    .line 1513
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$6;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIPCallButtonDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$800(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 1514
    return-void

    .line 1470
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$6;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1471
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$6;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$6;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v3, v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 1474
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$6;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1481
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$6;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1482
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$6;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getIPCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1483
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$6;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1490
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$6;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1491
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$6;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$700()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getVideoCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 1492
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$6;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1499
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_3
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$6;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1501
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "smsto"

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$6;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSelectedPhoneNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1503
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$6;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1504
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1505
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SpeedDialActivity"

    const-string v4, "No activity found for intent: android.intent.action.SENDTO"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1467
    :pswitch_data_0
    .packed-switch 0x7f0901b0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
