.class public Landroid/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/Preference$BaseSavedState;,
        Landroid/preference/Preference$OnPreferenceChangeInternalListener;,
        Landroid/preference/Preference$OnPreferenceClickListener;,
        Landroid/preference/Preference$OnPreferenceChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/preference/Preference;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ORDER:I = 0x7fffffff


# instance fields
.field private mBaseMethodCalled:Z

.field private mCanRecycleLayout:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFragment:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mId:J

.field private mIntent:Landroid/content/Intent;

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

.field private mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mOrder:I

.field private mParentDependencyMet:Z

.field private mPersistent:Z

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private mRequiresKey:Z

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mSummaryDescription:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleDescription:Ljava/lang/CharSequence;

.field private mTitleDescriptionRes:I

.field private mTitleRes:I

.field private mTwForceRecycleLayout:Z

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 343
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 333
    const v0, 0x101008e

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 334
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const v5, 0x7fffffff

    iput v5, p0, Landroid/preference/Preference;->mOrder:I

    .line 115
    iput-boolean v8, p0, Landroid/preference/Preference;->mEnabled:Z

    .line 116
    iput-boolean v8, p0, Landroid/preference/Preference;->mSelectable:Z

    .line 118
    iput-boolean v8, p0, Landroid/preference/Preference;->mPersistent:Z

    .line 121
    iput-boolean v8, p0, Landroid/preference/Preference;->mDependencyMet:Z

    .line 122
    iput-boolean v8, p0, Landroid/preference/Preference;->mParentDependencyMet:Z

    .line 127
    iput-boolean v8, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    .line 129
    const v5, 0x1090090

    iput v5, p0, Landroid/preference/Preference;->mLayoutResId:I

    .line 131
    iput-boolean v8, p0, Landroid/preference/Preference;->mCanRecycleLayout:Z

    .line 143
    iput-boolean v9, p0, Landroid/preference/Preference;->mTwForceRecycleLayout:Z

    .line 221
    iput-object p1, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    .line 223
    sget-object v5, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v5, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 225
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .local v2, "i":I
    :goto_2b
    if-ltz v2, :cond_10f

    .line 226
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 227
    .local v1, "attr":I
    packed-switch v1, :pswitch_data_136

    .line 225
    :cond_34
    :goto_34
    add-int/lit8 v2, v2, -0x1

    goto :goto_2b

    .line 229
    :pswitch_37
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/preference/Preference;->mIconResId:I

    goto :goto_34

    .line 233
    :pswitch_3e
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    goto :goto_34

    .line 237
    :pswitch_45
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/preference/Preference;->mTitleRes:I

    .line 238
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 239
    sget-boolean v5, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v5, :cond_34

    .line 240
    iget-object v5, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget v7, p0, Landroid/preference/Preference;->mTitleRes:I

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->addPreferenceString(Ljava/lang/CharSequence;I)V

    goto :goto_34

    .line 245
    :pswitch_63
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 246
    sget-boolean v5, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v5, :cond_34

    .line 247
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 248
    .local v4, "summaryRes":I
    iget-object v5, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6, v4}, Landroid/content/res/Resources;->addPreferenceString(Ljava/lang/CharSequence;I)V

    goto :goto_34

    .line 253
    .end local v4    # "summaryRes":I
    :pswitch_7d
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/preference/Preference;->mTitleDescriptionRes:I

    .line 254
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/preference/Preference;->mTitleDescription:Ljava/lang/CharSequence;

    .line 255
    sget-boolean v5, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v5, :cond_34

    .line 256
    iget-object v5, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Landroid/preference/Preference;->mTitleDescription:Ljava/lang/CharSequence;

    iget v7, p0, Landroid/preference/Preference;->mTitleDescriptionRes:I

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->addPreferenceString(Ljava/lang/CharSequence;I)V

    goto :goto_34

    .line 261
    :pswitch_9b
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/preference/Preference;->mSummaryDescription:Ljava/lang/CharSequence;

    .line 262
    sget-boolean v5, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v5, :cond_34

    .line 263
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 264
    .local v3, "mSummaryDescriptionRes":I
    iget-object v5, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Landroid/preference/Preference;->mSummaryDescription:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources;->addPreferenceString(Ljava/lang/CharSequence;I)V

    goto :goto_34

    .line 269
    .end local v3    # "mSummaryDescriptionRes":I
    :pswitch_b5
    iget v5, p0, Landroid/preference/Preference;->mOrder:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/preference/Preference;->mOrder:I

    goto/16 :goto_34

    .line 273
    :pswitch_bf
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/preference/Preference;->mFragment:Ljava/lang/String;

    goto/16 :goto_34

    .line 277
    :pswitch_c7
    iget v5, p0, Landroid/preference/Preference;->mLayoutResId:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/preference/Preference;->mLayoutResId:I

    goto/16 :goto_34

    .line 281
    :pswitch_d1
    iget v5, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    goto/16 :goto_34

    .line 285
    :pswitch_db
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/preference/Preference;->mEnabled:Z

    goto/16 :goto_34

    .line 289
    :pswitch_e3
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/preference/Preference;->mSelectable:Z

    goto/16 :goto_34

    .line 293
    :pswitch_eb
    iget-boolean v5, p0, Landroid/preference/Preference;->mPersistent:Z

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/preference/Preference;->mPersistent:Z

    goto/16 :goto_34

    .line 297
    :pswitch_f5
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    goto/16 :goto_34

    .line 301
    :pswitch_fd
    invoke-virtual {p0, v0, v1}, Landroid/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    goto/16 :goto_34

    .line 305
    :pswitch_105
    iget-boolean v5, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    goto/16 :goto_34

    .line 309
    .end local v1    # "attr":I
    :cond_10f
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 311
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.preference"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_134

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_134

    .line 314
    iput-boolean v9, p0, Landroid/preference/Preference;->mCanRecycleLayout:Z

    .line 316
    :cond_134
    return-void

    .line 227
    nop

    :pswitch_data_136
    .packed-switch 0x0
        :pswitch_37
        :pswitch_eb
        :pswitch_db
        :pswitch_c7
        :pswitch_45
        :pswitch_e3
        :pswitch_3e
        :pswitch_63
        :pswitch_b5
        :pswitch_d1
        :pswitch_f5
        :pswitch_fd
        :pswitch_105
        :pswitch_bf
        :pswitch_7d
        :pswitch_9b
    .end packed-switch
