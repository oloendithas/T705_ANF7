.class public abstract Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;
.super Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;
.source "DialtactsFragmentPagerAdapter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DialtactFragmentPagerAdapter"


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/app/Fragment;

.field private final mFragmentManager:Landroid/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "fm"    # Landroid/app/FragmentManager;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsPagerAdapter;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 41
    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 44
    iput-object p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 45
    return-void
.end method

.method private static makeFragmentName(II)Ljava/lang/String;
    .locals 2
    .param p0, "viewId"    # I
    .param p1, "index"    # I

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 96
    :cond_0
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "feature_is_note_h"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 104
    :goto_0
    return-void

    .line 100
    .restart local p3    # "object":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 1
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 127
    :cond_0
    return-void
.end method

.method public abstract getItem(I)Landroid/app/Fragment;
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 58
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2, p2}, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->makeFragmentName(II)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 65
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_3

    .line 68
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "feature_is_note_h"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 81
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v2, :cond_1

    .line 82
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/support/v13/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 85
    :cond_1
    return-object v0

    .line 72
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {p0, p2}, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    .line 78
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4, p2}, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->makeFragmentName(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 131
    check-cast p2, Landroid/app/Fragment;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 141
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 108
    move-object v0, p3

    check-cast v0, Landroid/app/Fragment;

    .line 109
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v1, :cond_2

    .line 110
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v13/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 113
    :cond_0
    if-eqz v0, :cond_1

    .line 114
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v13/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 116
    :cond_1
    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 118
    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 54
    return-void
.end method
