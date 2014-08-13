.class public Lcom/android/contacts/editor/PhotoEditorView;
.super Landroid/widget/FrameLayout;
.source "PhotoEditorView.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor;


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoEditorView"


# instance fields
.field private mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

.field private mFrameView:Landroid/view/View;

.field private mHasSetPhoto:Z

.field private mIsChangedNamecard:Z

.field private mListener:Lcom/android/contacts/editor/Editor$EditorListener;

.field private mNamecardDataId:I

.field private mPhotoImageView:Landroid/widget/ImageView;

.field private mReadOnly:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 57
    iput-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mIsChangedNamecard:Z

    .line 60
    iput v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mNamecardDataId:I

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mIsChangedNamecard:Z

    .line 60
    iput v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mNamecardDataId:I

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/PhotoEditorView;)Lcom/android/contacts/editor/Editor$EditorListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/PhotoEditorView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    return-object v0
.end method


# virtual methods
.method public clearAllFields()V
    .locals 0

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->resetDefault()V

    .line 310
    return-void
.end method

.method public deleteEditor()V
    .locals 0

    .prologue
    .line 305
    return-void
.end method

.method public getIsChangedNamecardPhoto()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mIsChangedNamecard:Z

    return v0
.end method

.method public getIsNamecard()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mNamecardDataId:I

    return v0
.end method

