.class Landroid/webkitsec/WebViewClassic$InvokeListBox$MyArrayListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic$InvokeListBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyArrayListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;


# direct methods
.method public constructor <init>(Landroid/webkitsec/WebViewClassic$InvokeListBox;)V
    .registers 5

    .prologue
    .line 14196
    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$MyArrayListAdapter;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    .line 14197
    iget-object v0, p1, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    # getter for: Landroid/webkitsec/WebViewClassic$InvokeListBox;->mMultiple:Z
    invoke-static {p1}, Landroid/webkitsec/WebViewClassic$InvokeListBox;->access$12700(Landroid/webkitsec/WebViewClassic$InvokeListBox;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string v0, "com.android.browser"

    iget-object v2, p1, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "kanas3gzn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ageraltezm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    :cond_3e
    const v0, 0x109014f

    :goto_41
    # getter for: Landroid/webkitsec/WebViewClassic$InvokeListBox;->mContainers:[Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;
    invoke-static {p1}, Landroid/webkitsec/WebViewClassic$InvokeListBox;->access$12800(Landroid/webkitsec/WebViewClassic$InvokeListBox;)[Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 14203
    return-void

    .line 14197
    :cond_49
    const v0, 0x109014e

    goto :goto_41

    :cond_4d
    const-string v0, "com.android.browser"

    iget-object v2, p1, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "kanas3gzn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7d

    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ageraltezm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    :cond_7d
    const v0, 0x1090151

    goto :goto_41

    :cond_81
    const v0, 0x1090150

    goto :goto_41
.end method

.method private item(I)Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 14261
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_a

    .line 14262
    :cond_8
    const/4 v0, 0x0

    .line 14264
    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;

    goto :goto_9
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 14278
    const/4 v0, 0x0

    return v0
.end method

.method public getItemId(I)J
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 14269
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic$InvokeListBox$MyArrayListAdapter;->item(I)Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;

    move-result-object v0

    .line 14270
    .local v0, "item":Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;
    if-nez v0, :cond_9

    .line 14271
    const-wide/16 v1, -0x1

    .line 14273
    :goto_8
    return-wide v1

    :cond_9
    iget v1, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;->mId:I

    int-to-long v1, v1

    goto :goto_8
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const v6, 0x1080012

    const/4 v5, 0x1

    .line 14213
    invoke-super {p0, p1, v7, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 14214
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic$InvokeListBox$MyArrayListAdapter;->item(I)Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;

    move-result-object v0

    .line 14215
    .local v0, "c":Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;
    if-eqz v0, :cond_6c

    iget v4, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;->mEnabled:I

    if-eq v5, v4, :cond_6c

    .line 14218
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$MyArrayListAdapter;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v4, v4, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 14219
    .local v3, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 14220
    if-lez p1, :cond_38

    .line 14221
    new-instance v2, Landroid/view/View;

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$MyArrayListAdapter;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v4, v4, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 14222
    .local v2, "dividerTop":Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 14224
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 14227
    .end local v2    # "dividerTop":Landroid/view/View;
    :cond_38
    const/4 v4, -0x1

    iget v5, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;->mEnabled:I

    if-ne v4, v5, :cond_67

    .line 14231
    instance-of v4, p2, Landroid/widget/CheckedTextView;

    invoke-static {v4}, Ljunit/framework/Assert;->assertTrue(Z)V

    move-object v4, p2

    .line 14232
    check-cast v4, Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v7}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14240
    :goto_48
    invoke-virtual {v3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 14241
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge p1, v4, :cond_66

    .line 14242
    new-instance v1, Landroid/view/View;

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$MyArrayListAdapter;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v4, v4, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 14243
    .local v1, "dividerBottom":Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 14245
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 14249
    .end local v1    # "dividerBottom":Landroid/view/View;
    .end local v3    # "layout":Landroid/widget/LinearLayout;
    :cond_66
    :goto_66
    return-object v3

    .line 14237
    .restart local v3    # "layout":Landroid/widget/LinearLayout;
    :cond_67
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_48

    .end local v3    # "layout":Landroid/widget/LinearLayout;
    :cond_6c
    move-object v3, p2

    .line 14249
    goto :goto_66
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 14257
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 6
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 14283
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewClassic$InvokeListBox$MyArrayListAdapter;->item(I)Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;

    move-result-object v0

    .line 14284
    .local v0, "item":Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;
    if-nez v0, :cond_9

    .line 14287
    :goto_8
    return v2

    :cond_9
    iget v3, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox$Container;->mEnabled:I

    if-ne v1, v3, :cond_f

    :goto_d
    move v2, v1

    goto :goto_8

    :cond_f
    move v1, v2

    goto :goto_d
.end method
