.class public Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;
.super Ljava/lang/Object;
.source "FeatureTagGrupper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;,
        Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;,
        Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$RcsContacts;,
        Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$RCSState;,
        Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$Own;
    }
.end annotation


# static fields
.field public static final MAX_LENGTH_COMPARE:I = 0x7

.field public static final RCS_CONTACTS_PROVIDER_NAME:Ljava/lang/String; = "com.samsung.rcs.rcscontacts"

.field public static final RCS_PRESENCE_PROVIDER_NAME:Ljava/lang/String; = "com.samsung.rcs.presence"

.field public static final RCS_STATE_PROVIDER_NAME:Ljava/lang/String; = "com.samsung.rcs.contacts"


# instance fields
.field mFeatureTagsDetected:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;->mFeatureTagsDetected:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static reOrdering(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    .local p0, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;>;"
    .local p1, "phoneArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_2

    :cond_0
    move-object/from16 v13, p0

    .line 352
    :cond_1
    return-object v13

    .line 304
    :cond_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v13, "retUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v4, "descStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;

    .line 308
    .local v15, "ud":Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;
    iget-object v0, v15, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;->displayUri:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 309
    .local v16, "uri":Ljava/lang/String;
    const-string v17, "sip:"

    const-string v18, ""

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 310
    const-string v17, "tel:"

    const-string v18, ""

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 311
    if-eqz v16, :cond_3

    .line 312
    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 315
    .end local v15    # "ud":Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;
    .end local v16    # "uri":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    .line 316
    .local v7, "index":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v5    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 317
    .local v9, "phoneNumber":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    const/4 v2, 0x7

    .line 319
    .local v2, "compareLength":I
    :goto_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v17

    sub-int v17, v17, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, "compareString":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 322
    .local v14, "string":Ljava/lang/String;
    invoke-virtual {v14, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;->displayUri:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 323
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .end local v14    # "string":Ljava/lang/String;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 328
    goto :goto_1

    .line 317
    .end local v2    # "compareLength":I
    .end local v3    # "compareString":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_2

    .line 330
    .end local v9    # "phoneNumber":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 331
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v11, "remainUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;>;"
    const/4 v8, 0x0

    .line 333
    .local v8, "isAdded":Z
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;

    .line 334
    .local v16, "uri":Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;

    .line 335
    .local v12, "retUri":Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 336
    const/4 v8, 0x1

    .line 341
    .end local v12    # "retUri":Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;
    :cond_a
    if-nez v8, :cond_b

    .line 342
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 344
    :cond_b
    const/4 v8, 0x0

    goto :goto_3

    .line 346
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v16    # "uri":Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;
    :cond_c
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_1

    .line 347
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;

    .line 348
    .local v10, "remainUri":Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method


# virtual methods
.method public addInfo(Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "iconId"    # I
    .param p3, "iconPackage"    # Ljava/lang/String;
    .param p4, "isEnabled"    # Z
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "displayName"    # Ljava/lang/String;
    .param p7, "displayUri"    # Ljava/lang/String;
    .param p8, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 249
    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;->mFeatureTagsDetected:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;

    .line 251
    .local v0, "feature":Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;
    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;

    .end local v0    # "feature":Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;
    invoke-direct {v0}, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;-><init>()V

    .line 254
    .restart local v0    # "feature":Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;
    iput-boolean p4, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->isEnabled:Z

    .line 255
    iput-object p1, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->name:Ljava/lang/String;

    .line 256
    iput p2, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->iconId:I

    .line 257
    iput-object p3, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->iconPackagename:Ljava/lang/String;

    .line 258
    iput-object p8, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->serviceName:Ljava/lang/String;

    .line 259
    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;->mFeatureTagsDetected:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_0
    if-eqz p4, :cond_1

    .line 272
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->isEnabled:Z

    .line 273
    iput-object p3, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->iconPackagename:Ljava/lang/String;

    .line 274
    iput p2, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->iconId:I

    .line 276
    new-instance v1, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;

    invoke-direct {v1}, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;-><init>()V

    .line 277
    .local v1, "uriDescription":Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;
    iput-object p6, v1, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;->displayName:Ljava/lang/String;

    .line 278
    iput-object p7, v1, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;->displayUri:Ljava/lang/String;

    .line 279
    iput-object p5, v1, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;->intent:Landroid/content/Intent;

    .line 280
    iget-object v2, v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->uris:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .end local v1    # "uriDescription":Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$UriDescription;
    :cond_1
    return-void
.end method

.method public getFeatureDescriptions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;->mFeatureTagsDetected:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;->mFeatureTagsDetected:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 289
    return-void
.end method
