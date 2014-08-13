.class Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$1;
.super Landroid/widget/BaseAdapter;
.source "RingtoneRecommendationDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mainMessage:[Ljava/lang/String;

.field subMessage:[Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;Landroid/view/LayoutInflater;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    iput-object p2, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 139
    new-array v0, v5, [Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e0464

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e0465

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$1;->mainMessage:[Ljava/lang/String;

    .line 143
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e0466

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$1;->subMessage:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$1;->mainMessage:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 160
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 165
    if-eqz p2, :cond_1

    move-object v3, p2

    .line 168
    .local v3, "view":Landroid/view/View;
    :goto_0
    const v5, 0x1020014

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 169
    .local v1, "text1":Landroid/widget/TextView;
    const v5, 0x1020015

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 170
    .local v2, "text2":Landroid/widget/TextView;
    const v5, 0x1020019

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 172
    .local v0, "button":Landroid/widget/RadioButton;
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$1;->mainMessage:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$1;->subMessage:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 174
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 179
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->mSelectedPosition:I
    invoke-static {v5}, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;->access$000(Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment;)I

    move-result v5

    if-ne p1, v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 181
    return-object v3

    .line 165
    .end local v0    # "button":Landroid/widget/RadioButton;
    .end local v1    # "text1":Landroid/widget/TextView;
    .end local v2    # "text2":Landroid/widget/TextView;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0401f2

    invoke-virtual {v5, v6, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 176
    .restart local v0    # "button":Landroid/widget/RadioButton;
    .restart local v1    # "text1":Landroid/widget/TextView;
    .restart local v2    # "text2":Landroid/widget/TextView;
    .restart local v3    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v5, p0, Lcom/sec/android/app/contacts/interaction/RingtoneRecommendationDialogFragment$1;->subMessage:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
