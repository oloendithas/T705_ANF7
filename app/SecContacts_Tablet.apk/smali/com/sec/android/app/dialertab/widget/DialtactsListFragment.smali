.class public Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;
.super Landroid/app/Fragment;
.source "DialtactsListFragment.java"


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field mEmptyText:Ljava/lang/CharSequence;

.field mEmptyView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field mList:Lcom/sec/android/touchwiz/widget/TwListView;

.field mListContainer:Landroid/view/View;

.field mListShown:Z

.field private final mOnClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

.field mProgressContainer:Landroid/view/View;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field mStandardEmptyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mHandler:Landroid/os/Handler;

    .line 38
    new-instance v0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment$1;-><init>(Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 44
    new-instance v0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment$2;-><init>(Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mOnClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    .line 61
    return-void
.end method

.method private ensureList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 260
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    if-eqz v3, :cond_0

    .line 314
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 264
    .local v2, "root":Landroid/view/View;
    if-nez v2, :cond_1

    .line 265
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Content view not yet created"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 267
    :cond_1
    instance-of v3, v2, Lcom/sec/android/touchwiz/widget/TwListView;

    if-eqz v3, :cond_4

    .line 268
    check-cast v2, Lcom/sec/android/touchwiz/widget/TwListView;

    .end local v2    # "root":Landroid/view/View;
    iput-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    .line 300
    :cond_2
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mListShown:Z

    .line 301
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mOnClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 302
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_9

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 304
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 305
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 313
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 270
    .restart local v2    # "root":Landroid/view/View;
    :cond_4
    const v3, 0x102033c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 272
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-nez v3, :cond_5

    .line 273
    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mEmptyView:Landroid/view/View;

    .line 277
    :goto_3
    const v3, 0x102033a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mProgressContainer:Landroid/view/View;

    .line 278
    const v3, 0x102033b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mListContainer:Landroid/view/View;

    .line 279
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 280
    .local v1, "rawListView":Landroid/view/View;
    instance-of v3, v1, Lcom/sec/android/touchwiz/widget/TwListView;

    if-nez v3, :cond_6

    .line 281
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 275
    .end local v1    # "rawListView":Landroid/view/View;
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 285
    .restart local v1    # "rawListView":Landroid/view/View;
    :cond_6
    check-cast v1, Lcom/sec/android/touchwiz/widget/TwListView;

    .end local v1    # "rawListView":Landroid/view/View;
    iput-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    .line 286
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    if-nez v3, :cond_7

    .line 287
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 291
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_8

    .line 292
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    .line 293
    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 294
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 295
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mEmptyText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwListView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 309
    .end local v2    # "root":Landroid/view/View;
    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 310
    invoke-direct {p0, v5, v5}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->setListShown(ZZ)V

    goto/16 :goto_2
.end method

.method private setListShown(ZZ)V
    .locals 6
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .prologue
    const v5, 0x10a0001

    const/high16 v4, 0x10a0000

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 217
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->ensureList()V

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mProgressContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mListShown:Z

    if-ne v0, p1, :cond_1

    .line 250
    :goto_0
    return-void

    .line 224
    :cond_1
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mListShown:Z

    .line 225
    if-eqz p1, :cond_3

    .line 226
    if-eqz p2, :cond_2

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 235
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_1

    .line 238
    :cond_3
    if-eqz p2, :cond_4

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 247
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 244
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_2
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->ensureList()V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->ensureList()V

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    const v0, 0x1090014

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    iput-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mListShown:Z

    .line 101
    iput-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mListContainer:Landroid/view/View;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mProgressContainer:Landroid/view/View;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mEmptyView:Landroid/view/View;

    .line 102
    iput-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 103
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 104
    return-void
.end method

.method public onListItemClick(Lcom/sec/android/touchwiz/widget/TwListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Lcom/sec/android/touchwiz/widget/TwListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 118
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 90
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->ensureList()V

    .line 91
    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->ensureList()V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setEmptyView(Landroid/view/View;)V

    .line 177
    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mEmptyText:Ljava/lang/CharSequence;

    .line 178
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 124
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    move v0, v1

    .line 125
    .local v0, "hadAdapter":Z
    :goto_0
    iput-object p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 126
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    if-eqz v3, :cond_1

    .line 127
    iget-object v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v3, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mListShown:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->setListShown(ZZ)V

    .line 134
    :cond_1
    return-void

    .end local v0    # "hadAdapter":Z
    :cond_2
    move v0, v2

    .line 124
    goto :goto_0
.end method

.method public setListShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 195
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->setListShown(ZZ)V

    .line 196
    return-void
.end method

.method public setListShownNoAnimation(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->setListShown(ZZ)V

    .line 204
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->ensureList()V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    .line 145
    return-void
.end method
