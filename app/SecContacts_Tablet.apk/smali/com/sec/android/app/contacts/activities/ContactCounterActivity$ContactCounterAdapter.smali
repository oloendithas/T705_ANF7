.class Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactCounterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/ContactCounterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactCounterAdapter"
.end annotation


# instance fields
.field private final mCustomRow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p2, "customRow":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 356
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 358
    iput-object p2, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterAdapter;->mCustomRow:Ljava/util/List;

    .line 359
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterAdapter;->mCustomRow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 373
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterAdapter;->mCustomRow:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 368
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 378
    if-eqz p2, :cond_3

    .line 379
    move-object v2, p2

    .line 385
    .local v2, "mCustomView":Landroid/view/View;
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterAdapter;->mCustomRow:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;

    .line 386
    .local v0, "customRow":Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;
    const v5, 0x7f09012a

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 387
    .local v3, "mTextView1":Landroid/widget/TextView;
    const v5, 0x7f09012b

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 388
    .local v4, "mTextView2":Landroid/widget/TextView;
    const v5, 0x7f090129

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 389
    .local v1, "mAccountIcon":Landroid/widget/ImageView;
    if-eqz v3, :cond_0

    .line 390
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;->getCol1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    :cond_0
    if-eqz v4, :cond_1

    .line 392
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;->getCol2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    :cond_1
    if-eqz v1, :cond_2

    .line 394
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 398
    :cond_2
    return-object v2

    .line 381
    .end local v0    # "customRow":Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;
    .end local v1    # "mAccountIcon":Landroid/widget/ImageView;
    .end local v2    # "mCustomView":Landroid/view/View;
    .end local v3    # "mTextView1":Landroid/widget/TextView;
    .end local v4    # "mTextView2":Landroid/widget/TextView;
    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040040

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "mCustomView":Landroid/view/View;
    goto :goto_0
.end method