.method public hasSetPhoto()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Photos don\'t support direct field changes"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 80
    const v0, 0x7f090109

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    .line 81
    const v0, 0x7f090369

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/editor/PhotoEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/PhotoEditorView$1;-><init>(Lcom/android/contacts/editor/PhotoEditorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method public onRequestListener()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method protected resetDefault()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 274
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    const v3, 0x7f0203a6

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 276
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mReadOnly:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 282
    iput-boolean v2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    .line 283
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->setFromTemplate(Z)V

    .line 284
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 281
    goto :goto_1
.end method

.method public setBitmapAnimation(Landroid/graphics/Bitmap;)V
    .locals 13
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const v12, 0x7f0203a5

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 184
    const/4 v3, 0x0

    .line 186
    .local v3, "previousDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    if-nez v7, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    if-nez p1, :cond_4

    .line 192
    iget-object v10, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v11, "data15"

    const/4 v7, 0x0

    check-cast v7, [B

    invoke-virtual {v10, v11, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;[B)V

    .line 199
    :cond_2
    :goto_1
    const/4 v7, 0x2

    new-array v2, v7, [Landroid/graphics/drawable/Drawable;

    .line 201
    .local v2, "layers":[Landroid/graphics/drawable/Drawable;
    instance-of v7, v3, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v7, :cond_5

    move-object v4, v3

    .line 202
    check-cast v4, Landroid/graphics/drawable/TransitionDrawable;

    .line 203
    .local v4, "previousTransitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v2, v9

    .line 221
    .end local v4    # "previousTransitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    :goto_2
    if-nez p1, :cond_9

    .line 222
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v2, v8

    .line 228
    :goto_3
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 230
    .local v1, "drawable":Landroid/graphics/drawable/TransitionDrawable;
    iget-object v7, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    .line 231
    iget-object v7, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    const/4 v10, 0x4

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    :cond_3
    iget-object v7, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    const/high16 v10, -0x1000000

    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 234
    iget-object v7, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object v7, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    iget-object v7, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v10

    invoke-virtual {v7, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 238
    if-eqz p1, :cond_a

    move v7, v8

    :goto_4
    iput-boolean v7, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    .line 239
    iget-object v7, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v7, v9}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->setFromTemplate(Z)V

    .line 241
    const/16 v7, 0x320

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 243
    if-eqz p1, :cond_0

    .line 247
    iget-object v7, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v10, "is_super_primary"

    invoke-virtual {v7, v10, v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 254
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/contacts/ContactsUtils;->getThumbnailSize(Landroid/content/Context;)I

    move-result v6

    .line 255
    .local v6, "size":I
    invoke-static {p1, v6, v6, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 256
    .local v5, "scaled":Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/android/contacts/util/ContactPhotoUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 257
    .local v0, "compressed":[B
    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v8, "data15"

    invoke-virtual {v7, v8, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 194
    .end local v0    # "compressed":[B
    .end local v1    # "drawable":Landroid/graphics/drawable/TransitionDrawable;
    .end local v2    # "layers":[Landroid/graphics/drawable/Drawable;
    .end local v5    # "scaled":Landroid/graphics/Bitmap;
    .end local v6    # "size":I
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v7

    if-nez v7, :cond_2

    .line 195
    iget-object v7, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_1

    .line 206
    .restart local v2    # "layers":[Landroid/graphics/drawable/Drawable;
    :cond_5
    if-eqz p1, :cond_7

    .line 207
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 208
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f020373

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v2, v9

    goto/16 :goto_2

    .line 210
    :cond_6
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v2, v9

    goto/16 :goto_2

    .line 213
    :cond_7
    if-nez v3, :cond_8

    .line 214
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v2, v9

    goto/16 :goto_2

    .line 216
    :cond_8
    aput-object v3, v2, v9

    goto/16 :goto_2

    .line 224
    :cond_9
    invoke-virtual {p1, v9}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 225
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {v7, v10, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v7, v2, v8

    goto/16 :goto_3

    .restart local v1    # "drawable":Landroid/graphics/drawable/TransitionDrawable;
    :cond_a
    move v7, v9

    .line 238
    goto/16 :goto_4
.end method

.method public setDeletable(Z)V
    .locals 0
    .param p1, "deletable"    # Z

    .prologue
    .line 295
    return-void
.end method

.method public setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/editor/Editor$EditorListener;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mListener:Lcom/android/contacts/editor/Editor$EditorListener;

    .line 290
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 73
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 74
    return-void
.end method

.method public setIsChangedNamecardPhoto(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    if-eqz v1, :cond_1

    .line 322
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 323
    .local v0, "isChanged":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mIsChangedNamecard:Z

    if-eq v0, v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v2, "data11"

    invoke-virtual {v1, v2, p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 325
    :cond_0
    iput-boolean v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mIsChangedNamecard:Z

    .line 327
    .end local v0    # "isChanged":Z
    :cond_1
    return-void

    .line 322
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsNamecard(I)V
    .locals 0
    .param p1, "namecardDataId"    # I

    .prologue
    .line 313
    iput p1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mNamecardDataId:I

    .line 314
    return-void
.end method

.method public setPhotoBitmap(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "photo"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 148
    if-nez p1, :cond_1

    .line 150
    iget-object v4, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v5, "data15"

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-virtual {v4, v5, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;[B)V

    .line 151
    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->resetDefault()V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 157
    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 160
    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 163
    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 164
    iput-boolean v6, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    .line 165
    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v3, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->setFromTemplate(Z)V

    .line 168
    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v4, "is_super_primary"

    invoke-virtual {v3, v4, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/ContactsUtils;->getThumbnailSize(Landroid/content/Context;)I

    move-result v2

    .line 177
    .local v2, "size":I
    invoke-static {p1, v2, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 178
    .local v1, "scaled":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/contacts/util/ContactPhotoUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 179
    .local v0, "compressed":[B
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v4, "data15"

    invoke-virtual {v3, v4, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public setSuperPrimary(Z)V
    .locals 3
    .param p1, "superPrimary"    # Z

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    if-eqz v0, :cond_0

    .line 266
    iget-object v1, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v2, "is_super_primary"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 268
    :cond_0
    return-void

    .line 266
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 7
    .param p1, "kind"    # Lcom/android/contacts/model/DataKind;
    .param p2, "values"    # Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .param p3, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p4, "readOnly"    # Z
    .param p5, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 108
    iput-object p2, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 109
    iput-boolean p4, p0, Lcom/android/contacts/editor/PhotoEditorView;->mReadOnly:Z

    .line 111
    invoke-virtual {p5, p3, p1, p2, v4}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/View;->setId(I)V

    .line 113
    if-eqz p2, :cond_2

    .line 115
    const-string v5, "data15"

    invoke-virtual {p2, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 116
    .local v2, "photoBytes":[B
    if-eqz v2, :cond_1

    .line 117
    array-length v5, v2

    invoke-static {v2, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 120
    .local v1, "photo":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 121
    iget-object v5, p0, Lcom/android/contacts/editor/PhotoEditorView;->mPhotoImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object v5, p0, Lcom/android/contacts/editor/PhotoEditorView;->mFrameView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 123
    iput-boolean v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mHasSetPhoto:Z

    .line 124
    iget-object v5, p0, Lcom/android/contacts/editor/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v5, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->setFromTemplate(Z)V

    .line 126
    const-string v5, "data11"

    invoke-virtual {p2, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 127
    .local v0, "data11":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    iput-boolean v3, p0, Lcom/android/contacts/editor/PhotoEditorView;->mIsChangedNamecard:Z

    .line 134
    .end local v0    # "data11":Ljava/lang/Integer;
    .end local v1    # "photo":Landroid/graphics/Bitmap;
    .end local v2    # "photoBytes":[B
    :goto_1
    return-void

    .restart local v0    # "data11":Ljava/lang/Integer;
    .restart local v1    # "photo":Landroid/graphics/Bitmap;
    .restart local v2    # "photoBytes":[B
    :cond_0
    move v3, v4

    .line 127
    goto :goto_0

    .line 129
    .end local v0    # "data11":Ljava/lang/Integer;
    .end local v1    # "photo":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->resetDefault()V

    goto :goto_1

    .line 132
    .end local v2    # "photoBytes":[B
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/editor/PhotoEditorView;->resetDefault()V

    goto :goto_1
.end method
