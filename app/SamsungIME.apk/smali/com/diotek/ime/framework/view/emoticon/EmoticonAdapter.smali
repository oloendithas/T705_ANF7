.class public Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;
.super Landroid/widget/ArrayAdapter;
.source "EmoticonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/CharSequence;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEmoticonAdapterListener:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;

.field private mEmoticonLineResourceId:I

.field private mEmoticonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFontSize:F

.field private mItemBackgroundResId:I

.field private mItemMarginBottom:I

.field private mItemMarginLeft:I

.field private mItemMarginRight:I

.field private mItemMarginTop:I

.field private mItemPaddingBottom:I

.field private mItemPaddingLeft:I

.field private mItemPaddingRight:I

.field private mItemPaddingTop:I

.field private mItemheight:I

.field private mItemwidth:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "emoticonLineResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "emoticonList":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Ljava/lang/CharSequence;>;>;"
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mEmoticonAdapterListener:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mEmoticonLineResourceId:I

    .line 30
    iput v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingLeft:I

    .line 31
    iput v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingTop:I

    .line 32
    iput v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingRight:I

    .line 33
    iput v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingBottom:I

    .line 34
    iput v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemBackgroundResId:I

    .line 35
    iput v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginLeft:I

    .line 36
    iput v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginTop:I

    .line 37
    iput v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginRight:I

    .line 38
    iput v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginBottom:I

    .line 39
    iput v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemwidth:I

    .line 40
    iput v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemheight:I

    .line 45
    iput-object p1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mContext:Landroid/content/Context;

    .line 46
    iput p2, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mEmoticonLineResourceId:I

    .line 47
    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 48
    iput-object p3, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mEmoticonList:Ljava/util/List;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;)Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;
    .locals 1
    .param p0, "x0"    # Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mEmoticonAdapterListener:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;

    return-object v0
.end method

.method private addNewLine()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    .line 90
    iget-object v1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mEmoticonLineResourceId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 91
    .local v0, "emoticonLine":Landroid/widget/LinearLayout;
    return-object v0
.end method

.method private setClickListener(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 154
    new-instance v0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$1;-><init>(Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 96
    const/4 v6, 0x0

    .line 97
    .local v6, "layout":Landroid/widget/LinearLayout;
    if-nez p2, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->addNewLine()Landroid/widget/LinearLayout;

    move-result-object v6

    .line 99
    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 100
    iget-object v9, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mEmoticonList:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 101
    .local v2, "emoticoRowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 102
    .local v3, "emoticon":Ljava/lang/CharSequence;
    new-instance v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 104
    .local v8, "tv":Landroid/widget/TextView;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v10, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemwidth:I

    iget v11, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemheight:I

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    const/4 v9, 0x1

    iget v10, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mFontSize:F

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 106
    iget-object v9, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 107
    iget v9, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemBackgroundResId:I

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    iget v9, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingLeft:I

    iget v10, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingTop:I

    iget v11, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingRight:I

    iget v12, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingBottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 109
    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 110
    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    .local v7, "margin":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v9, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginLeft:I

    iget v10, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginTop:I

    iget v11, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginRight:I

    iget v12, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginBottom:I

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 112
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 115
    invoke-direct {p0, v8}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->setClickListener(Landroid/widget/TextView;)V

    .line 116
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .end local v2    # "emoticoRowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v3    # "emoticon":Ljava/lang/CharSequence;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "margin":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_0
    move-object v6, p2

    .line 119
    check-cast v6, Landroid/widget/LinearLayout;

    .line 120
    iget-object v9, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mEmoticonList:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 121
    .restart local v2    # "emoticoRowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 122
    .local v0, "childCount":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 123
    .local v1, "emoticoRowCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 124
    const/4 v8, 0x0

    .line 125
    .restart local v8    # "tv":Landroid/widget/TextView;
    if-ge v4, v0, :cond_1

    .line 126
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .end local v8    # "tv":Landroid/widget/TextView;
    check-cast v8, Landroid/widget/TextView;

    .line 132
    .restart local v8    # "tv":Landroid/widget/TextView;
    :goto_2
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v10, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemwidth:I

    iget v11, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemheight:I

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    const/4 v9, 0x1

    iget v10, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mFontSize:F

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 134
    iget-object v9, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 135
    iget v9, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemBackgroundResId:I

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 136
    iget v9, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingLeft:I

    iget v10, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingTop:I

    iget v11, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingRight:I

    iget v12, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingBottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 137
    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 138
    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    .restart local v7    # "margin":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v9, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginLeft:I

    iget v10, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginTop:I

    iget v11, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginRight:I

    iget v12, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginBottom:I

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 140
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 123
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 128
    .end local v7    # "margin":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    new-instance v8, Landroid/widget/TextView;

    .end local v8    # "tv":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 129
    .restart local v8    # "tv":Landroid/widget/TextView;
    invoke-direct {p0, v8}, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->setClickListener(Landroid/widget/TextView;)V

    .line 130
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 144
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_2
    if-le v0, v1, :cond_3

    .line 145
    add-int/lit8 v4, v0, -0x1

    :goto_3
    if-lt v4, v1, :cond_3

    .line 146
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 145
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 150
    .end local v0    # "childCount":I
    .end local v1    # "emoticoRowCount":I
    .end local v4    # "i":I
    :cond_3
    return-object v6
.end method

.method public setEmoticonAdapterListener(Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mEmoticonAdapterListener:Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;

    .line 53
    return-void
.end method

.method public setEmoticonHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemheight:I

    .line 69
    return-void
.end method

.method public setEmoticonWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemwidth:I

    .line 65
    return-void
.end method

.method public setFontSize(F)V
    .locals 0
    .param p1, "fontSize"    # F

    .prologue
    .line 60
    iput p1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mFontSize:F

    .line 61
    return-void
.end method

.method public setItemBackgroundResId(I)V
    .locals 0
    .param p1, "backgroundResId"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemBackgroundResId:I

    .line 87
    return-void
.end method

.method public setItemMargin(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginLeft:I

    .line 80
    iput p2, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginTop:I

    .line 81
    iput p3, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginRight:I

    .line 82
    iput p4, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemMarginBottom:I

    .line 83
    return-void
.end method

.method public setItemPadding(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingLeft:I

    .line 73
    iput p2, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingTop:I

    .line 74
    iput p3, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingRight:I

    .line 75
    iput p4, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mItemPaddingBottom:I

    .line 76
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/diotek/ime/framework/view/emoticon/EmoticonAdapter;->mTypeface:Landroid/graphics/Typeface;

    .line 57
    return-void
.end method
