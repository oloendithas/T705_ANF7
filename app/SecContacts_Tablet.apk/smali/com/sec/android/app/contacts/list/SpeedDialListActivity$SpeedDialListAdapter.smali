.class Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SpeedDialListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/list/SpeedDialListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedDialListAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;

.field final synthetic this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V
    .locals 1

    .prologue
    .line 1788
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1789
    new-instance v0, Lcom/sec/android/app/contacts/ListHoverManager;

    invoke-direct {v0, p1}, Lcom/sec/android/app/contacts/ListHoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;

    .line 1790
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1791
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 1794
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    iget v1, v1, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpinRange:I

    add-int/lit8 v1, v1, 0x64

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    const/16 v0, 0x63

    .line 1795
    .local v0, "count":I
    :goto_0
    return v0

    .line 1794
    .end local v0    # "count":I
    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1799
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1803
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 1808
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    iget v4, v4, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mSpinRange:I

    add-int v3, p1, v4

    .line 1809
    .local v3, "spdlIdx":I
    if-nez p2, :cond_4

    .line 1810
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0401fa

    invoke-virtual {v4, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1811
    new-instance v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;-><init>()V

    .line 1812
    .local v0, "holder":Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;
    const v4, 0x7f090457

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    .line 1813
    const v4, 0x7f090468

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mPhotoOverlay:Landroid/view/View;

    .line 1814
    const v4, 0x7f090469

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->maddPhoto:Landroid/widget/ImageView;

    .line 1815
    const v4, 0x7f090459

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mName:Landroid/widget/TextView;

    .line 1816
    const v4, 0x7f090461

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mDeleteButton:Landroid/view/View;

    .line 1817
    const v4, 0x7f090467

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mNumber:Landroid/widget/TextView;

    .line 1818
    const v4, 0x7f09046a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    .line 1819
    const v4, 0x7f0903fb

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mPhotoContainer:Landroid/view/View;

    .line 1821
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1825
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    # getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I
    invoke-static {v4}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$900(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 1826
    invoke-virtual {p2, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1829
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    # getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mStartNumber:I
    invoke-static {v4}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$000(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 1830
    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    const v5, 0x7f020425

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1831
    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1833
    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1834
    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1835
    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mPhotoOverlay:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 1836
    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mPhotoOverlay:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1837
    :cond_1
    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->maddPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1838
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v5, 0xf0

    if-ne v4, v5, :cond_2

    .line 1839
    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1841
    :cond_2
    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const v5, 0x7f0e009b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1874
    :goto_1
    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mNumber:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 1875
    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mNumber:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1877
    :cond_3
    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1880
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    # getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I
    invoke-static {v4}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$900(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1892
    :goto_2
    return-object p2

    .line 1823
    .end local v0    # "holder":Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;

    .restart local v0    # "holder":Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;
    goto/16 :goto_0

    .line 1843
    :cond_5
    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setId(I)V

    .line 1844
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    # getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$500(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 1845
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    iget-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    # getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$500(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, p2, v3}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->setItemLayout(JLandroid/view/View;I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    .line 1846
    const v4, 0x106000d

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 1849
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1864
    :cond_7
    :goto_3
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    # getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mContactIDCache:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$500(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_8

    .line 1865
    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1867
    :cond_8
    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1868
    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mPhotoOverlay:Landroid/view/View;

    if-eqz v4, :cond_9

    .line 1869
    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mPhotoOverlay:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1870
    :cond_9
    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->maddPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1871
    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const v5, 0x7f0e01fd

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 1852
    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    # getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mCurrentMode:I
    invoke-static {v4}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$900(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)I

    move-result v4

    if-ne v4, v6, :cond_b

    .line 1853
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    # getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsSelected:Z
    invoke-static {v4}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$1000(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    # getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mOldIndex:I
    invoke-static {v4}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$1100(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)I

    move-result v4

    if-ne v4, v3, :cond_7

    .line 1854
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    # setter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mChangeOrderView:Landroid/view/View;
    invoke-static {v4, p2}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$1202(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;Landroid/view/View;)Landroid/view/View;

    .line 1855
    const v4, 0x7f02095e

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 1858
    :cond_b
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1859
    .local v1, "outValue":Landroid/util/TypedValue;
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialListAdapter;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x101030e

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1861
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    .line 1862
    .local v2, "resid":I
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 1882
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "resid":I
    :pswitch_0
    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1885
    :pswitch_1
    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1888
    :pswitch_2
    iget-object v4, v0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$ViewHolder;->mDeleteButton:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1880
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
