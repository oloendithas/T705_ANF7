.class Lcom/sec/android/app/contacts/preference/SendContactDialogFragment$SendContactAdapter;
.super Landroid/widget/BaseAdapter;
.source "SendContactDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendContactAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;)V
    .locals 2

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment$SendContactAdapter;->this$0:Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 108
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment$SendContactAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 109
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 126
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 132
    if-nez p2, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment$SendContactAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0401e8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment$SendContactAdapter;->this$0:Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;

    const v0, 0x7f090446

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    # setter for: Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->mSendContactType:Landroid/widget/TextView;
    invoke-static {v1, v0}, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->access$102(Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 136
    iget-object v1, p0, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment$SendContactAdapter;->this$0:Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;

    const v0, 0x7f09022d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    # setter for: Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->mRadioButton:Landroid/widget/RadioButton;
    invoke-static {v1, v0}, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->access$202(Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;

    .line 138
    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment$SendContactAdapter;->this$0:Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->mSendType:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->access$300(Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment$SendContactAdapter;->this$0:Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->mRadioButton:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->access$200(Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 144
    :goto_0
    if-nez p1, :cond_2

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment$SendContactAdapter;->this$0:Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->mSendContactType:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->access$100(Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e0272

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 149
    :goto_1
    return-object p2

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment$SendContactAdapter;->this$0:Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->mRadioButton:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->access$200(Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment$SendContactAdapter;->this$0:Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->mSendContactType:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->access$100(Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0e0273

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
