.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$26;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->setSearchLayout(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

.field final synthetic val$mContact:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;)V
    .locals 0

    .prologue
    .line 8197
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$26;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$26;->val$mContact:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 8199
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "content://com.android.contacts/contacts/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 8200
    .local v0, "bufId":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$26;->val$mContact:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 8201
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$26;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$26;->val$mContact:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getContactID()I

    move-result v3

    # invokes: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->getContactIdByRawContactId(I)I
    invoke-static {v2, v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$5200(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8205
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 8206
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$26;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-virtual {v2, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 8207
    return-void

    .line 8203
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$26;->val$mContact:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;

    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ContactItem;->getContactID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
