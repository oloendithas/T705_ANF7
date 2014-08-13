.class public Lcom/android/contacts/detail/ContactDetailDisplayUtils;
.super Ljava/lang/Object;
.source "ContactDetailDisplayUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;,
        Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactDetailDisplayUtils"

.field private static sImageGetter:Landroid/text/Html$ImageGetter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method static addStreamItemText(Landroid/content/Context;Lcom/android/contacts/util/StreamItemEntry;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "streamItem"    # Lcom/android/contacts/util/StreamItemEntry;
    .param p2, "rootView"    # Landroid/view/View;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 432
    const v4, 0x7f090474

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 433
    .local v2, "htmlView":Landroid/widget/TextView;
    const v4, 0x7f090475

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 435
    .local v0, "attributionView":Landroid/widget/TextView;
    const v4, 0x7f090476

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 436
    .local v1, "commentsView":Landroid/widget/TextView;
    new-instance v3, Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;-><init>(Landroid/content/pm/PackageManager;)V

    .line 439
    .local v3, "imageGetter":Landroid/text/Html$ImageGetter;
    invoke-virtual {p1}, Lcom/android/contacts/util/StreamItemEntry;->getDecodedText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 441
    invoke-static {p1, p0}, Lcom/android/contacts/util/ContactBadgeUtil;->getSocialDate(Lcom/android/contacts/util/StreamItemEntry;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 444
    invoke-virtual {p1}, Lcom/android/contacts/util/StreamItemEntry;->getDecodedComments()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 445
    return-object p2
.end method

.method public static createStreamItemView(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/util/StreamItemEntry;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 16
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "streamItem"    # Lcom/android/contacts/util/StreamItemEntry;
    .param p4, "photoClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 334
    if-eqz p2, :cond_1

    .line 335
    move-object/from16 v8, p2

    .line 340
    .local v8, "container":Landroid/view/View;
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v2

    .line 341
    .local v2, "contactPhotoManager":Lcom/android/contacts/ContactPhotoManager;
    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/util/StreamItemEntry;->getPhotos()Ljava/util/List;

    move-result-object v14

    .line 342
    .local v14, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/util/StreamItemPhotoEntry;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v13

    .line 345
    .local v13, "photoCount":I
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1, v8}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->addStreamItemText(Landroid/content/Context;Lcom/android/contacts/util/StreamItemEntry;Landroid/view/View;)Landroid/view/View;

    .line 348
    const v3, 0x7f090473

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 350
    .local v10, "imageRows":Landroid/view/ViewGroup;
    if-nez v13, :cond_2

    .line 352
    const/16 v3, 0x8

    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    .line 402
    :cond_0
    return-object v8

    .line 337
    .end local v2    # "contactPhotoManager":Lcom/android/contacts/ContactPhotoManager;
    .end local v8    # "container":Landroid/view/View;
    .end local v10    # "imageRows":Landroid/view/ViewGroup;
    .end local v13    # "photoCount":I
    .end local v14    # "photos":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/util/StreamItemPhotoEntry;>;"
    :cond_1
    const v3, 0x7f040202

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .restart local v8    # "container":Landroid/view/View;
    goto :goto_0

    .line 355
    .restart local v2    # "contactPhotoManager":Lcom/android/contacts/ContactPhotoManager;
    .restart local v10    # "imageRows":Landroid/view/ViewGroup;
    .restart local v13    # "photoCount":I
    .restart local v14    # "photos":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/util/StreamItemPhotoEntry;>;"
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    .line 358
    add-int/lit8 v3, v13, 0x1

    div-int/lit8 v11, v3, 0x2

    .line 361
    .local v11, "numImageRows":I
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    .line 364
    .local v12, "numOldImageRows":I
    if-ne v12, v11, :cond_4

    .line 381
    :cond_3
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v13, :cond_0

    .line 382
    div-int/lit8 v3, v9, 0x2

    invoke-virtual {v10, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 384
    .local v5, "imageRow":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 387
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/util/StreamItemPhotoEntry;

    const v6, 0x7f090479

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->loadPhoto(Lcom/android/contacts/ContactPhotoManager;Lcom/android/contacts/util/StreamItemEntry;Lcom/android/contacts/util/StreamItemPhotoEntry;Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 389
    const v3, 0x7f09047a

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 390
    .local v15, "secondContainer":Landroid/view/View;
    add-int/lit8 v3, v9, 0x1

    if-ge v3, v13, :cond_6

    .line 392
    add-int/lit8 v3, v9, 0x1

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/util/StreamItemPhotoEntry;

    const v6, 0x7f09047b

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->loadPhoto(Lcom/android/contacts/ContactPhotoManager;Lcom/android/contacts/util/StreamItemEntry;Lcom/android/contacts/util/StreamItemPhotoEntry;Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 394
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/view/View;->setVisibility(I)V

    .line 381
    :goto_2
    add-int/lit8 v9, v9, 0x2

    goto :goto_1

    .line 367
    .end local v5    # "imageRow":Landroid/view/View;
    .end local v9    # "i":I
    .end local v15    # "secondContainer":Landroid/view/View;
    :cond_4
    if-ge v12, v11, :cond_5

    .line 369
    move v9, v12

    .restart local v9    # "i":I
    :goto_3
    if-ge v9, v11, :cond_3

    .line 370
    const v3, 0x7f040204

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 369
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 375
    .end local v9    # "i":I
    :cond_5
    move v9, v11

    .restart local v9    # "i":I
    :goto_4
    if-ge v9, v12, :cond_3

    .line 376
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 375
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 397
    .restart local v5    # "imageRow":Landroid/view/View;
    .restart local v15    # "secondContainer":Landroid/view/View;
    :cond_6
    const/4 v3, 0x4

    invoke-virtual {v15, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public static getAttribution(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactData"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 142
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "directoryDisplayName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryType()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "directoryType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v2, v0

    .line 148
    .local v2, "displayName":Ljava/lang/String;
    :goto_0
    const v3, 0x7f0e01b2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 150
    .end local v0    # "directoryDisplayName":Ljava/lang/String;
    .end local v1    # "directoryType":Ljava/lang/String;
    .end local v2    # "displayName":Ljava/lang/String;
    :goto_1
    return-object v3

    .restart local v0    # "directoryDisplayName":Ljava/lang/String;
    .restart local v1    # "directoryType":Ljava/lang/String;
    :cond_0
    move-object v2, v1

    .line 145
    goto :goto_0

    .line 150
    .end local v0    # "directoryDisplayName":Ljava/lang/String;
    .end local v1    # "directoryType":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getCompany(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactData"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 158
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getDisplayNameSource()I

    move-result v14

    const/16 v15, 0x1e

    if-ne v14, v15, :cond_7

    const/4 v4, 0x1

    .line 160
    .local v4, "displayNameIsOrganization":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Entity;

    .line 161
    .local v5, "entity":Landroid/content/Entity;
    invoke-virtual {v5}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Entity$NamedContentValues;

    .line 162
    .local v12, "subValue":Landroid/content/Entity$NamedContentValues;
    iget-object v6, v12, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 163
    .local v6, "entryValues":Landroid/content/ContentValues;
    const-string v14, "mimetype"

    invoke-virtual {v6, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 165
    .local v10, "mimeType":Ljava/lang/String;
    const-string v14, "vnd.android.cursor.item/organization"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 167
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 168
    const-string v14, "data1"

    invoke-virtual {v6, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "company":Ljava/lang/String;
    const-string v14, "data4"

    invoke-virtual {v6, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 170
    .local v13, "title":Ljava/lang/String;
    const-string v14, "data5"

    invoke-virtual {v6, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, "department":Ljava/lang/String;
    const-string v14, "data6"

    invoke-virtual {v6, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 172
    .local v9, "job_description":Ljava/lang/String;
    const-string v14, "data9"

    invoke-virtual {v6, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 174
    .local v11, "office_location":Ljava/lang/String;
    const-string v1, ""

    .line 176
    .local v1, "combined":Ljava/lang/String;
    if-eqz v13, :cond_2

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 177
    move-object v1, v13

    .line 179
    :cond_2
    if-eqz v2, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 180
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 181
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 187
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 188
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    :cond_4
    :goto_2
    if-eqz v9, :cond_5

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 194
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 195
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    :cond_5
    :goto_3
    if-eqz v11, :cond_6

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 201
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 202
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    :cond_6
    :goto_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 241
    .end local v1    # "combined":Ljava/lang/String;
    .end local v2    # "company":Ljava/lang/String;
    .end local v3    # "department":Ljava/lang/String;
    .end local v5    # "entity":Landroid/content/Entity;
    .end local v6    # "entryValues":Landroid/content/ContentValues;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "job_description":Ljava/lang/String;
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v11    # "office_location":Ljava/lang/String;
    .end local v12    # "subValue":Landroid/content/Entity$NamedContentValues;
    .end local v13    # "title":Ljava/lang/String;
    :goto_5
    return-object v1

    .line 158
    .end local v4    # "displayNameIsOrganization":Z
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 183
    .restart local v1    # "combined":Ljava/lang/String;
    .restart local v2    # "company":Ljava/lang/String;
    .restart local v3    # "department":Ljava/lang/String;
    .restart local v4    # "displayNameIsOrganization":Z
    .restart local v5    # "entity":Landroid/content/Entity;
    .restart local v6    # "entryValues":Landroid/content/ContentValues;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "job_description":Ljava/lang/String;
    .restart local v10    # "mimeType":Ljava/lang/String;
    .restart local v11    # "office_location":Ljava/lang/String;
    .restart local v12    # "subValue":Landroid/content/Entity$NamedContentValues;
    .restart local v13    # "title":Ljava/lang/String;
    :cond_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 190
    :cond_9
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 197
    :cond_a
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 204
    :cond_b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 212
    .end local v1    # "combined":Ljava/lang/String;
    .end local v2    # "company":Ljava/lang/String;
    .end local v3    # "department":Ljava/lang/String;
    .end local v9    # "job_description":Ljava/lang/String;
    .end local v11    # "office_location":Ljava/lang/String;
    .end local v13    # "title":Ljava/lang/String;
    :cond_c
    const-string v14, "data1"

    invoke-virtual {v6, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .restart local v2    # "company":Ljava/lang/String;
    const-string v14, "data4"

    invoke-virtual {v6, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 218
    .restart local v13    # "title":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 219
    if-eqz v4, :cond_d

    const/4 v1, 0x0

    .line 234
    .restart local v1    # "combined":Ljava/lang/String;
    :goto_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    goto :goto_5

    .end local v1    # "combined":Ljava/lang/String;
    :cond_d
    move-object v1, v13

    .line 219
    goto :goto_6

    .line 221
    :cond_e
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 222
    if-eqz v4, :cond_f

    const/4 v1, 0x0

    .restart local v1    # "combined":Ljava/lang/String;
    :goto_7
    goto :goto_6

    .end local v1    # "combined":Ljava/lang/String;
    :cond_f
    move-object v1, v2

    goto :goto_7

    .line 224
    :cond_10
    if-eqz v4, :cond_11

    .line 225
    move-object v1, v13

    .restart local v1    # "combined":Ljava/lang/String;
    goto :goto_6

    .line 227
    .end local v1    # "combined":Ljava/lang/String;
    :cond_11
    const v14, 0x7f0e01c1

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v2, v15, v16

    const/16 v16, 0x1

    aput-object v13, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "combined":Ljava/lang/String;
    goto :goto_6

    .line 241
    .end local v1    # "combined":Ljava/lang/String;
    .end local v2    # "company":Ljava/lang/String;
    .end local v5    # "entity":Landroid/content/Entity;
    .end local v6    # "entryValues":Landroid/content/ContentValues;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v12    # "subValue":Landroid/content/Entity$NamedContentValues;
    .end local v13    # "title":Ljava/lang/String;
    :cond_12
    const/4 v1, 0x0

    goto/16 :goto_5
.end method

.method public static getDisplayName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactData"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 110
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "displayName":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getAltDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "altDisplayName":Ljava/lang/CharSequence;
    new-instance v2, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {v2, p0}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    .line 113
    .local v2, "prefs":Lcom/android/contacts/preference/ContactsPreferences;
    const-string v3, ""

    .line 114
    .local v3, "styledName":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 115
    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 116
    move-object v3, v1

    .line 123
    :goto_0
    return-object v3

    .line 118
    :cond_0
    move-object v3, v0

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getFirstListItemOffset(Landroid/widget/ListView;)I
    .locals 1
    .param p0, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 612
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    :cond_0
    const/high16 v0, -0x80000000

    .line 616
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0
.end method

.method public static getImageGetter(Landroid/content/Context;)Landroid/text/Html$ImageGetter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 509
    sget-object v0, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->sImageGetter:Landroid/text/Html$ImageGetter;

    if-nez v0, :cond_0

    .line 510
    new-instance v0, Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;-><init>(Landroid/content/pm/PackageManager;)V

    sput-object v0, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->sImageGetter:Landroid/text/Html$ImageGetter;

    .line 512
    :cond_0
    sget-object v0, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->sImageGetter:Landroid/text/Html$ImageGetter;

    return-object v0
.end method

.method public static getPhoneticName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactData"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 130
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getPhoneticName()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "phoneticName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    .end local v0    # "phoneticName":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "phoneticName":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadPhoto(Lcom/android/contacts/ContactPhotoManager;Lcom/android/contacts/util/StreamItemEntry;Lcom/android/contacts/util/StreamItemPhotoEntry;Landroid/view/View;ILandroid/view/View$OnClickListener;)V
    .locals 10
    .param p0, "contactPhotoManager"    # Lcom/android/contacts/ContactPhotoManager;
    .param p1, "streamItem"    # Lcom/android/contacts/util/StreamItemEntry;
    .param p2, "streamItemPhoto"    # Lcom/android/contacts/util/StreamItemPhotoEntry;
    .param p3, "photoContainer"    # Landroid/view/View;
    .param p4, "imageViewId"    # I
    .param p5, "photoClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 409
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 410
    .local v8, "frame":Landroid/view/View;
    const v0, 0x7f090478

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 411
    .local v9, "pushLayerView":Landroid/view/View;
    const v0, 0x7f0903a6

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 412
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz p5, :cond_0

    .line 413
    invoke-virtual {v9, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    new-instance v0, Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;

    invoke-direct {v0, p1, p2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;-><init>(Lcom/android/contacts/util/StreamItemEntry;Lcom/android/contacts/util/StreamItemPhotoEntry;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 415
    invoke-virtual {v9, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 416
    invoke-virtual {v9, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 426
    :goto_0
    invoke-virtual {p2}, Lcom/android/contacts/util/StreamItemPhotoEntry;->getPhotoUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, -0x1

    sget-object v5, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_BLANK:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    const-wide/16 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;J)V

    .line 428
    return-void

    .line 418
    :cond_0
    invoke-virtual {v9, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    invoke-virtual {v9, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 420
    invoke-virtual {v9, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 422
    invoke-virtual {v9, v4}, Landroid/view/View;->setClickable(Z)V

    .line 423
    invoke-virtual {v9, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public static requestToMoveToOffset(Landroid/widget/ListView;I)V
    .locals 2
    .param p0, "listView"    # Landroid/widget/ListView;
    .param p1, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 632
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_1

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 642
    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method public static setAlphaOnViewBackground(Landroid/view/View;F)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    .line 603
    return-void
.end method

.method public static setAttribution(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactData"    # Lcom/android/contacts/ContactLoader$Result;
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 486
    if-nez p2, :cond_0

    .line 490
    :goto_0
    return-void

    .line 489
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getAttribution(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method public static setCompanyName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactData"    # Lcom/android/contacts/ContactLoader$Result;
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 464
    if-nez p2, :cond_0

    .line 468
    :goto_0
    return-void

    .line 467
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getCompany(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private static setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 1
    .param p0, "textToDisplay"    # Ljava/lang/CharSequence;
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 497
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 504
    :goto_0
    return-void

    .line 501
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static setDisplayName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactData"    # Lcom/android/contacts/ContactLoader$Result;
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 453
    if-nez p2, :cond_0

    .line 457
    :goto_0
    return-void

    .line 456
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getDisplayName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method public static setEditButton(Landroid/content/Context;Landroid/view/View;ZZLcom/android/contacts/ContactLoader$Result;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fromDialer"    # Z
    .param p3, "isEasyMode"    # Z
    .param p4, "mContactData"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 650
    invoke-virtual {p4}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 655
    :goto_0
    return-void

    .line 653
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static setPhoneticName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactData"    # Lcom/android/contacts/ContactLoader$Result;
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 475
    if-nez p2, :cond_0

    .line 479
    :goto_0
    return-void

    .line 478
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getPhoneticName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method public static setSocialSnippet(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactData"    # Lcom/android/contacts/ContactLoader$Result;
    .param p2, "statusView"    # Landroid/widget/TextView;
    .param p3, "statusPhotoView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v4, 0x0

    .line 299
    if-nez p2, :cond_0

    .line 326
    :goto_0
    return-void

    .line 303
    :cond_0
    const/4 v11, 0x0

    .line 304
    .local v11, "snippet":Ljava/lang/CharSequence;
    const/4 v10, 0x0

    .line 305
    .local v10, "photoUri":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/util/StreamItemEntry;

    .line 307
    .local v8, "firstEntry":Lcom/android/contacts/util/StreamItemEntry;
    invoke-virtual {v8}, Lcom/android/contacts/util/StreamItemEntry;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/contacts/util/HtmlUtils;->fromHtml(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    .line 308
    invoke-virtual {v8}, Lcom/android/contacts/util/StreamItemEntry;->getPhotos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    invoke-virtual {v8}, Lcom/android/contacts/util/StreamItemEntry;->getPhotos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/util/StreamItemPhotoEntry;

    .line 310
    .local v9, "firstPhoto":Lcom/android/contacts/util/StreamItemPhotoEntry;
    invoke-virtual {v9}, Lcom/android/contacts/util/StreamItemPhotoEntry;->getPhotoUri()Ljava/lang/String;

    move-result-object v10

    .line 313
    const/4 v11, 0x0

    .line 316
    .end local v8    # "firstEntry":Lcom/android/contacts/util/StreamItemEntry;
    .end local v9    # "firstPhoto":Lcom/android/contacts/util/StreamItemPhotoEntry;
    :cond_1
    invoke-static {v11, p2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 317
    if-eqz v10, :cond_2

    .line 319
    invoke-static {p0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, -0x1

    sget-object v5, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_BLANK:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    const-wide/16 v6, 0x0

    move-object v1, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;J)V

    .line 322
    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 324
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static setStarred(Lcom/android/contacts/ContactLoader$Result;Landroid/widget/CheckBox;)V
    .locals 4
    .param p0, "contactData"    # Lcom/android/contacts/ContactLoader$Result;
    .param p1, "starredView"    # Landroid/widget/CheckBox;

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->isEasyMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 278
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 279
    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->getStarred()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 283
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 284
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 285
    const v3, 0x7f090144

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 286
    .local v0, "divider1":Landroid/view/View;
    const v3, 0x7f090146

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 287
    .local v1, "divider2":Landroid/view/View;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 289
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 292
    .end local v0    # "divider1":Landroid/view/View;
    .end local v1    # "divider2":Landroid/view/View;
    :cond_0
    return-void

    .line 281
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static setStarred(Lcom/android/contacts/ContactLoader$Result;Landroid/widget/CheckBox;Landroid/content/Context;)V
    .locals 5
    .param p0, "contactData"    # Lcom/android/contacts/ContactLoader$Result;
    .param p1, "starredView"    # Landroid/widget/CheckBox;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->isEasyMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 251
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 252
    invoke-virtual {p0}, Lcom/android/contacts/ContactLoader$Result;->getStarred()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 256
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 257
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 258
    const v4, 0x7f090144

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 259
    .local v1, "divider1":Landroid/view/View;
    const v4, 0x7f090146

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 261
    .local v2, "divider2":Landroid/view/View;
    invoke-static {p2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 262
    const v4, 0x7f090142

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 263
    .local v0, "divOut":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 273
    .end local v0    # "divOut":Landroid/widget/LinearLayout;
    .end local v1    # "divider1":Landroid/view/View;
    .end local v2    # "divider2":Landroid/view/View;
    :cond_0
    :goto_1
    return-void

    .line 254
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 267
    .restart local v1    # "divider1":Landroid/view/View;
    .restart local v2    # "divider2":Landroid/view/View;
    .restart local v3    # "v":Landroid/view/View;
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 269
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
