.class public Lcom/android/contacts/util/ImageViewDrawableSetter;
.super Ljava/lang/Object;
.source "ImageViewDrawableSetter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageViewDrawableSetter"


# instance fields
.field private mCompressed:[B

.field private mContactId:J

.field private mDurationInMillis:I

.field private mIsSecretContact:Z

.field private mIsSecretInfoChanged:Z

.field private mPreviousDrawable:Landroid/graphics/drawable/Drawable;

.field private mTarget:Lcom/sec/android/app/contacts/widget/AnimatableImageView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v2, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mDurationInMillis:I

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mContactId:J

    .line 50
    iput-boolean v2, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mIsSecretContact:Z

    .line 51
    iput-boolean v2, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mIsSecretInfoChanged:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/contacts/widget/AnimatableImageView;)V
    .locals 3
    .param p1, "target"    # Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v2, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mDurationInMillis:I

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mContactId:J

    .line 50
    iput-boolean v2, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mIsSecretContact:Z

    .line 51
    iput-boolean v2, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mIsSecretInfoChanged:Z

    .line 57
    iput-object p1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    .line 58
    return-void
.end method

.method private decodedBitmapDrawable([B)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .param p1, "compressed"    # [B

    .prologue
    .line 201
    iget-object v2, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 202
    .local v1, "rsrc":Landroid/content/res/Resources;
    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 203
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method private defaultDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    .line 190
    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 191
    .local v2, "resources":Landroid/content/res/Resources;
    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mContactId:J

    invoke-static {v3, v4, v5, v6}, Lcom/android/contacts/ContactPhotoManager;->getDefaultAvatarResId(ZZJ)I

    move-result v1

    .line 193
    .local v1, "resId":I
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 196
    :goto_0
    return-object v3

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "ImageViewDrawableSetter"

    const-string v4, "Cannot load default avatar resource."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private previousBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected getCompressedImage()[B
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCompressed:[B

    return-object v0
.end method

.method public getTarget()Lcom/sec/android/app/contacts/widget/AnimatableImageView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    return-object v0
.end method

.method protected setCompressedImage([B)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "compressed"    # [B

    .prologue
    const/4 v7, 0x6

    const/4 v9, 0x0

    .line 111
    iget-object v6, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_1

    .line 126
    :cond_0
    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->defaultDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 135
    .local v4, "newDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    iput-object p1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCompressed:[B

    .line 138
    if-eqz p1, :cond_3

    array-length v6, p1

    if-lt v6, v7, :cond_3

    .line 139
    new-array v3, v7, [B

    .line 140
    .local v3, "header":[B
    invoke-static {p1, v9, v3, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 142
    .local v2, "fileHeader":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "GIF89a"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 143
    const-string v6, "ImageViewDrawableSetter"

    const-string v7, "Loading agif..."

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :try_start_0
    iget-object v6, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    invoke-virtual {v6, p1}, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->loadAGIF([B)V

    .line 146
    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->previousBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 177
    .end local v2    # "fileHeader":Ljava/lang/String;
    .end local v3    # "header":[B
    .end local v4    # "newDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v6

    .line 115
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCompressed:[B

    invoke-static {v6, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->previousBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_1

    .line 126
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/contacts/util/ImageViewDrawableSetter;->decodedBitmapDrawable([B)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    goto :goto_0

    .line 147
    .restart local v2    # "fileHeader":Ljava/lang/String;
    .restart local v3    # "header":[B
    .restart local v4    # "newDrawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fileHeader":Ljava/lang/String;
    .end local v3    # "header":[B
    :cond_3
    :goto_2
    if-nez v4, :cond_5

    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->previousBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_1

    .line 153
    .restart local v2    # "fileHeader":Ljava/lang/String;
    .restart local v3    # "header":[B
    :cond_4
    const-string v6, "ImageViewDrawableSetter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This isn\'t gif file. header : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 160
    .end local v2    # "fileHeader":Ljava/lang/String;
    .end local v3    # "header":[B
    :cond_5
    iget-object v6, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mDurationInMillis:I

    if-nez v6, :cond_7

    .line 162
    :cond_6
    iget-object v6, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    invoke-virtual {v6, v4}, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    :goto_3
    iput-object v4, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    .line 177
    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->previousBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_1

    .line 165
    :cond_7
    const/4 v6, 0x2

    new-array v0, v6, [Landroid/graphics/drawable/Drawable;

    .line 166
    .local v0, "beforeAndAfter":[Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v6, v0, v9

    .line 167
    const/4 v6, 0x1

    aput-object v4, v0, v6

    .line 168
    new-instance v5, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v5, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 169
    .local v5, "transition":Landroid/graphics/drawable/TransitionDrawable;
    iget-object v6, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    invoke-virtual {v6, v5}, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget v6, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mDurationInMillis:I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_3
.end method

.method public setSecretContact(Z)V
    .locals 1
    .param p1, "isSecretContact"    # Z

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mIsSecretContact:Z

    if-eq v0, p1, :cond_0

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mIsSecretInfoChanged:Z

    .line 76
    :goto_0
    iput-boolean p1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mIsSecretContact:Z

    .line 77
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mIsSecretInfoChanged:Z

    goto :goto_0
.end method

.method protected setTarget(Lcom/sec/android/app/contacts/widget/AnimatableImageView;)V
    .locals 2
    .param p1, "target"    # Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    if-eq v0, p1, :cond_0

    .line 90
    iput-object p1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    .line 91
    iput-object v1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCompressed:[B

    .line 92
    iput-object v1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    :cond_0
    return-void
.end method

.method protected setTarget(Lcom/sec/android/app/contacts/widget/AnimatableImageView;J)V
    .locals 3
    .param p1, "target"    # Lcom/sec/android/app/contacts/widget/AnimatableImageView;
    .param p2, "contactId"    # J

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    if-ne v0, p1, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mContactId:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    .line 100
    iput-object v2, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCompressed:[B

    .line 101
    iput-object v2, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    .line 102
    iput-wide p2, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mContactId:J

    .line 104
    :cond_1
    return-void
.end method

.method public setTransitionDuration(I)V
    .locals 0
    .param p1, "durationInMillis"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mDurationInMillis:I

    .line 68
    return-void
.end method

.method public setupContactPhoto(Lcom/android/contacts/ContactLoader$Result;Lcom/sec/android/app/contacts/widget/AnimatableImageView;)V
    .locals 2
    .param p1, "contactData"    # Lcom/android/contacts/ContactLoader$Result;
    .param p2, "photoView"    # Lcom/sec/android/app/contacts/widget/AnimatableImageView;

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mContactId:J

    .line 62
    invoke-virtual {p0, p2}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setTarget(Lcom/sec/android/app/contacts/widget/AnimatableImageView;)V

    .line 63
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getPhotoBinaryData()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setCompressedImage([B)Landroid/graphics/Bitmap;

    .line 64
    return-void
.end method
