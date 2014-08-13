.class Lcom/android/contacts/quickcontact/QuickContactActivity$16;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;->bindData(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1710
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iput-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1715
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$500(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1716
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mStarImage:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2800(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->toggle()V

    .line 1717
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$500(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mStarImage:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2800(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/contacts/ContactSaveService;->createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    .line 1719
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1721
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
