.class public Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;
.super Ljava/lang/Object;
.source "AirButtonAdapterWrapper.java"


# instance fields
.field private mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

.field private mAttrs:Lcom/samsung/android/airbutton/Attributes;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsParentThemeDeviceDefault:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;Lcom/samsung/android/airbutton/Attributes;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .param p3, "attrs"    # Lcom/samsung/android/airbutton/Attributes;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 28
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    .line 29
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 30
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    .line 31
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mIsParentThemeDeviceDefault:Z

    .line 39
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    .line 41
    iput-object p3, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 43
    if-eqz p1, :cond_37

    .line 44
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 47
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101046e

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 48
    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_37

    .line 49
    iput-boolean v3, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mIsParentThemeDeviceDefault:Z

    .line 51
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_37
    return-void
.end method

.method private getDummyView()Landroid/view/View;
    .registers 5

    .prologue
    const/4 v3, -0x2

    .line 232
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 233
    .local v0, "dummyTextView":Landroid/widget/TextView;
    const-string v2, "You set wrong data for this UI type"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 235
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    return-object v0
.end method

.method private getListView(I)Landroid/view/View;
    .registers 14
    .param p1, "idx"    # I

    .prologue
    .line 74
    const/4 v3, 0x0

    .line 76
    .local v3, "rootView":Landroid/view/View;
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    if-nez v9, :cond_7

    move-object v4, v3

    .line 160
    .end local v3    # "rootView":Landroid/view/View;
    .local v4, "rootView":Landroid/view/View;
    :goto_6
    return-object v4

    .line 81
    .end local v4    # "rootView":Landroid/view/View;
    .restart local v3    # "rootView":Landroid/view/View;
    :cond_7
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v9, v9, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4b

    .line 82
    rem-int/lit8 v9, p1, 0x2

    if-nez v9, :cond_40

    .line 83
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x1090025

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 87
    :goto_1c
    const v9, 0x10202dc

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 88
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_34

    .line 89
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v9, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    :cond_34
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v2, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 92
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v0    # "imageView":Landroid/widget/ImageView;
    :goto_3e
    move-object v4, v3

    .line 160
    .end local v3    # "rootView":Landroid/view/View;
    .restart local v4    # "rootView":Landroid/view/View;
    goto :goto_6

    .line 85
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "rootView":Landroid/view/View;
    .restart local v3    # "rootView":Landroid/view/View;
    :cond_40
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x1090026

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_1c

    .line 95
    :cond_4b
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v9, v9, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8e

    .line 96
    rem-int/lit8 v9, p1, 0x2

    if-nez v9, :cond_83

    .line 97
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x109002e

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 101
    :goto_60
    const v9, 0x10202e4

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 102
    .local v6, "textView":Landroid/widget/TextView;
    if-eqz v6, :cond_78

    .line 103
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v9, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_78
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v2, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 106
    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3e

    .line 99
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v6    # "textView":Landroid/widget/TextView;
    :cond_83
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x109002d

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_60

    .line 109
    :cond_8e
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v9, v9, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_145

    .line 110
    rem-int/lit8 v9, p1, 0x2

    if-nez v9, :cond_119

    .line 111
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x109002b

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 115
    :goto_a3
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v9, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    move-result-object v1

    .line 117
    .local v1, "item":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    const v9, 0x10202e0

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 118
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_bb

    .line 119
    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    :cond_bb
    const v9, 0x10202e1

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 122
    .restart local v6    # "textView":Landroid/widget/TextView;
    const v9, 0x10202e2

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 123
    .local v7, "textViewMain":Landroid/widget/TextView;
    const v9, 0x10202e3

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 124
    .local v8, "textViewSub":Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getSubDescription()Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, "subDescription":Ljava/lang/String;
    if-eqz v5, :cond_124

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_124

    .line 127
    if-eqz v7, :cond_f4

    .line 128
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 129
    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 133
    :cond_f4
    if-eqz v8, :cond_106

    .line 134
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 135
    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getSubDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 139
    :cond_106
    if-eqz v6, :cond_10d

    .line 140
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :cond_10d
    :goto_10d
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v2, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 155
    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3e

    .line 113
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v1    # "item":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "subDescription":Ljava/lang/String;
    .end local v6    # "textView":Landroid/widget/TextView;
    .end local v7    # "textViewMain":Landroid/widget/TextView;
    .end local v8    # "textViewSub":Landroid/widget/TextView;
    :cond_119
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x109002c

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_a3

    .line 142
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    .restart local v1    # "item":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    .restart local v5    # "subDescription":Ljava/lang/String;
    .restart local v6    # "textView":Landroid/widget/TextView;
    .restart local v7    # "textViewMain":Landroid/widget/TextView;
    .restart local v8    # "textViewSub":Landroid/widget/TextView;
    :cond_124
    if-eqz v6, :cond_136

    .line 143
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 144
    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 148
    :cond_136
    if-eqz v7, :cond_13d

    .line 149
    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 150
    :cond_13d
    if-eqz v8, :cond_10d

    .line 151
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10d

    .line 157
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v1    # "item":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    .end local v5    # "subDescription":Ljava/lang/String;
    .end local v6    # "textView":Landroid/widget/TextView;
    .end local v7    # "textViewMain":Landroid/widget/TextView;
    .end local v8    # "textViewSub":Landroid/widget/TextView;
    :cond_145
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "You set wrong data type. You should set correct data set for this UI type"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private getMenuView(I)Landroid/view/View;
    .registers 15
    .param p1, "idx"    # I

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x8

    const/4 v10, 0x0

    const/4 v9, -0x2

    .line 164
    const/4 v4, 0x0

    .line 166
    .local v4, "rootView":Landroid/view/View;
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    if-nez v7, :cond_c

    move-object v5, v4

    .line 228
    .end local v4    # "rootView":Landroid/view/View;
    .local v5, "rootView":Landroid/view/View;
    :goto_b
    return-object v5

    .line 177
    .end local v5    # "rootView":Landroid/view/View;
    .restart local v4    # "rootView":Landroid/view/View;
    :cond_c
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4b

    .line 178
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x1090029

    invoke-virtual {v7, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 182
    :goto_1c
    const v7, 0x10202df

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 183
    .local v1, "imageViewOnly":Landroid/widget/ImageView;
    const v7, 0x10202dd

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 184
    .local v0, "imageView":Landroid/widget/ImageView;
    const v7, 0x10202de

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 186
    .local v6, "textView":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v7, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    move-result-object v2

    .line 187
    .local v2, "item":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getSubDescription()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_55

    .line 188
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "You set wrong data type. You can\'t use SubDescription for UI_MENU_TYPE"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 180
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v1    # "imageViewOnly":Landroid/widget/ImageView;
    .end local v2    # "item":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    .end local v6    # "textView":Landroid/widget/TextView;
    :cond_4b
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x109002a

    invoke-virtual {v7, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1c

    .line 190
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    .restart local v1    # "imageViewOnly":Landroid/widget/ImageView;
    .restart local v2    # "item":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    .restart local v6    # "textView":Landroid/widget/TextView;
    :cond_55
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7c

    .line 191
    if-eqz v0, :cond_61

    .line 192
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    :cond_61
    if-eqz v6, :cond_66

    .line 195
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 197
    :cond_66
    if-eqz v1, :cond_72

    .line 198
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    :cond_72
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 203
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_7a
    move-object v5, v4

    .line 228
    .end local v4    # "rootView":Landroid/view/View;
    .restart local v5    # "rootView":Landroid/view/View;
    goto :goto_b

    .line 204
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "rootView":Landroid/view/View;
    .restart local v4    # "rootView":Landroid/view/View;
    :cond_7c
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_ae

    .line 205
    if-eqz v1, :cond_88

    .line 206
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    :cond_88
    if-eqz v0, :cond_94

    .line 209
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    :cond_94
    if-eqz v6, :cond_a5

    .line 217
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 218
    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 222
    :cond_a5
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 223
    .restart local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7a

    .line 225
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_ae
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "You set wrong data type. You can\'t use only text data for UI_MENU_TYPE"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getView(I)Landroid/view/View;
    .registers 3
    .param p1, "idx"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    packed-switch v0, :pswitch_data_14

    .line 69
    const/4 v0, 0x0

    :goto_8
    return-object v0

    .line 65
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getListView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    .line 67
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getMenuView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    .line 63
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_e
        :pswitch_9
    .end packed-switch
.end method
