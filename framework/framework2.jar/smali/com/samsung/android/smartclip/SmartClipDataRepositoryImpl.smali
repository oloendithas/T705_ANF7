.class public Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
.super Ljava/lang/Object;
.source "SmartClipDataRepositoryImpl.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/samsung/android/smartclip/SmartClipDataRepository;


# static fields
.field public static final CONTENT_TYPE_AUDIO:Ljava/lang/String; = "music"

.field public static final CONTENT_TYPE_DEFAULT:Ljava/lang/String; = "image"

.field public static final CONTENT_TYPE_IMAGE:Ljava/lang/String; = "image"

.field public static final CONTENT_TYPE_NAMECARD:Ljava/lang/String; = "namecard"

.field public static final CONTENT_TYPE_VIDEO:Ljava/lang/String; = "video"

.field public static final CONTENT_TYPE_WEB:Ljava/lang/String; = "web"

.field public static final CONTENT_TYPE_YOUTUBE:Ljava/lang/String; = "youtube"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;",
            ">;"
        }
    .end annotation
.end field

.field protected static final FIELD_CAPTURED_IMAGE_PATH:Ljava/lang/String; = "captured_image_path"

.field protected static final FIELD_CAPTURED_IMAGE_STYLE:Ljava/lang/String; = "captured_image_style"

.field protected static final FIELD_CONTENT_RECT:Ljava/lang/String; = "content_rect"

.field protected static final FIELD_CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field protected static final FIELD_META_TAGS:Ljava/lang/String; = "meta_tags"

.field protected static final FIELD_META_TAG_EXTRA_DATA:Ljava/lang/String; = "meta_tag_extra_value"

.field protected static final FIELD_META_TAG_TYPE:Ljava/lang/String; = "meta_tag_type"

.field protected static final FIELD_META_TAG_VALUE:Ljava/lang/String; = "meta_tag_value"

.field public static final IMAGE_STYLE_LASSO:I = 0x0

.field public static final IMAGE_STYLE_PIN_MODE:I = 0x3

.field public static final IMAGE_STYLE_RECTANGLE:I = 0x1

.field public static final IMAGE_STYLE_SEGMENTATION:I = 0x2

.field protected static final TAG:Ljava/lang/String; = "SmartClipDataRepositoryImpl"


# instance fields
.field protected mAppPackageName:Ljava/lang/String;

.field protected mCapturedImageFilePath:Ljava/lang/String;

.field protected mCapturedImageFileStyle:I

.field protected mContentRect:Landroid/graphics/Rect;

.field protected mContentType:Ljava/lang/String;

.field protected mCropper:Lcom/samsung/android/smartclip/SmartClipDataCropper;

.field protected mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

.field private mScaleRect:Landroid/graphics/RectF;

.field protected mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

.field protected mTargetWindowLayer:I

.field private mWinFrameRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 564
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl$1;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl$1;-><init>()V

    sput-object v0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataCropper;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataCropper;)V
    .registers 6
    .param p1, "cropper"    # Lcom/samsung/android/smartclip/SmartClipDataCropper;

    .prologue
    const/high16 v3, 0x3f800000

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataCropper;Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/smartclip/SmartClipDataCropper;Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .registers 6
    .param p1, "cropper"    # Lcom/samsung/android/smartclip/SmartClipDataCropper;
    .param p2, "winFrameRect"    # Landroid/graphics/Rect;
    .param p3, "scaleRect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipDataRootElement;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    .line 102
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentType:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentRect:Landroid/graphics/Rect;

    .line 108
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 111
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCropper:Lcom/samsung/android/smartclip/SmartClipDataCropper;

    .line 114
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFilePath:Ljava/lang/String;

    .line 117
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFileStyle:I

    .line 120
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mAppPackageName:Ljava/lang/String;

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTargetWindowLayer:I

    .line 125
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mWinFrameRect:Landroid/graphics/Rect;

    .line 126
    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mScaleRect:Landroid/graphics/RectF;

    .line 139
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCropper:Lcom/samsung/android/smartclip/SmartClipDataCropper;

    .line 140
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mWinFrameRect:Landroid/graphics/Rect;

    .line 141
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mScaleRect:Landroid/graphics/RectF;

    .line 142
    return-void
.end method

