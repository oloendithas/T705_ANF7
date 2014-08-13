.class public Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccountImageAdapter"
.end annotation


# instance fields
.field private mAccountIcons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6274
    .local p3, "accountIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    .local p4, "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 6275
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->mContext:Landroid/content/Context;

    .line 6276
    iput-object p3, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->mAccountIcons:Ljava/util/ArrayList;

    .line 6277
    iput-object p4, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->mAccountNames:Ljava/util/ArrayList;

    .line 6278
    return-void
.end method

.method static synthetic access$5100(Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;

    .prologue
    .line 6269
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 6281
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->mAccountIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 6285
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 6289
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 6297
    if-nez p2, :cond_2

    .line 6298
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 6300
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040097

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 6301
    .local v3, "result":Landroid/widget/FrameLayout;
    const v5, 0x7f090204

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 6302
    .local v0, "image":Landroid/widget/ImageView;
    const v5, 0x7f090205

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 6303
    .local v4, "touchInterceptLayout":Landroid/view/View;
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4900(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getAccountIconSize()I

    move-result v6

    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static {v7}, Lcom/android/contacts/detail/ContactDetailFragment;->access$4900(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getAccountIconSize()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6306
    invoke-virtual {v0, v9}, Landroid/view/View;->setClickable(Z)V

    .line 6307
    invoke-virtual {v0, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 6308
    invoke-virtual {v0, v9}, Landroid/view/View;->setPressed(Z)V

    .line 6310
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$5000(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p1, v5, :cond_0

    .line 6311
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->access$5000(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/android/contacts/ContactsUtils;->loadProfileIntentWithRawContactId(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v2

    .line 6313
    .local v2, "profileIntent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 6314
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 6315
    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter$1;

    invoke-direct {v5, p0, v2}, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter$1;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;Landroid/content/Intent;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6321
    invoke-virtual {v4, v9}, Landroid/view/View;->setClickable(Z)V

    .line 6328
    .end local v2    # "profileIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->mAccountIcons:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6329
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->mAccountNames:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6333
    .end local v0    # "image":Landroid/widget/ImageView;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v4    # "touchInterceptLayout":Landroid/view/View;
    :goto_1
    return-object v3

    .line 6323
    .restart local v0    # "image":Landroid/widget/ImageView;
    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    .restart local v2    # "profileIntent":Landroid/content/Intent;
    .restart local v4    # "touchInterceptLayout":Landroid/view/View;
    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 6324
    invoke-virtual {v4, v10}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .end local v0    # "image":Landroid/widget/ImageView;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "profileIntent":Landroid/content/Intent;
    .end local v3    # "result":Landroid/widget/FrameLayout;
    .end local v4    # "touchInterceptLayout":Landroid/view/View;
    :cond_2
    move-object v3, p2

    .line 6331
    check-cast v3, Landroid/widget/FrameLayout;

    .restart local v3    # "result":Landroid/widget/FrameLayout;
    goto :goto_1
.end method
