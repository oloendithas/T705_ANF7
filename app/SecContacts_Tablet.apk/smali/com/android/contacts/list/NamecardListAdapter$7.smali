.class Lcom/android/contacts/list/NamecardListAdapter$7;
.super Ljava/lang/Object;
.source "NamecardListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/NamecardListAdapter;->buildDialog(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/NamecardListAdapter;

.field final synthetic val$possibleActions:Ljava/util/ArrayList;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/contacts/list/NamecardListAdapter;ILjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/contacts/list/NamecardListAdapter$7;->this$0:Lcom/android/contacts/list/NamecardListAdapter;

    iput p2, p0, Lcom/android/contacts/list/NamecardListAdapter$7;->val$type:I

    iput-object p3, p0, Lcom/android/contacts/list/NamecardListAdapter$7;->val$possibleActions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 545
    :try_start_0
    iget v4, p0, Lcom/android/contacts/list/NamecardListAdapter$7;->val$type:I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v4, :pswitch_data_0

    .line 569
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 570
    return-void

    .line 547
    :pswitch_0
    :try_start_1
    iget-object v4, p0, Lcom/android/contacts/list/NamecardListAdapter$7;->val$possibleActions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/contacts/list/NamecardListAdapter$7;->this$0:Lcom/android/contacts/list/NamecardListAdapter;

    # getter for: Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/list/NamecardListAdapter;->access$1200(Lcom/android/contacts/list/NamecardListAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 549
    .local v2, "phoneIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/contacts/list/NamecardListAdapter$7;->this$0:Lcom/android/contacts/list/NamecardListAdapter;

    # getter for: Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/list/NamecardListAdapter;->access$1300(Lcom/android/contacts/list/NamecardListAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 567
    .end local v2    # "phoneIntent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 552
    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    const-string v6, "smsto"

    iget-object v4, p0, Lcom/android/contacts/list/NamecardListAdapter$7;->val$possibleActions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, ","

    const-string v8, "P"

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v7, ";"

    const-string v8, "W"

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v6, v4, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 555
    .local v3, "smsIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/contacts/list/NamecardListAdapter$7;->this$0:Lcom/android/contacts/list/NamecardListAdapter;

    # getter for: Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/list/NamecardListAdapter;->access$1400(Lcom/android/contacts/list/NamecardListAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 557
    const-string v4, "com.android.mms"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/list/NamecardListAdapter$7;->this$0:Lcom/android/contacts/list/NamecardListAdapter;

    # getter for: Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/list/NamecardListAdapter;->access$1500(Lcom/android/contacts/list/NamecardListAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 562
    .end local v3    # "smsIntent":Landroid/content/Intent;
    :pswitch_2
    const-string v5, "mailto"

    iget-object v4, p0, Lcom/android/contacts/list/NamecardListAdapter$7;->val$possibleActions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 563
    .local v1, "mailUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 564
    .local v0, "emailIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/contacts/list/NamecardListAdapter$7;->this$0:Lcom/android/contacts/list/NamecardListAdapter;

    # getter for: Lcom/android/contacts/list/NamecardListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/contacts/list/NamecardListAdapter;->access$1600(Lcom/android/contacts/list/NamecardListAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