.method public static createRepositoryFromString(Ljava/lang/String;)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .registers 23
    .param p0, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 581
    new-instance v13, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;-><init>(Lcom/samsung/android/smartclip/SmartClipDataCropper;)V

    .line 584
    .local v13, "repository":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :try_start_9
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 587
    .local v9, "json_repository":Lorg/json/JSONObject;
    const-string v17, "content_type"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2c

    .line 588
    const-string v17, "content_type"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentType:Ljava/lang/String;

    .line 592
    :cond_2c
    const-string v17, "content_rect"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6d

    .line 593
    const-string v17, "content_rect"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 594
    .local v8, "json_rect":Lorg/json/JSONArray;
    new-instance v17, Landroid/graphics/Rect;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v21

    invoke-direct/range {v17 .. v21}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentRect:Landroid/graphics/Rect;

    .line 598
    .end local v8    # "json_rect":Lorg/json/JSONArray;
    :cond_6d
    const-string v17, "captured_image_path"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_92

    .line 599
    const-string v17, "captured_image_path"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 600
    .local v2, "capturedImageFilePath":Ljava/lang/String;
    const-string v17, "captured_image_style"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 601
    .local v3, "capturedImageFileStyle":I
    if-eqz v2, :cond_92

    .line 602
    invoke-virtual {v13, v2, v3}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->setCapturedImage(Ljava/lang/String;I)V

    .line 607
    .end local v2    # "capturedImageFilePath":Ljava/lang/String;
    .end local v3    # "capturedImageFileStyle":I
    :cond_92
    const-string/jumbo v17, "meta_tags"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13c

    .line 608
    new-instance v17, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 610
    const-string/jumbo v17, "meta_tags"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 611
    .local v11, "json_tagArray":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    .line 612
    .local v14, "tagCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_ba
    if-ge v7, v14, :cond_13c

    .line 613
    const/4 v12, 0x0

    .line 614
    .local v12, "metaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 616
    .local v10, "json_tag":Lorg/json/JSONObject;
    const-string/jumbo v17, "meta_tag_type"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 617
    .local v15, "tagType":Ljava/lang/String;
    const-string/jumbo v17, "meta_tag_value"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d2
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_d2} :catch_11b

    move-result-object v16

    .line 620
    .local v16, "tagValue":Ljava/lang/String;
    :try_start_d3
    const-string/jumbo v17, "meta_tag_extra_value"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 621
    .local v6, "extraDataStr":Ljava/lang/String;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v6, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 623
    .local v5, "extraData":[B
    const-string v17, "SmartClipDataRepositoryImpl"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Decoding : Length of extra data = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    array-length v0, v5

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    new-instance v12, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    .end local v12    # "metaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    move-object/from16 v0, v16

    invoke-direct {v12, v15, v0, v5}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_106
    .catch Lorg/json/JSONException; {:try_start_d3 .. :try_end_106} :catch_112

    .line 630
    .end local v5    # "extraData":[B
    .end local v6    # "extraDataStr":Ljava/lang/String;
    .restart local v12    # "metaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    :goto_106
    :try_start_106
    iget-object v0, v13, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    .line 612
    add-int/lit8 v7, v7, 0x1

    goto :goto_ba

    .line 627
    .end local v12    # "metaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    :catch_112
    move-exception v4

    .line 628
    .local v4, "e":Lorg/json/JSONException;
    new-instance v12, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    move-object/from16 v0, v16

    invoke-direct {v12, v15, v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11a
    .catch Lorg/json/JSONException; {:try_start_106 .. :try_end_11a} :catch_11b

    .restart local v12    # "metaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    goto :goto_106

    .line 634
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v7    # "i":I
    .end local v9    # "json_repository":Lorg/json/JSONObject;
    .end local v10    # "json_tag":Lorg/json/JSONObject;
    .end local v11    # "json_tagArray":Lorg/json/JSONArray;
    .end local v12    # "metaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v14    # "tagCount":I
    .end local v15    # "tagType":Ljava/lang/String;
    .end local v16    # "tagValue":Ljava/lang/String;
    :catch_11b
    move-exception v4

    .line 635
    .restart local v4    # "e":Lorg/json/JSONException;
    const-string v17, "SmartClipDataRepositoryImpl"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "JSONException throwed : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 637
    const/4 v13, 0x0

    .line 640
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v13    # "repository":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :cond_13c
    return-object v13
.end method


# virtual methods
.method protected addMetaTagFromSmartParseResult(Landroid/util/secutil/SmartParsingData;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;ILjava/lang/String;)V
    .registers 10
    .param p1, "parsedData"    # Landroid/util/secutil/SmartParsingData;
    .param p2, "tagArray"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .param p3, "smartParsingDataType"    # I
    .param p4, "metaTagType"    # Ljava/lang/String;

    .prologue
    .line 461
    invoke-virtual {p1, p3}, Landroid/util/secutil/SmartParsingData;->getInfo(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 463
    .local v3, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 464
    .local v0, "curTag":Ljava/lang/String;
    new-instance v2, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    invoke-direct {v2, p4, v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .local v2, "newMetaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 467
    .end local v0    # "curTag":Ljava/lang/String;
    .end local v2    # "newMetaTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    :cond_1d
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 505
    const/4 v0, 0x0

    return v0
.end method

.method public determineContentType()Z
    .registers 13

    .prologue
    const/4 v9, 0x1

    .line 186
    const/4 v6, 0x0

    .line 187
    .local v6, "contentType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 188
    .local v1, "bHaveBrowserView":Z
    const/4 v5, 0x0

    .line 189
    .local v5, "bHaveYoutubeView":Z
    const/4 v0, 0x0

    .line 190
    .local v0, "bHaveAudioFilePath":Z
    const/4 v4, 0x0

    .line 191
    .local v4, "bHaveVideoFilePath":Z
    const/4 v2, 0x0

    .line 192
    .local v2, "bHaveImageFilePath":Z
    iget-object v7, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    .line 194
    .local v7, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_9
    if-eqz v7, :cond_a9

    .line 195
    invoke-virtual {v7}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getView()Landroid/view/View;

    move-result-object v8

    .line 197
    .local v8, "view":Landroid/view/View;
    if-eqz v8, :cond_80

    .line 198
    const-string/jumbo v10, "url"

    invoke-virtual {p0, v10}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_87

    move v3, v9

    .line 200
    .local v3, "bHaveUrlTag":Z
    :goto_1f
    const-string v10, "file_path_audio"

    invoke-virtual {p0, v10}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2c

    .line 201
    const/4 v0, 0x1

    .line 204
    :cond_2c
    const-string v10, "file_path_video"

    invoke-virtual {p0, v10}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_39

    .line 205
    const/4 v4, 0x1

    .line 208
    :cond_39
    const-string v10, "file_path_image"

    invoke-virtual {p0, v10}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_46

    .line 209
    const/4 v2, 0x1

    .line 212
    :cond_46
    if-ne v3, v9, :cond_80

    .line 213
    instance-of v10, v8, Landroid/webkit/WebView;

    if-nez v10, :cond_7f

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "org.chromium.content.browser.ChromeView"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eq v10, v9, :cond_7f

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "org.samsung.content.sbrowser.SbrContentView"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eq v10, v9, :cond_7f

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "org.chromium.content.browser.JellyBeanContentView"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v9, :cond_89

    .line 217
    :cond_7f
    const/4 v1, 0x1

    .line 225
    .end local v3    # "bHaveUrlTag":Z
    :cond_80
    :goto_80
    iget-object v10, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    invoke-virtual {v7, v10}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v7

    .line 226
    goto :goto_9

    .line 198
    :cond_87
    const/4 v3, 0x0

    goto :goto_1f

    .line 218
    .restart local v3    # "bHaveUrlTag":Z
    :cond_89
    iget-object v10, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mAppPackageName:Ljava/lang/String;

    if-eqz v10, :cond_80

    iget-object v10, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mAppPackageName:Ljava/lang/String;

    const-string v11, "com.google.android.youtube"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_80

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "PlayerView"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-ne v10, v9, :cond_80

    .line 220
    const/4 v5, 0x1

    goto :goto_80

    .line 228
    .end local v3    # "bHaveUrlTag":Z
    .end local v8    # "view":Landroid/view/View;
    :cond_a9
    if-ne v0, v9, :cond_b1

    .line 229
    const-string/jumbo v6, "music"

    .line 242
    :goto_ae
    iput-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentType:Ljava/lang/String;

    .line 244
    return v9

    .line 230
    :cond_b1
    if-ne v4, v9, :cond_b7

    .line 231
    const-string/jumbo v6, "video"

    goto :goto_ae

    .line 232
    :cond_b7
    if-ne v2, v9, :cond_bc

    .line 233
    const-string v6, "image"

    goto :goto_ae

    .line 234
    :cond_bc
    if-ne v5, v9, :cond_c2

    .line 235
    const-string/jumbo v6, "youtube"

    goto :goto_ae

    .line 236
    :cond_c2
    if-ne v1, v9, :cond_c8

    .line 237
    const-string/jumbo v6, "web"

    goto :goto_ae

    .line 239
    :cond_c8
    const-string v6, "image"

    goto :goto_ae
.end method

.method public dump(Z)Z
    .registers 6
    .param p1, "dumpMetaTags"    # Z

    .prologue
    const/4 v3, 0x1

    .line 472
    const-string v0, "SmartClipDataRepositoryImpl"

    const-string v1, "----- Start of SmartClip repository informations -----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string v0, "SmartClipDataRepositoryImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "** Content type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v0, "SmartClipDataRepositoryImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "** Meta area rect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v0, "SmartClipDataRepositoryImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "** Captured image file path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    if-ne p1, v3, :cond_80

    .line 481
    const-string v0, "SmartClipDataRepositoryImpl"

    const-string v1, "** mTags"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v0, :cond_88

    .line 483
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;->dump()V

    .line 489
    :goto_70
    const-string v0, "SmartClipDataRepositoryImpl"

    const-string v1, "** Element tree **"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    if-eqz v0, :cond_80

    .line 491
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->dump()Z

    .line 495
    :cond_80
    const-string v0, "SmartClipDataRepositoryImpl"

    const-string v1, "----- End of SmartClip repository informations -----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return v3

    .line 485
    :cond_88
    const-string v0, "SmartClipDataRepositoryImpl"

    const-string/jumbo v1, "mTags is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70
.end method

.method public encodeRepositoryToString()Ljava/lang/String;
    .registers 18

    .prologue
    .line 645
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 648
    .local v10, "json_repository":Lorg/json/JSONObject;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentType()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_14

    .line 649
    const-string v14, "content_type"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 653
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 654
    .local v3, "contentRect":Landroid/graphics/Rect;
    if-eqz v3, :cond_3c

    .line 655
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 657
    .local v9, "json_rect":Lorg/json/JSONArray;
    const/4 v14, 0x0

    iget v15, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9, v14, v15}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 658
    const/4 v14, 0x1

    iget v15, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v14, v15}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 659
    const/4 v14, 0x2

    iget v15, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v14, v15}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 660
    const/4 v14, 0x3

    iget v15, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v14, v15}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 662
    const-string v14, "content_rect"

    invoke-virtual {v10, v14, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 666
    .end local v9    # "json_rect":Lorg/json/JSONArray;
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getCapturedImageFilePath()Ljava/lang/String;

    move-result-object v1

    .line 667
    .local v1, "capturedImageFilePath":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getCapturedImageFileStyle()I

    move-result v2

    .line 668
    .local v2, "capturedImageFileStyle":I
    if-eqz v1, :cond_50

    .line 669
    const-string v14, "captured_image_path"

    invoke-virtual {v10, v14, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 670
    const-string v14, "captured_image_style"

    invoke-virtual {v10, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 674
    :cond_50
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getAllMetaTagList()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v13

    .line 675
    .local v13, "tagArray":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    if-eqz v13, :cond_f1

    .line 676
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 678
    .local v12, "json_tagArray":Lorg/json/JSONArray;
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_5f
    :goto_5f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 679
    .local v4, "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    if-eqz v4, :cond_5f

    .line 680
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 681
    .local v11, "json_tag":Lorg/json/JSONObject;
    const-string/jumbo v14, "meta_tag_type"

    invoke-virtual {v4}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 682
    const-string/jumbo v14, "meta_tag_value"

    invoke-virtual {v4}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 683
    instance-of v14, v4, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    if-eqz v14, :cond_be

    .line 684
    move-object v0, v4

    check-cast v0, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    move-object v5, v0

    .line 685
    .local v5, "curTagImpl":Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    invoke-virtual {v5}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->getExtraData()[B

    move-result-object v14

    if-eqz v14, :cond_be

    .line 686
    invoke-virtual {v5}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;->getExtraData()[B

    move-result-object v7

    .line 687
    .local v7, "extraData":[B
    const-string v14, "SmartClipDataRepositoryImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Encoding : Length of extra data = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v7

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const-string/jumbo v14, "meta_tag_extra_value"

    const/4 v15, 0x0

    invoke-static {v7, v15}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 691
    .end local v5    # "curTagImpl":Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;
    .end local v7    # "extraData":[B
    :cond_be
    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_c1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_c1} :catch_c2

    goto :goto_5f

    .line 701
    .end local v1    # "capturedImageFilePath":Ljava/lang/String;
    .end local v2    # "capturedImageFileStyle":I
    .end local v3    # "contentRect":Landroid/graphics/Rect;
    .end local v4    # "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "json_repository":Lorg/json/JSONObject;
    .end local v11    # "json_tag":Lorg/json/JSONObject;
    .end local v12    # "json_tagArray":Lorg/json/JSONArray;
    .end local v13    # "tagArray":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    :catch_c2
    move-exception v6

    .line 702
    .local v6, "e":Lorg/json/JSONException;
    const-string v14, "SmartClipDataRepositoryImpl"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "JSONException throwed : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 704
    const-string v14, ""

    .end local v6    # "e":Lorg/json/JSONException;
    :goto_e4
    return-object v14

    .line 695
    .restart local v1    # "capturedImageFilePath":Ljava/lang/String;
    .restart local v2    # "capturedImageFileStyle":I
    .restart local v3    # "contentRect":Landroid/graphics/Rect;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "json_repository":Lorg/json/JSONObject;
    .restart local v12    # "json_tagArray":Lorg/json/JSONArray;
    .restart local v13    # "tagArray":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    :cond_e5
    :try_start_e5
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lez v14, :cond_f1

    .line 696
    const-string/jumbo v14, "meta_tags"

    invoke-virtual {v10, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 700
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "json_tagArray":Lorg/json/JSONArray;
    :cond_f1
    const/4 v14, 0x1

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_f5
    .catch Lorg/json/JSONException; {:try_start_e5 .. :try_end_f5} :catch_c2

    move-result-object v14

    goto :goto_e4
.end method

.method public extractMetaTagFromString(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "srcString"    # Ljava/lang/String;

    .prologue
    .line 438
    new-instance v2, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v2}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    .line 440
    .local v2, "tagArray":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    if-nez p2, :cond_8

    .line 456
    :goto_7
    return-object v2

    .line 444
    :cond_8
    new-instance v1, Landroid/util/secutil/SmartParser;

    invoke-direct {v1, p2, p1}, Landroid/util/secutil/SmartParser;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 445
    .local v1, "parser":Landroid/util/secutil/SmartParser;
    invoke-virtual {v1}, Landroid/util/secutil/SmartParser;->getTotalData()Landroid/util/secutil/SmartParsingData;

    move-result-object v0

    .line 447
    .local v0, "parsedData":Landroid/util/secutil/SmartParsingData;
    const/4 v3, 0x5

    const-string/jumbo v4, "url"

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->addMetaTagFromSmartParseResult(Landroid/util/secutil/SmartParsingData;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;ILjava/lang/String;)V

    goto :goto_7
.end method

.method public getAllMetaTag()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .registers 2

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getAllMetaTagList()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v0

    .line 386
    .local v0, "arrayList":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    return-object v0
.end method

.method public getAllMetaTagList()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    .registers 10

    .prologue
    .line 349
    iget-object v7, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v7, :cond_7

    .line 350
    iget-object v3, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 378
    :cond_6
    :goto_6
    return-object v3

    .line 352
    :cond_7
    new-instance v3, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v3}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    .line 354
    .local v3, "metaList":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    .line 356
    .local v1, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_e
    if-eqz v1, :cond_3e

    .line 357
    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getTagTable()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 358
    .local v6, "tags":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    if-eqz v6, :cond_38

    .line 359
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 360
    .local v5, "tagCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    if-ge v2, v5, :cond_38

    .line 361
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 363
    .local v0, "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "plain_text"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_35

    .line 364
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 369
    .end local v0    # "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v2    # "i":I
    .end local v5    # "tagCount":I
    :cond_38
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    .line 370
    goto :goto_e

    .line 373
    .end local v6    # "tags":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    :cond_3e
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMergedPlainTextTag()Ljava/lang/String;

    move-result-object v4

    .line 374
    .local v4, "plainText":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 375
    new-instance v7, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    const-string/jumbo v8, "plain_text"

    invoke-direct {v7, v8, v4}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public getAppPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getCapturedImageFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getCapturedImageFileStyle()I
    .registers 2

    .prologue
    .line 156
    iget v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFileStyle:I

    return v0
.end method

.method public getContentRect()Landroid/graphics/Rect;
    .registers 13

    .prologue
    const v11, 0x1869f

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000

    const/high16 v9, 0x3f000000

    .line 280
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentRect:Landroid/graphics/Rect;

    if-eqz v6, :cond_10

    .line 281
    iget-object v2, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentRect:Landroid/graphics/Rect;

    .line 345
    :cond_f
    :goto_f
    return-object v2

    .line 283
    :cond_10
    iget-object v4, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    .line 284
    .local v4, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v11, v11, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 286
    .local v2, "contentRect":Landroid/graphics/Rect;
    :goto_17
    if-eqz v4, :cond_c4

    .line 287
    invoke-virtual {v4}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getChildCount()I

    move-result v6

    if-eq v6, v10, :cond_bc

    .line 288
    invoke-virtual {v4}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getChildCount()I

    move-result v6

    if-le v6, v10, :cond_76

    .line 289
    invoke-virtual {v4}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getFirstChild()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    .line 290
    .local v0, "child":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_29
    if-eqz v0, :cond_bc

    .line 292
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 293
    .local v5, "rect":Landroid/graphics/Rect;
    if-eqz v5, :cond_71

    .line 294
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    if-le v6, v7, :cond_41

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lez v6, :cond_41

    .line 295
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 297
    :cond_41
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_51

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-lez v6, :cond_51

    .line 298
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 300
    :cond_51
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-ge v6, v7, :cond_61

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lez v6, :cond_61

    .line 301
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 303
    :cond_61
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v7, :cond_71

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-lez v6, :cond_71

    .line 304
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 308
    :cond_71
    invoke-virtual {v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getNextSibling()Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    .line 309
    goto :goto_29

    .line 311
    .end local v0    # "child":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_76
    invoke-virtual {v4}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 312
    .restart local v5    # "rect":Landroid/graphics/Rect;
    if-eqz v5, :cond_bc

    .line 313
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    if-le v6, v7, :cond_8c

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lez v6, :cond_8c

    .line 314
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 316
    :cond_8c
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_9c

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-lez v6, :cond_9c

    .line 317
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 319
    :cond_9c
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-ge v6, v7, :cond_ac

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lez v6, :cond_ac

    .line 320
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 322
    :cond_ac
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v7, :cond_bc

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-lez v6, :cond_bc

    .line 323
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 329
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_bc
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    invoke-virtual {v4, v6}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v4

    goto/16 :goto_17

    .line 332
    :cond_c4
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_d1

    .line 333
    new-instance v2, Landroid/graphics/Rect;

    .end local v2    # "contentRect":Landroid/graphics/Rect;
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    goto/16 :goto_f

    .line 336
    .restart local v2    # "contentRect":Landroid/graphics/Rect;
    :cond_d1
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    cmpl-float v6, v6, v8

    if-nez v6, :cond_e5

    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_f

    .line 337
    :cond_e5
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 338
    .local v3, "contentWidth":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 339
    .local v1, "contentHeight":I
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mWinFrameRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 340
    iget-object v6, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mWinFrameRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 341
    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v7, v3

    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 342
    iget v6, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v1

    iget-object v8, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    float-to-int v7, v7

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getMergedPlainTextTag()Ljava/lang/String;
    .registers 3

    .prologue
    .line 270
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    if-nez v1, :cond_6

    .line 271
    const/4 v0, 0x0

    .line 275
    :goto_5
    return-object v0

    .line 273
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataRootElement;->collectPlainTextTag()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "mergedText":Ljava/lang/String;
    goto :goto_5
.end method

.method public getMetaTag(Ljava/lang/String;)Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;
    .registers 11
    .param p1, "tagType"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 392
    new-instance v3, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v3}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    .line 394
    .local v3, "metaList":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    iget-object v7, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    if-eqz v7, :cond_31

    .line 395
    iget-object v7, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 396
    .local v5, "tagCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v5, :cond_4b

    .line 397
    iget-object v7, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v8, :cond_2e

    .line 398
    iget-object v7, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 402
    .end local v2    # "i":I
    .end local v5    # "tagCount":I
    :cond_31
    const-string/jumbo v7, "plain_text"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v8, :cond_4c

    .line 404
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getMergedPlainTextTag()Ljava/lang/String;

    move-result-object v4

    .line 405
    .local v4, "plainText":Ljava/lang/String;
    if-eqz v4, :cond_4b

    .line 406
    new-instance v7, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    const-string/jumbo v8, "plain_text"

    invoke-direct {v7, v8, v4}, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    .end local v4    # "plainText":Ljava/lang/String;
    :cond_4b
    return-object v3

    .line 409
    :cond_4c
    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    .line 411
    .local v1, "element":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    :goto_4e
    if-eqz v1, :cond_4b

    .line 412
    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->getTagTable()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTagArray;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 414
    .local v6, "tags":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    if-eqz v6, :cond_7b

    .line 415
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 416
    .restart local v5    # "tagCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5d
    if-ge v2, v5, :cond_7b

    .line 417
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    .line 419
    .local v0, "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_78

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v8, :cond_78

    .line 420
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 425
    .end local v0    # "curTag":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;
    .end local v2    # "i":I
    .end local v5    # "tagCount":I
    :cond_7b
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    move-result-object v1

    .line 426
    goto :goto_4e
.end method

.method public getRootElement()Lcom/samsung/android/smartclip/SmartClipDataRootElement;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mRootElement:Lcom/samsung/android/smartclip/SmartClipDataRootElement;

    return-object v0
.end method

.method public getSmartClipDataCropper()Lcom/samsung/android/smartclip/SmartClipDataCropper;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCropper:Lcom/samsung/android/smartclip/SmartClipDataCropper;

    return-object v0
.end method

.method public getWindowLayer()I
    .registers 2

    .prologue
    .line 261
    iget v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTargetWindowLayer:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 540
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentType:Ljava/lang/String;

    .line 543
    const-class v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentRect:Landroid/graphics/Rect;

    .line 546
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFilePath:Ljava/lang/String;

    .line 549
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFileStyle:I

    .line 552
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mAppPackageName:Ljava/lang/String;

    .line 555
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTargetWindowLayer:I

    .line 558
    new-instance v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    .line 559
    .local v0, "listArray":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    const-class v1, Lcom/samsung/android/smartclip/SmartClipMetaTagImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0    # "listArray":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    check-cast v0, Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 560
    .restart local v0    # "listArray":Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;
    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 561
    return-void
.end method

.method public setAppPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mAppPackageName:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setCapturedImage(Ljava/lang/String;)V
    .registers 3
    .param p1, "capturedImageFilePath"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFilePath:Ljava/lang/String;

    .line 165
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFileStyle:I

    .line 166
    return-void
.end method

.method public setCapturedImage(Ljava/lang/String;I)V
    .registers 3
    .param p1, "capturedImageFilePath"    # Ljava/lang/String;
    .param p2, "imageStyle"    # I

    .prologue
    .line 169
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFilePath:Ljava/lang/String;

    .line 170
    iput p2, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFileStyle:I

    .line 171
    return-void
.end method

.method public setCapturedImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "capturedImageFilePath"    # Ljava/lang/String;
    .param p2, "capturedImageBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->setCapturedImage(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 2
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentType:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setWindowLayer(I)V
    .registers 2
    .param p1, "layer"    # I

    .prologue
    .line 266
    iput p1, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTargetWindowLayer:I

    .line 267
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 511
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentType:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 512
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->determineContentType()Z

    .line 514
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentRect:Landroid/graphics/Rect;

    .line 518
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 521
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 524
    iget v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mCapturedImageFileStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 530
    iget v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTargetWindowLayer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getAllMetaTagList()Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    .line 534
    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->mTags:Lcom/samsung/android/smartclip/SmartClipMetaTagArrayImpl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 535
    return-void
.end method
