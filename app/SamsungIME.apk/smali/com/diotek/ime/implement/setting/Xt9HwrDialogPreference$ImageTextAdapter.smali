.class Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageTextAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Xt9HwrDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageTextAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageText;",
        ">;"
    }
.end annotation


# instance fields
.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageText;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceID:I

.field final synthetic this$0:Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;


# direct methods
.method public constructor <init>(Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;Landroid/content/Context;ILjava/util/ArrayList;)V
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
            "Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageText;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageText;>;"
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageTextAdapter;->this$0:Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;

    .line 93
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 94
    iput-object p4, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageTextAdapter;->mItems:Ljava/util/ArrayList;

    .line 95
    iput p3, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageTextAdapter;->mResourceID:I

    .line 96
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 100
    move-object v3, p2

    .line 101
    .local v3, "v":Landroid/view/View;
    if-nez v3, :cond_0

    .line 102
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageTextAdapter;->this$0:Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->access$200(Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 104
    .local v4, "vi":Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageTextAdapter;->mResourceID:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 107
    .end local v4    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageTextAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageText;

    .line 108
    .local v0, "it":Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageText;
    if-eqz v0, :cond_2

    .line 109
    const v5, 0x7f08009a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 110
    .local v1, "iv":Landroid/widget/ImageView;
    const v5, 0x7f08009b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    .line 111
    .local v2, "tv":Landroid/widget/CheckedTextView;
    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageText;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    :cond_1
    if-eqz v2, :cond_2

    .line 115
    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageText;->getColor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v5, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageTextAdapter;->this$0:Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->mCurrentIndex:I
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;->access$000(Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;)I

    move-result v5

    if-ne v5, p1, :cond_3

    .line 117
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 123
    .end local v1    # "iv":Landroid/widget/ImageView;
    .end local v2    # "tv":Landroid/widget/CheckedTextView;
    :cond_2
    :goto_0
    return-object v3

    .line 119
    .restart local v1    # "iv":Landroid/widget/ImageView;
    .restart local v2    # "tv":Landroid/widget/CheckedTextView;
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0
.end method
