.class Lcom/android/contacts/detail/ContactDetailFragment$48;
.super Landroid/database/ContentObserver;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 6175
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$48;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 6179
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 6181
    const/4 v1, 0x0

    .line 6183
    .local v1, "str_temp":Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6186
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "mobile_data"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6189
    if-eqz v1, :cond_1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6190
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$48;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3300(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$48;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/CheckBox;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$48;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile1:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$48;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3500(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6192
    const-string v2, "ContactDetailFragment"

    const-string v3, "content observer"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6193
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$48;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6194
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$48;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile1:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6195
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$48;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3500(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6196
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$48;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3300(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 6212
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$48;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # setter for: Lcom/android/contacts/detail/ContactDetailFragment;->isDeviceSettingsChanged:Z
    invoke-static {v2, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4702(Lcom/android/contacts/detail/ContactDetailFragment;Z)Z

    .line 6213
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$48;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # invokes: Lcom/android/contacts/detail/ContactDetailFragment;->deviceSettingsChangedUpdateEntries()V
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4800(Lcom/android/contacts/detail/ContactDetailFragment;)V

    .line 6215
    return-void

    .line 6198
    :cond_1
    if-eqz v1, :cond_0

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6199
    const-string v2, "ContactDetailFragment"

    const-string v3, "content observer true"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6201
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$48;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3300(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$48;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/CheckBox;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$48;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile1:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$48;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3500(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6204
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$48;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6205
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$48;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile1:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6206
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$48;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3500(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6207
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$48;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3300(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method
