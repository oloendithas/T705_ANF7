.class Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AccountPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/group/AccountPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/contacts/model/AccountWithDataSet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/group/AccountPickerFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/group/AccountPickerFragment;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p4, "accounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;->this$0:Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    .line 260
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 261
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 269
    if-eqz p2, :cond_0

    .line 270
    move-object v3, p2

    .line 271
    .local v3, "result":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;

    .line 280
    .local v4, "viewCache":Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountWithDataSet;

    .line 282
    .local v1, "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;->this$0:Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    # getter for: Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;
    invoke-static {v5}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->access$100(Lcom/sec/android/app/contacts/group/AccountPickerFragment;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/contacts/model/AccountWithDataSet;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 283
    .local v0, "accountType":Lcom/android/contacts/model/AccountType;
    iget-object v5, v4, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;->accountType:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;->this$0:Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    # getter for: Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->access$000(Lcom/sec/android/app/contacts/group/AccountPickerFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v6, v4, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;->accountName:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v5, v5, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    const-string v5, "vnd.sec.contact.phone"

    iget-object v6, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 288
    iget-object v5, v4, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;->accountName:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;->this$0:Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    # getter for: Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;
    invoke-static {v5}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->access$200(Lcom/sec/android/app/contacts/group/AccountPickerFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 294
    iget-object v5, v4, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 299
    :goto_2
    return-object v3

    .line 273
    .end local v0    # "accountType":Lcom/android/contacts/model/AccountType;
    .end local v1    # "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v3    # "result":Landroid/view/View;
    .end local v4    # "viewCache":Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;->this$0:Lcom/sec/android/app/contacts/group/AccountPickerFragment;

    # getter for: Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->access$000(Lcom/sec/android/app/contacts/group/AccountPickerFragment;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 275
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f04003c

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 276
    .restart local v3    # "result":Landroid/view/View;
    new-instance v4, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;

    invoke-direct {v4, v3}, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;-><init>(Landroid/view/View;)V

    .line 277
    .restart local v4    # "viewCache":Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 290
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .restart local v0    # "accountType":Lcom/android/contacts/model/AccountType;
    .restart local v1    # "accountWithDataSet":Lcom/android/contacts/model/AccountWithDataSet;
    :cond_1
    iget-object v5, v4, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;->accountName:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 296
    :cond_2
    iget-object v5, v4, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_2
.end method
