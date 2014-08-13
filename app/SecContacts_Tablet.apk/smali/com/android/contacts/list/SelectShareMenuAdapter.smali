.class public Lcom/android/contacts/list/SelectShareMenuAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SelectShareMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private itemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private itemUri:Landroid/net/Uri;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsSelectionMode:Z

.field private mShareIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 46
    iput-object p1, p0, Lcom/android/contacts/list/SelectShareMenuAdapter;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/contacts/list/SelectShareMenuAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 83
    iget-object v5, p0, Lcom/android/contacts/list/SelectShareMenuAdapter;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 85
    .local v2, "mLayoutInflater":Landroid/view/LayoutInflater;
    if-eqz p2, :cond_1

    move-object v4, p2

    .line 88
    .local v4, "v":Landroid/view/View;
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/list/SelectShareMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 90
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    .line 91
    const v5, 0x7f09044f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 92
    .local v1, "appName":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/contacts/list/SelectShareMenuAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v5, 0x7f09044e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 94
    .local v0, "appIcon":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/contacts/list/SelectShareMenuAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    .end local v0    # "appIcon":Landroid/widget/ImageView;
    .end local v1    # "appName":Landroid/widget/TextView;
    :cond_0
    return-object v4

    .line 85
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "v":Landroid/view/View;
    :cond_1
    const v5, 0x7f0401ef

    const/4 v6, 0x0

    invoke-virtual {v2, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    goto :goto_0
.end method

.method public setAppList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "mitems":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/contacts/list/SelectShareMenuAdapter;->mAppList:Ljava/util/List;

    .line 60
    return-void
.end method

.method public setIsSelectionMode(Z)V
    .locals 0
    .param p1, "isSelectionMode"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/contacts/list/SelectShareMenuAdapter;->mIsSelectionMode:Z

    .line 73
    return-void
.end method

.method public setItemList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "shareList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/android/contacts/list/SelectShareMenuAdapter;->itemList:Ljava/util/ArrayList;

    .line 65
    return-void
.end method

.method public setShareIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "shareIntent"    # Landroid/content/Intent;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/contacts/list/SelectShareMenuAdapter;->mShareIntent:Landroid/content/Intent;

    .line 69
    return-void
.end method
