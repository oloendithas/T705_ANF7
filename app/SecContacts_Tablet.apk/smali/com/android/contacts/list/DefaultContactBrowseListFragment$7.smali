.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;->createCustomSearchbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .locals 0

    .prologue
    .line 1227
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1231
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xbb8

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->doBoost(Landroid/content/Context;I)V

    .line 1235
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_EnableNotificationWhenDeviceMemoryFull"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1243
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isLessThan5Percent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1244
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v1, v1, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0e02cf

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1272
    :cond_0
    :goto_0
    return-void

    .line 1251
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1253
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.jcontacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1258
    const-string v1, "com.android.jcontacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1261
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsAddaContactTutorialMode:Z
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1262
    const-string v1, "tutorial_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1265
    :cond_3
    if-eqz v0, :cond_4

    .line 1266
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v0, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1268
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    # getter for: Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mIsAddaContactTutorialMode:Z
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->access$500(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1269
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$7;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
