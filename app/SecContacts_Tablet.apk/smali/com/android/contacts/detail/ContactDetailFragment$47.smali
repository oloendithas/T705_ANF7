.class Lcom/android/contacts/detail/ContactDetailFragment$47;
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
    .line 6119
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$47;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfchange"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6122
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 6124
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$47;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->isAirplaneModeEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 6125
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$47;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3300(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$47;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$47;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$47;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3500(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6127
    const-string v0, "ContactDetailFragment"

    const-string v1, "content observer"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 6128
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$47;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6129
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$47;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6130
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$47;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3500(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6131
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$47;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3300(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 6148
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$47;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # setter for: Lcom/android/contacts/detail/ContactDetailFragment;->isDeviceSettingsChanged:Z
    invoke-static {v0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4702(Lcom/android/contacts/detail/ContactDetailFragment;Z)Z

    .line 6149
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$47;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # invokes: Lcom/android/contacts/detail/ContactDetailFragment;->deviceSettingsChangedUpdateEntries()V
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4800(Lcom/android/contacts/detail/ContactDetailFragment;)V

    .line 6150
    return-void

    .line 6135
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$47;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3300(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$47;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$47;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$47;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3500(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6138
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$47;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6139
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$47;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6140
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$47;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3500(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6141
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$47;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3300(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method
