.class public final Landroid/preference/PreferenceScreen;
.super Landroid/preference/PreferenceGroup;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceScreen$SavedState;
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mListView:Landroid/widget/ListView;

.field private mRootAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 101
    const v0, 0x101008b

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method private showDialog(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 160
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 161
    .local v2, "context":Landroid/content/Context;
    iget-object v7, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    if-eqz v7, :cond_e

    .line 162
    iget-object v7, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    :cond_e
    const-string v7, "layout_inflater"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 168
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x109009b

    .line 170
    .local v5, "preferenceScreenLayout":I
    sget-object v7, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v2, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 172
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v7, 0x143

    const/4 v8, 0x0

    :try_start_22
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_82
    .catchall {:try_start_22 .. :try_end_25} :catchall_77

    move-result v7

    if-eqz v7, :cond_2b

    .line 173
    const v5, 0x1090118

    .line 178
    :cond_2b
    if-eqz v0, :cond_30

    :goto_2d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 181
    :cond_30
    invoke-virtual {v4, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 183
    .local v1, "childPrefScreen":Landroid/view/View;
    const v7, 0x102000a

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    .line 184
    iget-object v7, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 187
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    .line 188
    .local v6, "title":Ljava/lang/CharSequence;
    new-instance v3, Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I

    move-result v7

    invoke-direct {v3, v2, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 189
    .local v3, "dialog":Landroid/app/Dialog;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7e

    .line 190
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/Window;->requestFeature(I)Z

    .line 194
    :goto_61
    invoke-virtual {v3, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 195
    invoke-virtual {v3, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 196
    if-eqz p1, :cond_6c

    .line 197
    invoke-virtual {v3, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 201
    :cond_6c
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceManager;->addPreferencesScreen(Landroid/content/DialogInterface;)V

    .line 203
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 204
    return-void

    .line 178
    .end local v1    # "childPrefScreen":Landroid/view/View;
    .end local v3    # "dialog":Landroid/app/Dialog;
    .end local v6    # "title":Ljava/lang/CharSequence;
    :catchall_77
    move-exception v7

    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_7d
    throw v7

    .line 192
    .restart local v1    # "childPrefScreen":Landroid/view/View;
    .restart local v3    # "dialog":Landroid/app/Dialog;
    .restart local v6    # "title":Ljava/lang/CharSequence;
    :cond_7e
    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_61

    .line 175
    .end local v1    # "childPrefScreen":Landroid/view/View;
    .end local v3    # "dialog":Landroid/app/Dialog;
    .end local v6    # "title":Ljava/lang/CharSequence;
    :catch_82
    move-exception v7

    .line 178
    if-eqz v0, :cond_30

    goto :goto_2d
.end method


# virtual methods
.method public bind(Landroid/widget/ListView;)V
    .registers 3
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 144
    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 145
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->onAttachedToActivity()V

    .line 148
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getRootAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_a

    .line 120
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->onCreateRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    .line 123
    :cond_a
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .registers 2

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .registers 2

    .prologue
    .line 152
    invoke-virtual {p0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_13

    .line 157
    :cond_12
    :goto_12
    return-void

    .line 156
    :cond_13
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    goto :goto_12
.end method

.method protected onCreateRootAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 133
    new-instance v0, Landroid/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceGroupAdapter;-><init>(Landroid/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 208
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->removePreferencesScreen(Landroid/content/DialogInterface;)V

    .line 209
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 222
    instance-of v2, p1, Landroid/widget/ListView;

    if-eqz v2, :cond_b

    .line 223
    check-cast p1, Landroid/widget/ListView;

    .end local p1    # "parent":Landroid/widget/AdapterView;
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p3, v2

    .line 225
    :cond_b
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 226
    .local v0, "item":Ljava/lang/Object;
    instance-of v2, v0, Landroid/preference/Preference;

    if-nez v2, :cond_18

    .line 230
    :goto_17
    return-void

    :cond_18
    move-object v1, v0

    .line 228
    check-cast v1, Landroid/preference/Preference;

    .line 229
    .local v1, "preference":Landroid/preference/Preference;
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_17
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 253
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/preference/PreferenceScreen$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 255
    :cond_e
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 264
    :cond_11
    :goto_11
    return-void

    :cond_12
    move-object v0, p1

    .line 259
    check-cast v0, Landroid/preference/PreferenceScreen$SavedState;

    .line 260
    .local v0, "myState":Landroid/preference/PreferenceScreen$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 261
    iget-boolean v1, v0, Landroid/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_11

    .line 262
    iget-object v1, v0, Landroid/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Landroid/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    goto :goto_11
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .prologue
    .line 239
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 240
    .local v2, "superState":Landroid/os/Parcelable;
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 241
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_10

    :cond_e
    move-object v1, v2

    .line 248
    :goto_f
    return-object v1

    .line 245
    :cond_10
    new-instance v1, Landroid/preference/PreferenceScreen$SavedState;

    invoke-direct {v1, v2}, Landroid/preference/PreferenceScreen$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 246
    .local v1, "myState":Landroid/preference/PreferenceScreen$SavedState;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    .line 247
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v1, Landroid/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    goto :goto_f
.end method
