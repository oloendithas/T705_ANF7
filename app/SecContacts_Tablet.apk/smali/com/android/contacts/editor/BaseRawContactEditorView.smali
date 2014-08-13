.class public abstract Lcom/android/contacts/editor/BaseRawContactEditorView;
.super Landroid/widget/LinearLayout;
.source "BaseRawContactEditorView.java"


# instance fields
.field private mBody:Landroid/view/View;

.field private mDivider:Landroid/view/View;

.field private mExpanded:Z

.field private mHasPhotoEditor:Z

.field private mPhoto:Lcom/android/contacts/editor/PhotoEditorView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mHasPhotoEditor:Z

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mExpanded:Z

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mHasPhotoEditor:Z

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mExpanded:Z

    .line 71
    return-void
.end method

.method private setupAnimations(Lcom/android/contacts/editor/PhotoEditorView;)V
    .locals 20
    .param p1, "editor"    # Lcom/android/contacts/editor/PhotoEditorView;

    .prologue
    .line 204
    new-instance v16, Landroid/animation/LayoutTransition;

    invoke-direct/range {v16 .. v16}, Landroid/animation/LayoutTransition;-><init>()V

    .line 206
    .local v16, "transition":Landroid/animation/LayoutTransition;
    new-instance v15, Lcom/sec/android/app/contacts/util/animation/easing/SineInOut70;

    invoke-direct {v15}, Lcom/sec/android/app/contacts/util/animation/easing/SineInOut70;-><init>()V

    .line 207
    .local v15, "scaleInterpolator":Lcom/sec/android/app/contacts/util/animation/easing/SineInOut70;
    new-instance v8, Lcom/sec/android/app/contacts/util/animation/easing/SineInOut33;

    invoke-direct {v8}, Lcom/sec/android/app/contacts/util/animation/easing/SineInOut33;-><init>()V

    .line 209
    .local v8, "opacityInerpolator":Lcom/sec/android/app/contacts/util/animation/easing/SineInOut33;
    const/16 v17, 0x0

    const-wide/16 v18, 0x1e

    invoke-virtual/range {v16 .. v19}, Landroid/animation/LayoutTransition;->setStagger(IJ)V

    .line 210
    const/16 v17, 0x1

    const-wide/16 v18, 0x1e

    invoke-virtual/range {v16 .. v19}, Landroid/animation/LayoutTransition;->setStagger(IJ)V

    .line 211
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 212
    const/16 v17, 0x1

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 214
    const-string v17, "scaleX"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 215
    .local v11, "pvhScaleXIn":Landroid/animation/PropertyValuesHolder;
    const-string v17, "scaleY"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_1

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 216
    .local v13, "pvhScaleYIn":Landroid/animation/PropertyValuesHolder;
    const-string v17, "alpha"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_2

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 218
    .local v9, "pvhAlphaIn":Landroid/animation/PropertyValuesHolder;
    const/16 v17, 0x0

    check-cast v17, Ljava/lang/Object;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v9, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v17

    const-wide/16 v18, 0x14d

    invoke-virtual/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 219
    .local v4, "animFadeIn":Landroid/animation/ObjectAnimator;
    invoke-virtual {v4, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 220
    new-instance v17, Lcom/android/contacts/editor/BaseRawContactEditorView$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/editor/BaseRawContactEditorView$1;-><init>(Lcom/android/contacts/editor/BaseRawContactEditorView;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 233
    const/16 v17, 0x0

    check-cast v17, Ljava/lang/Object;

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v11, v18, v19

    const/16 v19, 0x1

    aput-object v13, v18, v19

    const/16 v19, 0x2

    aput-object v9, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v17

    const-wide/16 v18, 0x14d

    invoke-virtual/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 235
    .local v6, "animIn":Landroid/animation/ObjectAnimator;
    invoke-virtual {v6, v15}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 236
    new-instance v17, Lcom/android/contacts/editor/BaseRawContactEditorView$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/editor/BaseRawContactEditorView$2;-><init>(Lcom/android/contacts/editor/BaseRawContactEditorView;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 244
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 245
    .local v2, "aniInSet":Landroid/animation/AnimatorSet;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v4, v17, v18

    const/16 v18, 0x1

    aput-object v6, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 247
    const/16 v17, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 250
    const-string v17, "scaleX"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_3

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 251
    .local v12, "pvhScaleXOut":Landroid/animation/PropertyValuesHolder;
    const-string v17, "scaleY"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_4

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 252
    .local v14, "pvhScaleYOut":Landroid/animation/PropertyValuesHolder;
    const-string v17, "alpha"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_5

    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 254
    .local v10, "pvhAlphaOut":Landroid/animation/PropertyValuesHolder;
    const/16 v17, 0x0

    check-cast v17, Ljava/lang/Object;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v10, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v17

    const-wide/16 v18, 0x14d

    invoke-virtual/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 255
    .local v5, "animFadeOut":Landroid/animation/ObjectAnimator;
    invoke-virtual {v5, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 256
    new-instance v17, Lcom/android/contacts/editor/BaseRawContactEditorView$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/editor/BaseRawContactEditorView$3;-><init>(Lcom/android/contacts/editor/BaseRawContactEditorView;)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 275
    const/16 v17, 0x0

    check-cast v17, Ljava/lang/Object;

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v12, v18, v19

    const/16 v19, 0x1

    aput-object v14, v18, v19

    const/16 v19, 0x2

    aput-object v10, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v17

    const-wide/16 v18, 0x14d

    invoke-virtual/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 277
    .local v7, "animOut":Landroid/animation/ObjectAnimator;
    invoke-virtual {v7, v15}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 278
    new-instance v17, Lcom/android/contacts/editor/BaseRawContactEditorView$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/editor/BaseRawContactEditorView$4;-><init>(Lcom/android/contacts/editor/BaseRawContactEditorView;)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 286
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 287
    .local v3, "aniOutSet":Landroid/animation/AnimatorSet;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v5, v17, v18

    const/16 v18, 0x1

    aput-object v7, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 289
    const/16 v17, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 290
    const-wide/16 v17, 0x14d

    invoke-virtual/range {v16 .. v18}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 292
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 293
    return-void

    .line 214
    :array_0
    .array-data 4
        0x3f4ccccd
        0x3f800000
    .end array-data

    .line 215
    :array_1
    .array-data 4
        0x3f4ccccd
        0x3f800000
    .end array-data

    .line 216
    :array_2
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    .line 250
    :array_3
    .array-data 4
        0x3f800000
        0x3f4ccccd
    .end array-data

    .line 251
    :array_4
    .array-data 4
        0x3f800000
        0x3f4ccccd
    .end array-data

    .line 252
    :array_5
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method


# virtual methods
.method public abstract getAlerttoneVisibility()Z
.end method

.method public getIsChangedNamecardPhoto()Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/PhotoEditorView;->getIsChangedNamecardPhoto()Z

    move-result v0

    return v0
.end method

.method public getIsNamecard()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/PhotoEditorView;->getIsNamecard()I

    move-result v0

    return v0
.end method

.method public getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    return-object v0
.end method

.method public abstract getRawContactId()J
.end method

.method public abstract getVibrationVisibility()Z
.end method

.method public hasPhotoEditor()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mHasPhotoEditor:Z

    return v0
.end method

.method public hasSetPhoto()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/PhotoEditorView;->hasSetPhoto()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 77
    const v0, 0x7f090406

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mBody:Landroid/view/View;

    .line 78
    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mDivider:Landroid/view/View;

    .line 80
    const v0, 0x7f090409

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/PhotoEditorView;

    iput-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    .line 81
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/PhotoEditorView;->setEnabled(Z)V

    .line 83
    return-void
.end method

.method public setAlerttone(Ljava/lang/String;)V
    .locals 0
    .param p1, "alerttone"    # Ljava/lang/String;

    .prologue
    .line 158
    return-void
.end method

.method public setAlerttoneVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 164
    return-void
.end method

.method public setBitmapAnimation(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/PhotoEditorView;->setBitmapAnimation(Landroid/graphics/Bitmap;)V

    .line 98
    return-void
.end method

.method public setDateFormat()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method setExpanded(Z)V
    .locals 5
    .param p1, "value"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 191
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 192
    const/4 v0, 0x1

    .line 197
    .local v0, "newValue":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mExpanded:Z

    if-ne v0, v1, :cond_1

    .line 201
    :goto_1
    return-void

    .line 194
    .end local v0    # "newValue":Z
    :cond_0
    move v0, p1

    .restart local v0    # "newValue":Z
    goto :goto_0

    .line 198
    :cond_1
    iput-boolean v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mExpanded:Z

    .line 199
    iget-object v4, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mBody:Landroid/view/View;

    if-eqz v0, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v1, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v1, v3

    .line 199
    goto :goto_2

    :cond_3
    move v3, v2

    .line 200
    goto :goto_3
.end method

.method public setGroupMetaData(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "groupMetaData"    # Landroid/database/Cursor;

    .prologue
    .line 86
    return-void
.end method

.method public setGroupVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 171
    return-void
.end method

.method protected setHasPhotoEditor(Z)V
    .locals 2
    .param p1, "hasPhotoEditor"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mHasPhotoEditor:Z

    .line 102
    iget-object v1, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 103
    return-void

    .line 102
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setIsChangedNamecardPhoto(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/PhotoEditorView;->setIsChangedNamecardPhoto(I)V

    .line 305
    return-void
.end method

.method public setIsNamecard(I)V
    .locals 1
    .param p1, "namecardDataId"    # I

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/PhotoEditorView;->setIsNamecard(I)V

    .line 297
    return-void
.end method

.method public setPhotoBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/contacts/editor/BaseRawContactEditorView;->mPhoto:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/PhotoEditorView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    .line 94
    return-void
.end method

.method public setRelationVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 174
    return-void
.end method

.method public setRingtone(Ljava/lang/String;)V
    .locals 0
    .param p1, "ringtone"    # Ljava/lang/String;

    .prologue
    .line 134
    return-void
.end method

.method public setRintoneVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 140
    return-void
.end method

.method public abstract setState(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V
.end method

.method public setVibration(Ljava/lang/String;)V
    .locals 0
    .param p1, "vibration"    # Ljava/lang/String;

    .prologue
    .line 146
    return-void
.end method

.method public setVibrationVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 152
    return-void
.end method