.end method

.method private dispatchSetInitialValue()V
    .registers 4

    .prologue
    .line 1439
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    .line 1440
    .local v0, "shouldPersist":Z
    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1441
    :cond_12
    iget-object v1, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_1c

    .line 1442
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 1447
    :cond_1c
    :goto_1c
    return-void

    .line 1445
    :cond_1d
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_1c
.end method

.method private registerDependency()V
    .registers 5

    .prologue
    .line 1257
    iget-object v1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1266
    :goto_8
    return-void

    .line 1259
    :cond_9
    iget-object v1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    .line 1260
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_15

    .line 1261
    invoke-direct {v0, p0}, Landroid/preference/Preference;->registerDependent(Landroid/preference/Preference;)V

    goto :goto_8

    .line 1263
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dependency \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found for preference \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" (title: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerDependent(Landroid/preference/Preference;)V
    .registers 3
    .param p1, "dependent"    # Landroid/preference/Preference;

    .prologue
    .line 1305
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_b

    .line 1306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    .line 1309
    :cond_b
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1311
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    .line 1312
    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 605
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 607
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1c

    move-object v1, p1

    .line 608
    check-cast v1, Landroid/view/ViewGroup;

    .line 609
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_10
    if-ltz v0, :cond_1c

    .line 610
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Landroid/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 609
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 613
    .end local v0    # "i":I
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_1c
    return-void
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .registers 4
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 1470
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->shouldCommit()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1472
    :try_start_8
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_b
    .catch Ljava/lang/AbstractMethodError; {:try_start_8 .. :try_end_b} :catch_c

    .line 1480
    :cond_b
    :goto_b
    return-void

    .line 1473
    :catch_c
    move-exception v0

    .line 1477
    .local v0, "unused":Ljava/lang/AbstractMethodError;
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_b
.end method

.method private unregisterDependency()V
    .registers 3

    .prologue
    .line 1269
    iget-object v1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1270
    iget-object v1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    .line 1271
    .local v0, "oldDependency":Landroid/preference/Preference;
    if-eqz v0, :cond_f

    .line 1272
    invoke-direct {v0, p0}, Landroid/preference/Preference;->unregisterDependent(Landroid/preference/Preference;)V

    .line 1275
    .end local v0    # "oldDependency":Landroid/preference/Preference;
    :cond_f
    return-void
.end method

