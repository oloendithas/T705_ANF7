.class Lcom/android/contacts/list/DefaultContactListAdapter$3;
.super Ljava/lang/Object;
.source "DefaultContactListAdapter.java"

# interfaces
.implements Lcom/samsung/android/sdk/look/airbutton/SlookAirButton$ItemSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactListAdapter;->createMenuWidgetFromView(Landroid/view/View;Landroid/net/Uri;II)Lcom/samsung/android/sdk/look/airbutton/SlookAirButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

.field final synthetic val$airButtonAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

.field final synthetic val$baseUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactListAdapter;Landroid/net/Uri;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;)V
    .locals 0

    .prologue
    .line 932
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter$3;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    iput-object p2, p0, Lcom/android/contacts/list/DefaultContactListAdapter$3;->val$baseUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/contacts/list/DefaultContactListAdapter$3;->val$airButtonAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;ILjava/lang/Object;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "itemIndex"    # I
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 936
    if-gez p2, :cond_1

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 939
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactListAdapter$3;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactListAdapter$3;->val$baseUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lcom/android/contacts/list/DefaultContactListAdapter;->getPhonenumber(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 940
    .local v4, "phoneNumber":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactListAdapter$3;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactListAdapter$3;->val$baseUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lcom/android/contacts/list/DefaultContactListAdapter;->getEmailAddress(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 941
    .local v2, "emailAddress":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactListAdapter$3;->val$airButtonAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v6, p2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 942
    .local v1, "description":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactListAdapter$3;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    # invokes: Lcom/android/contacts/list/DefaultContactListAdapter;->getDescriptionResourceId(Ljava/lang/String;)I
    invoke-static {v6, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->access$300(Lcom/android/contacts/list/DefaultContactListAdapter;Ljava/lang/String;)I

    move-result v5

    .line 943
    .local v5, "resId":I
    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 966
    :sswitch_0
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactListAdapter$3;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-virtual {v6}, Lcom/android/common/widget/CompositeCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    iget-object v7, p0, Lcom/android/contacts/list/DefaultContactListAdapter$3;->val$baseUri:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    goto :goto_0

    .line 945
    :sswitch_1
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactListAdapter$3;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    # getter for: Lcom/android/contacts/list/DefaultContactListAdapter;->mIsPhone:Z
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactListAdapter;->access$400(Lcom/android/contacts/list/DefaultContactListAdapter;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    .line 946
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    const-string v7, "tel"

    invoke-static {v7, v4, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 947
    .local v0, "callIntent":Landroid/content/Intent;
    const-string v6, "feature_skt"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 948
    const-string v6, "call_from_sec"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 950
    :cond_2
    const/high16 v6, 0x10000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 951
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactListAdapter$3;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    # getter for: Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactListAdapter;->access$500(Lcom/android/contacts/list/DefaultContactListAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 955
    .end local v0    # "callIntent":Landroid/content/Intent;
    :sswitch_2
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactListAdapter$3;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    # getter for: Lcom/android/contacts/list/DefaultContactListAdapter;->mIsSMSAvailable:Z
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactListAdapter;->access$600(Lcom/android/contacts/list/DefaultContactListAdapter;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    .line 956
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.SENDTO"

    const-string v7, "smsto"

    invoke-static {v7, v4, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 957
    .local v3, "messageIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactListAdapter$3;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    # getter for: Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/contacts/list/DefaultContactListAdapter;->access$700(Lcom/android/contacts/list/DefaultContactListAdapter;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 961
    .end local v3    # "messageIntent":Landroid/content/Intent;
    :sswitch_3
    if-eqz v2, :cond_0

    .line 962
    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactListAdapter$3;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    # invokes: Lcom/android/contacts/list/DefaultContactListAdapter;->sendEmail(Ljava/lang/String;)V
    invoke-static {v6, v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->access$800(Lcom/android/contacts/list/DefaultContactListAdapter;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 943
    :sswitch_data_0
    .sparse-switch
        0x7f0e003e -> :sswitch_0
        0x7f0e0232 -> :sswitch_3
        0x7f0e0233 -> :sswitch_2
        0x7f0e031f -> :sswitch_1
    .end sparse-switch
.end method
