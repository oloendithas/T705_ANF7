.class public Landroid/webkitsec/WebViewClassic$ColorPickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorPickerAdapter"
.end annotation


# instance fields
.field colorGridColWidth:I

.field private colorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/webkitsec/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkitsec/WebViewClassic;)V
    .registers 13

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7813
    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$ColorPickerAdapter;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 7816
    const/16 v3, 0x32

    iput v3, p0, Landroid/webkitsec/WebViewClassic$ColorPickerAdapter;->colorGridColWidth:I

    .line 7819
    new-array v0, v8, [[Ljava/lang/String;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "FFFFFF"

    aput-object v4, v3, v6

    const-string v4, "C0C0C0"

    aput-object v4, v3, v7

    const-string v4, "000080"

    aput-object v4, v3, v8

    const-string v4, "000000"

    aput-object v4, v3, v9

    const-string v4, "FF0000"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "800000"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "FFFF00"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "808000"

    aput-object v5, v3, v4

    aput-object v3, v0, v6

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "00FF00"

    aput-object v4, v3, v6

    const-string v4, "008000"

    aput-object v4, v3, v7

    const-string v4, "00FFFF"

    aput-object v4, v3, v8

    const-string v4, "008080"

    aput-object v4, v3, v9

    const-string v4, "0000FF"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "000080"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "FF00FF"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "800080"

    aput-object v5, v3, v4

    aput-object v3, v0, v7

    .line 7822
    .local v0, "colors":[[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/webkitsec/WebViewClassic$ColorPickerAdapter;->colorList:Ljava/util/List;

    .line 7825
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6a
    array-length v3, v0

    if-ge v1, v3, :cond_9d

    .line 7826
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_6e
    aget-object v3, v0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_9a

    .line 7827
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$ColorPickerAdapter;->colorList:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7826
    add-int/lit8 v2, v2, 0x1

    goto :goto_6e

    .line 7825
    :cond_9a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    .line 7830
    .end local v2    # "j":I
    :cond_9d
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 7850
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$ColorPickerAdapter;->colorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 7854
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$ColorPickerAdapter;->colorList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 7855
    .local v0, "CLarray":[Ljava/lang/Object;
    aget-object v1, v0, p1

    return-object v1
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 7859
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 7835
    if-nez p2, :cond_2c

    .line 7836
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$ColorPickerAdapter;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 7838
    .local v0, "imageView":Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget v2, p0, Landroid/webkitsec/WebViewClassic$ColorPickerAdapter;->colorGridColWidth:I

    iget v3, p0, Landroid/webkitsec/WebViewClassic$ColorPickerAdapter;->colorGridColWidth:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7843
    :goto_19
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$ColorPickerAdapter;->colorList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7844
    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    .line 7846
    return-object v0

    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_2c
    move-object v0, p2

    .line 7841
    check-cast v0, Landroid/widget/ImageView;

    .restart local v0    # "imageView":Landroid/widget/ImageView;
    goto :goto_19
.end method
