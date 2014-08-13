.class Lcom/android/contacts/detail/ContactDetailUpdatesFragment$2;
.super Ljava/lang/Object;
.source "ContactDetailUpdatesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailUpdatesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailUpdatesFragment;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment$2;->this$0:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;

    .line 83
    .local v3, "tag":Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;
    if-nez v3, :cond_0

    .line 96
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment$2;->this$0:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    iget-object v5, v3, Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;->streamItem:Lcom/android/contacts/util/StreamItemEntry;

    # invokes: Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->getAccountTypeForStreamItemEntry(Lcom/android/contacts/util/StreamItemEntry;)Lcom/android/contacts/model/AccountType;
    invoke-static {v4, v5}, Lcom/android/contacts/detail/ContactDetailUpdatesFragment;->access$000(Lcom/android/contacts/detail/ContactDetailUpdatesFragment;Lcom/android/contacts/util/StreamItemEntry;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 88
    .local v0, "accountType":Lcom/android/contacts/model/AccountType;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3}, Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;->getStreamItemPhotoUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 89
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, v0, Lcom/android/contacts/model/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getViewStreamItemPhotoActivity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    :try_start_0
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailUpdatesFragment$2;->this$0:Lcom/android/contacts/detail/ContactDetailUpdatesFragment;

    invoke-virtual {v4, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
