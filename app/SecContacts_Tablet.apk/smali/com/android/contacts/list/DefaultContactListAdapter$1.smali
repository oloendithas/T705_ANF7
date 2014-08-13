.class Lcom/android/contacts/list/DefaultContactListAdapter$1;
.super Ljava/lang/Object;
.source "DefaultContactListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/DefaultContactListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactListAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactListAdapter;)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter$1;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 815
    sget-boolean v5, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->callPressed:Z

    if-eqz v5, :cond_1

    .line 846
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    sget v5, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPointerY:I

    iget-object v6, p0, Lcom/android/contacts/list/DefaultContactListAdapter$1;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-virtual {v6}, Lcom/android/contacts/list/DefaultContactListAdapter;->getEnableTouchScreenHeight()I

    move-result v6

    if-gt v5, v6, :cond_0

    .line 823
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactListAdapter$1;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    # getter for: Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactListAdapter;->access$000(Lcom/android/contacts/list/DefaultContactListAdapter;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 825
    .local v1, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 827
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 828
    .local v0, "baseUri":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 829
    .local v3, "mPhonenumber":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactListAdapter$1;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-virtual {v5, v0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getPhonenumber(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 830
    if-eqz v3, :cond_0

    .line 833
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 834
    const-string v5, "sip"

    invoke-static {v5, v3, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 838
    .local v4, "uri":Landroid/net/Uri;
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v2, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 839
    .local v2, "mIntent":Landroid/content/Intent;
    const-string v5, "feature_skt"

    invoke-static {v5}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 840
    const-string v5, "call_from_sec"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 842
    :cond_2
    if-eqz v2, :cond_0

    .line 843
    sput-boolean v7, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->callPressed:Z

    .line 844
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactListAdapter$1;->this$0:Lcom/android/contacts/list/DefaultContactListAdapter;

    # getter for: Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/contacts/list/DefaultContactListAdapter;->access$100(Lcom/android/contacts/list/DefaultContactListAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 836
    .end local v2    # "mIntent":Landroid/content/Intent;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_3
    const-string v5, "tel"

    invoke-static {v5, v3, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .restart local v4    # "uri":Landroid/net/Uri;
    goto :goto_1
.end method
