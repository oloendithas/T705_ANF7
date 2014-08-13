.class public Lcom/sec/android/app/contacts/widget/AnimatableImageView;
.super Landroid/view/ViewGroup;
.source "AnimatableImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/widget/AnimatableImageView$ScaleType;,
        Lcom/sec/android/app/contacts/widget/AnimatableImageView$ContactWebView;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x10

.field private static final DIRECTORY:Ljava/lang/String; = "tmp"

.field private static final FILE_NAME:Ljava/lang/String; = "cache"

.field private static final TAG:Ljava/lang/String; = "AnimatableImageView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultResourceId:I

.field private mImageViewChild:Landroid/widget/ImageView;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mWebViewChild:Lcom/sec/android/app/contacts/widget/AnimatableImageView$ContactWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mDefaultResourceId:I

    .line 197
    iput-object p1, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mContext:Landroid/content/Context;

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 199
    const v0, 0x7f0203b3

    iput v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mDefaultResourceId:I

    .line 200
    return-void
.end method

.method private decodedBitmapDrawable([B)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .param p1, "compressed"    # [B

    .prologue
    .line 351
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 352
    .local v1, "rsrc":Landroid/content/res/Resources;
    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 353
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method private getTempFilePath()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 337
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 339
    new-instance v2, Ljava/io/File;

    const-string v3, "cache"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 340
    .local v2, "tempFile":Ljava/io/File;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 341
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 342
    .local v1, "e":Ljava/lang/Exception;
    throw v1
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 203
    sget-object v1, Lcom/android/contacts/R$styleable;->AnimatableImageView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 204
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/widget/AnimatableImageView$ScaleType;->parse(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 205
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 206
    return-void
.end method


# virtual methods
.method public loadAGIF(Ljava/io/File;)V
    .locals 4
    .param p1, "srcFile"    # Ljava/io/File;

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 258
    const-string v2, "AnimatableImageView"

    const-string v3, "srcFile is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget v2, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mDefaultResourceId:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->setImageResource(I)V

    .line 269
    :goto_0
    return-void

    .line 263
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 264
    .local v1, "inputStream":Ljava/io/FileInputStream;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->loadAGIF(Ljava/io/FileInputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    .end local v1    # "inputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AnimatableImageView"

    const-string v3, "Exception while saving data from file"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    iget v2, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mDefaultResourceId:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public loadAGIF(Ljava/io/FileInputStream;)V
    .locals 9
    .param p1, "inputStream"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 272
    if-nez p1, :cond_0

    .line 273
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "InputStream is null"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 276
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->getTempFilePath()Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, "tempFilePath":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 282
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    const/16 v6, 0x4000

    :try_start_1
    new-array v0, v6, [B

    .line 284
    .local v0, "buffer":[B
    const/4 v5, 0x0

    .line 285
    .local v5, "totalLength":I
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "length":I
    if-lez v2, :cond_1

    .line 286
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 287
    add-int/2addr v5, v2

    goto :goto_0

    .line 289
    :cond_1
    const-string v6, "AnimatableImageView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wrote "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes for photo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    if-eqz p1, :cond_2

    .line 293
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 299
    :cond_2
    if-eqz v3, :cond_3

    .line 300
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 306
    :cond_3
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->loadAGIF(Ljava/lang/String;)V

    .line 307
    return-void

    .line 292
    .end local v0    # "buffer":[B
    .end local v2    # "length":I
    .end local v5    # "totalLength":I
    :catchall_0
    move-exception v6

    if-eqz p1, :cond_4

    .line 293
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    :cond_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Exception while saving data from inputStream"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 299
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    if-eqz v3, :cond_5

    .line 300
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_5
    throw v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 303
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 304
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Exception while opening file"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public loadAGIF(Ljava/lang/String;)V
    .locals 9
    .param p1, "agifFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v7, 0x0

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mWebViewChild:Lcom/sec/android/app/contacts/widget/AnimatableImageView$ContactWebView;

    if-nez v0, :cond_0

    .line 358
    new-instance v0, Lcom/sec/android/app/contacts/widget/AnimatableImageView$ContactWebView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/widget/AnimatableImageView$ContactWebView;-><init>(Lcom/sec/android/app/contacts/widget/AnimatableImageView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mWebViewChild:Lcom/sec/android/app/contacts/widget/AnimatableImageView$ContactWebView;

    .line 359
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 361
    .local v6, "paramsWv":Landroid/view/ViewGroup$LayoutParams;
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mWebViewChild:Lcom/sec/android/app/contacts/widget/AnimatableImageView$ContactWebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mWebViewChild:Lcom/sec/android/app/contacts/widget/AnimatableImageView$ContactWebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mWebViewChild:Lcom/sec/android/app/contacts/widget/AnimatableImageView$ContactWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mWebViewChild:Lcom/sec/android/app/contacts/widget/AnimatableImageView$ContactWebView;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mWebViewChild:Lcom/sec/android/app/contacts/widget/AnimatableImageView$ContactWebView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 368
    .end local v6    # "paramsWv":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mWebViewChild:Lcom/sec/android/app/contacts/widget/AnimatableImageView$ContactWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mImageViewChild:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><body style=\'margin: 0; padding: 0\'><img src=\"file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" width=\"100%\" height=\"100%\"></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, "html":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mWebViewChild:Lcom/sec/android/app/contacts/widget/AnimatableImageView$ContactWebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mWebViewChild:Lcom/sec/android/app/contacts/widget/AnimatableImageView$ContactWebView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mWebViewChild:Lcom/sec/android/app/contacts/widget/AnimatableImageView$ContactWebView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mWebViewChild:Lcom/sec/android/app/contacts/widget/AnimatableImageView$ContactWebView;

    const-string v1, ""

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mWebViewChild:Lcom/sec/android/app/contacts/widget/AnimatableImageView$ContactWebView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mImageViewChild:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 380
    return-void

    .line 378
    .end local v2    # "html":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Wrong files"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadAGIF([B)V
    .locals 7
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 310
    if-nez p1, :cond_0

    .line 311
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Wrong bytes."

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 314
    :cond_0
    const/4 v1, 0x0

    .line 315
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->getTempFilePath()Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, "tempFilePath":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    :try_start_1
    array-length v5, p1

    invoke-virtual {v2, p1, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 321
    const-string v4, "AnimatableImageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrote from byte "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 323
    if-eqz v2, :cond_1

    .line 324
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 331
    :cond_1
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "AGIF is temporarily disabled"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 323
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    :goto_0
    if-eqz v1, :cond_2

    .line 324
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 327
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Exception while saving data from byteStream."

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 327
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 323
    .end local v1    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 210
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 212
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This view requires initially no child"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mImageViewChild:Landroid/widget/ImageView;

    .line 217
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 219
    .local v0, "paramsIv":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mImageViewChild:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mImageViewChild:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 221
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mImageViewChild:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 222
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mImageViewChild:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Child view is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mImageViewChild:Landroid/widget/ImageView;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mWebViewChild:Lcom/sec/android/app/contacts/widget/AnimatableImageView$ContactWebView;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mWebViewChild:Lcom/sec/android/app/contacts/widget/AnimatableImageView$ContactWebView;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 234
    :cond_1
    return-void
.end method

.method public setDefaultResource(I)V
    .locals 0
    .param p1, "resourceId"    # I

    .prologue
    .line 347
    iput p1, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mDefaultResourceId:I

    .line 348
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mImageViewChild:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mImageViewChild:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mWebViewChild:Lcom/sec/android/app/contacts/widget/AnimatableImageView$ContactWebView;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mWebViewChild:Lcom/sec/android/app/contacts/widget/AnimatableImageView$ContactWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mImageViewChild:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    :cond_1
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .param p1, "resourceId"    # I

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mImageViewChild:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mImageViewChild:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mWebViewChild:Lcom/sec/android/app/contacts/widget/AnimatableImageView$ContactWebView;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mWebViewChild:Lcom/sec/android/app/contacts/widget/AnimatableImageView$ContactWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/AnimatableImageView;->mImageViewChild:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    :cond_1
    return-void
.end method
