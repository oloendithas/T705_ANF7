.class Lcom/android/contacts/detail/ContactDetailFragment$43;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment;->makeRingtoneEntry(Ljava/lang/String;)V
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
    .line 3811
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$43;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 3815
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$43;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$43;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$43;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v1, :cond_1

    .line 3817
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$43;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    .line 3818
    .local v0, "peopleActivity":Lcom/android/contacts/activities/PeopleActivity;
    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->clearCustomSearchViewFocus()V

    .line 3821
    .end local v0    # "peopleActivity":Lcom/android/contacts/activities/PeopleActivity;
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$43;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3827
    :goto_0
    return-void

    .line 3822
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$43;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # invokes: Lcom/android/contacts/detail/ContactDetailFragment;->isKnoxOrPersonalAccount()Z
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1300(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3823
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$43;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e018e

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3826
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$43;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->onPhoneRingtoneChosen()V

    goto :goto_0
.end method
