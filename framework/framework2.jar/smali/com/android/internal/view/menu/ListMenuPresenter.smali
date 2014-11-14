.class public Lcom/android/internal/view/menu/ListMenuPresenter;
.super Ljava/lang/Object;
.source "ListMenuPresenter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuPresenter"

.field public static final VIEWS_TAG:Ljava/lang/String; = "android:menu:list"


# instance fields
.field mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

.field private mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field mContext:Landroid/content/Context;

.field private mId:I

.field mInflater:Landroid/view/LayoutInflater;

.field private mItemIndexOffset:I

.field mItemLayoutRes:I

.field mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

.field mThemeRes:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "itemLayoutRes"    # I
    .param p2, "themeRes"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mItemLayoutRes:I

    .line 79
    iput p2, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemLayoutRes"    # I

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/view/menu/ListMenuPresenter;-><init>(II)V

    .line 68
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 69
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/ListMenuPresenter;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/view/menu/ListMenuPresenter;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    return v0
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .registers 2

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_b

    .line 130
    new-instance v0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lcom/android/internal/view/menu/ListMenuPresenter;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 132
    :cond_b
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 214
    iget v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mId:I

    return v0
.end method

.method getItemIndexOffset()I
    .registers 2

    .prologue
    .line 165
    iget v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .registers 6
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    if-nez v1, :cond_46

    .line 102
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090052

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/ExpandedMenuView;

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    .line 104
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-nez v1, :cond_1d

    .line 105
    new-instance v1, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v1, p0}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lcom/android/internal/view/menu/ListMenuPresenter;)V

    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 107
    :cond_1d
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 112
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101046e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 113
    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_46

    .line 114
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ExpandedMenuView;->initialize(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 118
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_46
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    return-object v1
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    if-eqz v0, :cond_21

    .line 85
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 86
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 93
    :cond_15
    :goto_15
    iput-object p2, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 94
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-eqz v0, :cond_20

    .line 95
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 97
    :cond_20
    return-void

    .line 87
    :cond_21
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_15

    .line 88
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 89
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_15

    .line 90
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_15
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .registers 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_9

    .line 160
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 162
    :cond_9
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v1, p3}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 178
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 230
    check-cast p1, Landroid/os/Bundle;

    .end local p1    # "state":Landroid/os/Parcelable;
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 231
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    if-nez v1, :cond_6

    .line 220
    const/4 v0, 0x0

    .line 225
    :goto_5
    return-object v0

    .line 223
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 224
    .local v0, "state":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    goto :goto_5
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .registers 4
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 154
    :goto_7
    return v0

    .line 150
    :cond_8
    new-instance v0, Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuDialogHelper;-><init>(Lcom/android/internal/view/menu/MenuBuilder;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 151
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_1a

    .line 152
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    .line 154
    :cond_1a
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 202
    const-string v1, "android:menu:list"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 203
    .local v0, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_d

    .line 204
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 206
    :cond_d
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 194
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 195
    .local v0, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    if-eqz v1, :cond_e

    .line 196
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 198
    :cond_e
    const-string v1, "android:menu:list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 199
    return-void
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .registers 2
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 143
    return-void
.end method

.method public setId(I)V
    .registers 2
    .param p1, "id"    # I

    .prologue
    .line 209
    iput p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mId:I

    .line 210
    return-void
.end method

.method public setItemIndexOffset(I)V
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 169
    iput p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    .line 170
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    if-eqz v0, :cond_a

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuPresenter;->updateMenuView(Z)V

    .line 173
    :cond_a
    return-void
.end method

.method public updateMenuView(Z)V
    .registers 3
    .param p1, "cleared"    # Z

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 138
    :cond_9
    return-void
.end method
