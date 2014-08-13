.class Lcom/android/contacts/detail/ContactDetailFragment$49;
.super Landroid/telephony/PhoneStateListener;
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
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 0

    .prologue
    .line 6219
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$49;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6222
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 6223
    packed-switch p1, :pswitch_data_0

    .line 6263
    :cond_0
    :goto_0
    return-void

    .line 6225
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$49;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3300(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$49;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$49;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$49;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$49;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->isMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6229
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$49;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6230
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$49;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6231
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$49;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3500(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6232
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$49;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3300(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 6238
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$49;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3300(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$49;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$49;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3500(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$49;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6241
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$49;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6242
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$49;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6243
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$49;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3500(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6244
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$49;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3300(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 6249
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$49;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3300(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$49;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$49;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$49;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3500(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6252
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$49;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6253
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$49;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3600(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6254
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$49;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->textViewProfile:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3500(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6255
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$49;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->videoViewLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3300(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 6223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