.method private unregisterDependent(Landroid/preference/Preference;)V
    .registers 3
    .param p1, "dependent"    # Landroid/preference/Preference;

    .prologue
    .line 1323
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1324
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1326
    :cond_9
    return-void
.end method


# virtual methods
.method protected callChangeListener(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 997
    iget-object v0, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method canRecycleLayout()Z
    .registers 2

    .prologue
    .line 1764
    iget-boolean v0, p0, Landroid/preference/Preference;->mCanRecycleLayout:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/preference/Preference;->mTwForceRecycleLayout:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public compareTo(Landroid/preference/Preference;)I
    .registers 4
    .param p1, "another"    # Landroid/preference/Preference;

    .prologue
    .line 1174
    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    iget v1, p1, Landroid/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_c

    .line 1176
    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    iget v1, p1, Landroid/preference/Preference;->mOrder:I

    sub-int/2addr v0, v1

    .line 1186
    :goto_b
    return v0

    .line 1177
    :cond_c
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_14

    .line 1179
    const/4 v0, 0x0

    goto :goto_b

    .line 1180
    :cond_14
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1a

    .line 1181
    const/4 v0, 0x1

    goto :goto_b

    .line 1182
    :cond_1a
    iget-object v0, p1, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_20

    .line 1183
    const/4 v0, -0x1

    goto :goto_b

    .line 1186
    :cond_20
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_b
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 81
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1884
    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1885
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1886
    .local v0, "state":Landroid/os/Parcelable;
    if-eqz v0, :cond_20

    .line 1887
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    .line 1888
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1889
    iget-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    if-nez v1, :cond_20

    .line 1890
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1895
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_20
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1831
    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1832
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    .line 1833
    invoke-virtual {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1834
    .local v0, "state":Landroid/os/Parcelable;
    iget-boolean v1, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    if-nez v1, :cond_19

    .line 1835
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1838
    :cond_19
    if-eqz v0, :cond_20

    .line 1839
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1842
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_20
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1288
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_c

    .line 1289
    :cond_a
    const/4 v0, 0x0

    .line 1292
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_b
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 1094
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1414
    iget-object v0, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getEditor()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .prologue
    .line 1142
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_6

    .line 1143
    const/4 v0, 0x0

    .line 1146
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_5
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, Landroid/preference/Preference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 406
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/preference/Preference;->mExtras:Landroid/os/Bundle;

    .line 408
    :cond_b
    iget-object v0, p0, Landroid/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .registers 6

    .prologue
    const/16 v4, 0x20

    .line 1792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1793
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1794
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 1795
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1797
    :cond_18
    invoke-virtual {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1798
    .local v1, "summary":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 1799
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1801
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_38

    .line 1803
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1805
    :cond_38
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 396
    iget-object v0, p0, Landroid/preference/Preference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 756
    iget-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getId()J
    .registers 3

    .prologue
    .line 894
    iget-wide v0, p0, Landroid/preference/Preference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 927
    iget-object v0, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutResource()I
    .registers 2

    .prologue
    .line 448
    iget v0, p0, Landroid/preference/Preference;->mLayoutResId:I

    return v0
.end method

.method public getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;
    .registers 2

    .prologue
    .line 1017
    iget-object v0, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method public getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;
    .registers 2

    .prologue
    .line 1035
    iget-object v0, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method

.method public getOrder()I
    .registers 2

    .prologue
    .line 645
    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    return v0
.end method

.method protected getPersistedBoolean(Z)Z
    .registers 4
    .param p1, "defaultReturnValue"    # Z

    .prologue
    .line 1756
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1760
    .end local p1    # "defaultReturnValue":Z
    :goto_6
    return p1

    .restart local p1    # "defaultReturnValue":Z
    :cond_7
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_6
.end method

.method protected getPersistedFloat(F)F
    .registers 4
    .param p1, "defaultReturnValue"    # F

    .prologue
    .line 1668
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1672
    .end local p1    # "defaultReturnValue":F
    :goto_6
    return p1

    .restart local p1    # "defaultReturnValue":F
    :cond_7
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    goto :goto_6
.end method

.method protected getPersistedInt(I)I
    .registers 4
    .param p1, "defaultReturnValue"    # I

    .prologue
    .line 1624
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1628
    .end local p1    # "defaultReturnValue":I
    :goto_6
    return p1

    .restart local p1    # "defaultReturnValue":I
    :cond_7
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_6
.end method

.method protected getPersistedLong(J)J
    .registers 5
    .param p1, "defaultReturnValue"    # J

    .prologue
    .line 1712
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1716
    .end local p1    # "defaultReturnValue":J
    :goto_6
    return-wide p1

    .restart local p1    # "defaultReturnValue":J
    :cond_7
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_6
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "defaultReturnValue"    # Ljava/lang/String;

    .prologue
    .line 1525
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1529
    .end local p1    # "defaultReturnValue":Ljava/lang/String;
    :goto_6
    return-object p1

    .restart local p1    # "defaultReturnValue":Ljava/lang/String;
    :cond_7
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6
.end method

.method protected getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1580
    .local p1, "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1584
    .end local p1    # "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_6
    return-object p1

    .restart local p1    # "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_6
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .registers 2

    .prologue
    .line 1226
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 1115
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_6

    .line 1116
    const/4 v0, 0x0

    .line 1119
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_5
.end method

.method public getShouldDisableView()Z
    .registers 2

    .prologue
    .line 884
    iget-boolean v0, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 766
    iget-object v0, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummaryDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 773
    iget-object v0, p0, Landroid/preference/Preference;->mSummaryDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 712
    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 719
    iget-object v0, p0, Landroid/preference/Preference;->mTitleDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleRes()I
    .registers 2

    .prologue
    .line 702
    iget v0, p0, Landroid/preference/Preference;->mTitleRes:I

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 492
    const/4 v0, 0x0

    .line 493
    .local v0, "tempConvertView":Landroid/widget/TextView;
    if-nez p1, :cond_7

    .line 494
    invoke-virtual {p0, p2}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 496
    :cond_7
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 498
    instance-of v1, p0, Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_40

    .line 499
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_40

    move-object v0, p1

    .line 500
    check-cast v0, Landroid/widget/TextView;

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    const v3, 0x1040ae9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 505
    :cond_40
    return-object p1
.end method

.method public getWidgetLayoutResource()I
    .registers 2

    .prologue
    .line 475
    iget v0, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    return v0
.end method

.method public hasKey()Z
    .registers 2

    .prologue
    .line 951
    iget-object v0, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 838
    iget-boolean v0, p0, Landroid/preference/Preference;->mEnabled:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/preference/Preference;->mDependencyMet:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/preference/Preference;->mParentDependencyMet:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isPersistent()Z
    .registers 2

    .prologue
    .line 961
    iget-boolean v0, p0, Landroid/preference/Preference;->mPersistent:Z

    return v0
.end method

.method public isSelectable()Z
    .registers 2

    .prologue
    .line 859
    iget-boolean v0, p0, Landroid/preference/Preference;->mSelectable:Z

    return v0
.end method

.method protected notifyChanged()V
    .registers 2

    .prologue
    .line 1204
    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_9

    .line 1205
    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceChange(Landroid/preference/Preference;)V

    .line 1207
    :cond_9
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .registers 6
    .param p1, "disableDependents"    # Z

    .prologue
    .line 1336
    iget-object v0, p0, Landroid/preference/Preference;->mDependents:Ljava/util/List;

    .line 1338
    .local v0, "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    if-nez v0, :cond_5

    .line 1346
    :cond_4
    return-void

    .line 1342
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1343
    .local v1, "dependentsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_4

    .line 1344
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    invoke-virtual {v3, p0, p1}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    .line 1343
    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method

.method protected notifyHierarchyChanged()V
    .registers 2

    .prologue
    .line 1215
    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_9

    .line 1216
    iget-object v0, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Landroid/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Landroid/preference/Preference;)V

    .line 1218
    :cond_9
    return-void
.end method

.method protected onAttachedToActivity()V
    .registers 1

    .prologue
    .line 1252
    invoke-direct {p0}, Landroid/preference/Preference;->registerDependency()V

    .line 1253
    return-void
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .registers 4
    .param p1, "preferenceManager"    # Landroid/preference/PreferenceManager;

    .prologue
    .line 1236
    iput-object p1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 1238
    invoke-virtual {p1}, Landroid/preference/PreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/preference/Preference;->mId:J

    .line 1240
    invoke-direct {p0}, Landroid/preference/Preference;->dispatchSetInitialValue()V

    .line 1241
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 551
    const v9, 0x1020016

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 553
    .local v6, "titleView":Landroid/widget/TextView;
    if-eqz v6, :cond_2b

    .line 554
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 555
    .local v4, "title":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitleDescription()Ljava/lang/CharSequence;

    move-result-object v5

    .line 556
    .local v5, "titleDescription":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_96

    .line 557
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_28

    .line 559
    invoke-virtual {v6, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 561
    :cond_28
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 567
    .end local v4    # "title":Ljava/lang/CharSequence;
    .end local v5    # "titleDescription":Ljava/lang/CharSequence;
    :cond_2b
    :goto_2b
    const v9, 0x1020010

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 569
    .local v3, "summaryView":Landroid/widget/TextView;
    if-eqz v3, :cond_53

    .line 570
    invoke-virtual {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 571
    .local v1, "summary":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/preference/Preference;->getSummaryDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 572
    .local v2, "summaryDescription":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9a

    .line 573
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_50

    .line 575
    invoke-virtual {v3, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 577
    :cond_50
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 583
    .end local v1    # "summary":Ljava/lang/CharSequence;
    .end local v2    # "summaryDescription":Ljava/lang/CharSequence;
    :cond_53
    :goto_53
    const v9, 0x1020006

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 584
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_8a

    .line 585
    iget v9, p0, Landroid/preference/Preference;->mIconResId:I

    if-nez v9, :cond_66

    iget-object v9, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_83

    .line 586
    :cond_66
    iget-object v9, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_7a

    .line 587
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, p0, Landroid/preference/Preference;->mIconResId:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 589
    :cond_7a
    iget-object v9, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_83

    .line 590
    iget-object v9, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 593
    :cond_83
    iget-object v9, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_9e

    :goto_87
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 596
    :cond_8a
    iget-boolean v7, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    if-eqz v7, :cond_95

    .line 597
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v7

    invoke-direct {p0, p1, v7}, Landroid/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 599
    :cond_95
    return-void

    .line 563
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "summaryView":Landroid/widget/TextView;
    .restart local v4    # "title":Ljava/lang/CharSequence;
    .restart local v5    # "titleDescription":Ljava/lang/CharSequence;
    :cond_96
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2b

    .line 579
    .end local v4    # "title":Ljava/lang/CharSequence;
    .end local v5    # "titleDescription":Ljava/lang/CharSequence;
    .restart local v1    # "summary":Ljava/lang/CharSequence;
    .restart local v2    # "summaryDescription":Ljava/lang/CharSequence;
    .restart local v3    # "summaryView":Landroid/widget/TextView;
    :cond_9a
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_53

    .end local v1    # "summary":Ljava/lang/CharSequence;
    .end local v2    # "summaryDescription":Ljava/lang/CharSequence;
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    :cond_9e
    move v7, v8

    .line 593
    goto :goto_87
.end method

.method protected onClick()V
    .registers 1

    .prologue
    .line 904
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 522
    iget-object v3, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 525
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    iget v3, p0, Landroid/preference/Preference;->mLayoutResId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 527
    .local v0, "layout":Landroid/view/View;
    const v3, 0x1020018

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 529
    .local v2, "widgetFrame":Landroid/view/ViewGroup;
    if-eqz v2, :cond_25

    .line 530
    iget v3, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    if-eqz v3, :cond_26

    .line 531
    iget v3, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 536
    :cond_25
    :goto_25
    return-object v0

    .line 533
    :cond_26
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_25
.end method

.method public onDependencyChanged(Landroid/preference/Preference;Z)V
    .registers 4
    .param p1, "dependency"    # Landroid/preference/Preference;
    .param p2, "disableDependent"    # Z

    .prologue
    .line 1355
    iget-boolean v0, p0, Landroid/preference/Preference;->mDependencyMet:Z

    if-ne v0, p2, :cond_13

    .line 1356
    if-nez p2, :cond_14

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, Landroid/preference/Preference;->mDependencyMet:Z

    .line 1359
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 1361
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 1363
    :cond_13
    return-void

    .line 1356
    :cond_14
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 4
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 359
    const/4 v0, 0x0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1082
    const/4 v0, 0x0

    return v0
.end method

.method public onParentChanged(Landroid/preference/Preference;Z)V
    .registers 4
    .param p1, "parent"    # Landroid/preference/Preference;
    .param p2, "disableChild"    # Z

    .prologue
    .line 1372
    iget-boolean v0, p0, Landroid/preference/Preference;->mParentDependencyMet:Z

    if-ne v0, p2, :cond_13

    .line 1373
    if-nez p2, :cond_14

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, Landroid/preference/Preference;->mParentDependencyMet:Z

    .line 1376
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 1378
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 1380
    :cond_13
    return-void

    .line 1373
    :cond_14
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected onPrepareForRemoval()V
    .registers 1

    .prologue
    .line 1423
    invoke-direct {p0}, Landroid/preference/Preference;->unregisterDependency()V

    .line 1424
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1908
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    .line 1909
    sget-object v0, Landroid/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_11

    if-eqz p1, :cond_11

    .line 1910
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong state class -- expecting Preference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1912
    :cond_11
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 1857
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mBaseMethodCalled:Z

    .line 1858
    sget-object v0, Landroid/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 3
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 1467
    return-void
.end method

.method public peekExtras()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Landroid/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public performClick(Landroid/preference/PreferenceScreen;)V
    .registers 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 1048
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1072
    :cond_6
    :goto_6
    return-void

    .line 1052
    :cond_7
    invoke-virtual {p0}, Landroid/preference/Preference;->onClick()V

    .line 1054
    iget-object v3, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    if-eqz v3, :cond_16

    iget-object v3, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-interface {v3, p0}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1058
    :cond_16
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    .line 1059
    .local v2, "preferenceManager":Landroid/preference/PreferenceManager;
    if-eqz v2, :cond_2a

    .line 1060
    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    .line 1062
    .local v1, "listener":Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
    if-eqz p1, :cond_2a

    if-eqz v1, :cond_2a

    invoke-interface {v1, p1, p0}, Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1068
    .end local v1    # "listener":Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
    :cond_2a
    iget-object v3, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_6

    .line 1069
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1070
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method protected persistBoolean(Z)Z
    .registers 6
    .param p1, "value"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1730
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1731
    if-nez p1, :cond_b

    move v1, v2

    :cond_b
    invoke-virtual {p0, v1}, Landroid/preference/Preference;->getPersistedBoolean(Z)Z

    move-result v1

    if-ne p1, v1, :cond_12

    .line 1741
    :goto_11
    return v2

    .line 1736
    :cond_12
    iget-object v1, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1737
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1738
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_11

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_21
    move v2, v1

    .line 1741
    goto :goto_11
.end method

.method protected persistFloat(F)Z
    .registers 5
    .param p1, "value"    # F

    .prologue
    const/4 v1, 0x1

    .line 1642
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1643
    const/high16 v2, 0x7fc00000

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->getPersistedFloat(F)F

    move-result v2

    cmpl-float v2, p1, v2

    if-nez v2, :cond_12

    .line 1653
    :goto_11
    return v1

    .line 1648
    :cond_12
    iget-object v2, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1649
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1650
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_11

    .line 1653
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_21
    const/4 v1, 0x0

    goto :goto_11
.end method

.method protected persistInt(I)Z
    .registers 5
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 1598
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1599
    xor-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->getPersistedInt(I)I

    move-result v2

    if-ne p1, v2, :cond_10

    .line 1609
    :goto_f
    return v1

    .line 1604
    :cond_10
    iget-object v2, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1605
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1606
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_f

    .line 1609
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1f
    const/4 v1, 0x0

    goto :goto_f
.end method

.method protected persistLong(J)Z
    .registers 7
    .param p1, "value"    # J

    .prologue
    const/4 v1, 0x1

    .line 1686
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1687
    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Landroid/preference/Preference;->getPersistedLong(J)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_13

    .line 1697
    :goto_12
    return v1

    .line 1692
    :cond_13
    iget-object v2, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1693
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1694
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_12

    .line 1697
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_22
    const/4 v1, 0x0

    goto :goto_12
.end method

.method protected persistString(Ljava/lang/String;)Z
    .registers 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1496
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1498
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-ne p1, v2, :cond_f

    .line 1508
    :goto_e
    return v1

    .line 1503
    :cond_f
    iget-object v2, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1504
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1505
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_e

    .line 1508
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1e
    const/4 v1, 0x0

    goto :goto_e
.end method

.method protected persistStringSet(Ljava/util/Set;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 1548
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1550
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1560
    :goto_12
    return v1

    .line 1555
    :cond_13
    iget-object v2, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1556
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1557
    invoke-direct {p0, v0}, Landroid/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_12

    .line 1560
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_22
    const/4 v1, 0x0

    goto :goto_12
.end method

.method requireKey()V
    .registers 3

    .prologue
    .line 938
    iget-object v0, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 939
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 942
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/Preference;->mRequiresKey:Z

    .line 943
    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1870
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1871
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1817
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 1818
    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .registers 2
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 1434
    iput-object p1, p0, Landroid/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 1435
    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .registers 2
    .param p1, "dependencyKey"    # Ljava/lang/String;

    .prologue
    .line 1400
    invoke-direct {p0}, Landroid/preference/Preference;->unregisterDependency()V

    .line 1403
    iput-object p1, p0, Landroid/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 1404
    invoke-direct {p0}, Landroid/preference/Preference;->registerDependency()V

    .line 1405
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 822
    iget-boolean v0, p0, Landroid/preference/Preference;->mEnabled:Z

    if-eq v0, p1, :cond_10

    .line 823
    iput-boolean p1, p0, Landroid/preference/Preference;->mEnabled:Z

    .line 826
    invoke-virtual {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->notifyDependencyChange(Z)V

    .line 828
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 830
    :cond_10
    return-void
.end method

.method public setForceRecycleLayout(Z)V
    .registers 2
    .param p1, "recycle"    # Z

    .prologue
    .line 1772
    iput-boolean p1, p0, Landroid/preference/Preference;->mTwForceRecycleLayout:Z

    .line 1773
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .registers 2
    .param p1, "fragment"    # Ljava/lang/String;

    .prologue
    .line 387
    iput-object p1, p0, Landroid/preference/Preference;->mFragment:Ljava/lang/String;

    .line 388
    return-void
.end method

.method public setIcon(I)V
    .registers 3
    .param p1, "iconResId"    # I

    .prologue
    .line 745
    iput p1, p0, Landroid/preference/Preference;->mIconResId:I

    .line 746
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 747
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 731
    if-nez p1, :cond_6

    iget-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_c

    :cond_6
    if-eqz p1, :cond_11

    iget-object v0, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_11

    .line 732
    :cond_c
    iput-object p1, p0, Landroid/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 734
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 736
    :cond_11
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 369
    iput-object p1, p0, Landroid/preference/Preference;->mIntent:Landroid/content/Intent;

    .line 370
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 913
    iput-object p1, p0, Landroid/preference/Preference;->mKey:Ljava/lang/String;

    .line 915
    iget-boolean v0, p0, Landroid/preference/Preference;->mRequiresKey:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    if-nez v0, :cond_f

    .line 916
    invoke-virtual {p0}, Landroid/preference/Preference;->requireKey()V

    .line 918
    :cond_f
    return-void
.end method

.method public setLayoutResource(I)V
    .registers 3
    .param p1, "layoutResId"    # I

    .prologue
    .line 434
    iget v0, p0, Landroid/preference/Preference;->mLayoutResId:I

    if-eq p1, v0, :cond_7

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/Preference;->mCanRecycleLayout:Z

    .line 439
    :cond_7
    iput p1, p0, Landroid/preference/Preference;->mLayoutResId:I

    .line 440
    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Landroid/preference/Preference$OnPreferenceChangeInternalListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    .prologue
    .line 1197
    iput-object p1, p0, Landroid/preference/Preference;->mListener:Landroid/preference/Preference$OnPreferenceChangeInternalListener;

    .line 1198
    return-void
.end method

.method public setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .registers 2
    .param p1, "onPreferenceChangeListener"    # Landroid/preference/Preference$OnPreferenceChangeListener;

    .prologue
    .line 1007
    iput-object p1, p0, Landroid/preference/Preference;->mOnChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1008
    return-void
.end method

.method public setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    .registers 2
    .param p1, "onPreferenceClickListener"    # Landroid/preference/Preference$OnPreferenceClickListener;

    .prologue
    .line 1026
    iput-object p1, p0, Landroid/preference/Preference;->mOnClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 1027
    return-void
.end method

.method public setOrder(I)V
    .registers 3
    .param p1, "order"    # I

    .prologue
    .line 629
    iget v0, p0, Landroid/preference/Preference;->mOrder:I

    if-eq p1, v0, :cond_9

    .line 630
    iput p1, p0, Landroid/preference/Preference;->mOrder:I

    .line 633
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyHierarchyChanged()V

    .line 635
    :cond_9
    return-void
.end method

.method public setPersistent(Z)V
    .registers 2
    .param p1, "persistent"    # Z

    .prologue
    .line 985
    iput-boolean p1, p0, Landroid/preference/Preference;->mPersistent:Z

    .line 986
    return-void
.end method

.method public setSelectable(Z)V
    .registers 3
    .param p1, "selectable"    # Z

    .prologue
    .line 847
    iget-boolean v0, p0, Landroid/preference/Preference;->mSelectable:Z

    if-eq v0, p1, :cond_9

    .line 848
    iput-boolean p1, p0, Landroid/preference/Preference;->mSelectable:Z

    .line 849
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 851
    :cond_9
    return-void
.end method

.method public setShouldDisableView(Z)V
    .registers 2
    .param p1, "shouldDisableView"    # Z

    .prologue
    .line 874
    iput-boolean p1, p0, Landroid/preference/Preference;->mShouldDisableView:Z

    .line 875
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 876
    return-void
.end method

.method public setSummary(I)V
    .registers 3
    .param p1, "summaryResId"    # I

    .prologue
    .line 795
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 796
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 782
    if-nez p1, :cond_6

    iget-object v0, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_10

    :cond_6
    if-eqz p1, :cond_15

    iget-object v0, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 783
    :cond_10
    iput-object p1, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 784
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 786
    :cond_15
    return-void
.end method

.method public setSummaryDescription(I)V
    .registers 3
    .param p1, "summaryDescriptionResId"    # I

    .prologue
    .line 812
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummaryDescription(Ljava/lang/CharSequence;)V

    .line 813
    return-void
.end method

.method public setSummaryDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "summaryDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 802
    if-nez p1, :cond_6

    iget-object v0, p0, Landroid/preference/Preference;->mSummaryDescription:Ljava/lang/CharSequence;

    if-nez v0, :cond_10

    :cond_6
    if-eqz p1, :cond_15

    iget-object v0, p0, Landroid/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 803
    :cond_10
    iput-object p1, p0, Landroid/preference/Preference;->mSummaryDescription:Ljava/lang/CharSequence;

    .line 804
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 806
    :cond_15
    return-void
.end method

.method public setTitle(I)V
    .registers 3
    .param p1, "titleResId"    # I

    .prologue
    .line 671
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 672
    iput p1, p0, Landroid/preference/Preference;->mTitleRes:I

    .line 673
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 657
    if-nez p1, :cond_6

    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_10

    :cond_6
    if-eqz p1, :cond_18

    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 658
    :cond_10
    const/4 v0, 0x0

    iput v0, p0, Landroid/preference/Preference;->mTitleRes:I

    .line 659
    iput-object p1, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 660
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 662
    :cond_18
    return-void
.end method

.method public setTitleDescription(I)V
    .registers 3
    .param p1, "titleDescriptionResId"    # I

    .prologue
    .line 690
    iget-object v0, p0, Landroid/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitleDescription(Ljava/lang/CharSequence;)V

    .line 691
    iput p1, p0, Landroid/preference/Preference;->mTitleDescriptionRes:I

    .line 692
    return-void
.end method

.method public setTitleDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "titleDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 679
    if-nez p1, :cond_6

    iget-object v0, p0, Landroid/preference/Preference;->mTitleDescription:Ljava/lang/CharSequence;

    if-nez v0, :cond_10

    :cond_6
    if-eqz p1, :cond_18

    iget-object v0, p0, Landroid/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 680
    :cond_10
    const/4 v0, 0x0

    iput v0, p0, Landroid/preference/Preference;->mTitleDescriptionRes:I

    .line 681
    iput-object p1, p0, Landroid/preference/Preference;->mTitleDescription:Ljava/lang/CharSequence;

    .line 682
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 684
    :cond_18
    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .registers 3
    .param p1, "widgetLayoutResId"    # I

    .prologue
    .line 462
    iget v0, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    if-eq p1, v0, :cond_7

    .line 464
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/Preference;->mCanRecycleLayout:Z

    .line 466
    :cond_7
    iput p1, p0, Landroid/preference/Preference;->mWidgetLayoutResId:I

    .line 467
    return-void
.end method

.method public shouldCommit()Z
    .registers 2

    .prologue
    .line 1158
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_6

    .line 1159
    const/4 v0, 0x0

    .line 1162
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->shouldCommit()Z

    move-result v0

    goto :goto_5
.end method

.method public shouldDisableDependents()Z
    .registers 2

    .prologue
    .line 1389
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected shouldPersist()Z
    .registers 2

    .prologue
    .line 974
    iget-object v0, p0, Landroid/preference/Preference;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/preference/Preference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1777
    invoke-virtual {p0}, Landroid/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
