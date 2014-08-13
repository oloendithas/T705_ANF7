.class public Lcom/sec/android/inputmethod/QuickCommandInfoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QuickCommandInfoReceiver.java"


# instance fields
.field mInputManager:Lcom/diotek/ime/framework/common/InputManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/QuickCommandInfoReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-void
.end method

.method private sendLanguageInfo(Landroid/content/Context;)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    const-string v23, "com.sec.android.inputmethod_preferences"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 107
    .local v21, "sharedPreferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/QuickCommandInfoReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v22

    .line 111
    .local v22, "supportList":[Lcom/diotek/ime/framework/common/Language;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v5, "SelectedIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v4, "SelectedCodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v3, "CountryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, -0x1

    .line 121
    .local v8, "defaultId":I
    const/4 v9, 0x0

    .line 124
    .local v9, "defaultLanguage":Ljava/lang/String;
    move-object/from16 v6, v22

    .local v6, "arr$":[Lcom/diotek/ime/framework/common/Language;
    array-length v15, v6

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v15, :cond_1

    aget-object v19, v6, v12

    .line 126
    .local v19, "sLang":Lcom/diotek/ime/framework/common/Language;
    const-string v23, "0x%08x"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 127
    .local v14, "key":Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-interface {v0, v14, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 129
    .local v10, "enabled":Z
    if-eqz v10, :cond_0

    .line 131
    new-instance v23, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 139
    .end local v10    # "enabled":Z
    .end local v14    # "key":Ljava/lang/String;
    .end local v19    # "sLang":Lcom/diotek/ime/framework/common/Language;
    :cond_1
    const-string v23, "input_language"

    const/16 v24, -0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 141
    .local v16, "prefLang":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 143
    .local v18, "sId":Ljava/lang/Integer;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 145
    move/from16 v8, v16

    goto :goto_1

    .line 153
    .end local v18    # "sId":Ljava/lang/Integer;
    :cond_3
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v8, v0, :cond_6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-gtz v23, :cond_6

    .line 155
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v17

    .line 157
    .local v17, "sCountry":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v20

    .line 161
    .local v20, "sLocale":Ljava/lang/String;
    move-object/from16 v6, v22

    array-length v15, v6

    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_2
    if-ge v12, v15, :cond_4

    aget-object v19, v6, v12

    .line 165
    .restart local v19    # "sLang":Lcom/diotek/ime/framework/common/Language;
    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 167
    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v23

    const-string v24, "en"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    const-string v23, "en"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/QuickCommandInfoReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnglishUSTypeCountry(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 175
    const-string v23, "US"

    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 177
    const v8, 0x656e5553

    .line 217
    .end local v19    # "sLang":Lcom/diotek/ime/framework/common/Language;
    :cond_4
    :goto_3
    if-gtz v8, :cond_5

    .line 219
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-lez v23, :cond_f

    .line 221
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 231
    :cond_5
    :goto_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v12    # "i$":I
    .end local v17    # "sCountry":Ljava/lang/String;
    .end local v20    # "sLocale":Ljava/lang/String;
    :cond_6
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v8, v0, :cond_10

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-lez v23, :cond_10

    .line 239
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 251
    :cond_7
    :goto_5
    move-object/from16 v6, v22

    array-length v15, v6

    const/4 v12, 0x0

    .restart local v12    # "i$":I
    move v13, v12

    .end local v12    # "i$":I
    .local v13, "i$":I
    :goto_6
    if-ge v13, v15, :cond_14

    aget-object v19, v6, v13

    .line 253
    .restart local v19    # "sLang":Lcom/diotek/ime/framework/common/Language;
    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v23

    move/from16 v0, v23

    if-ne v0, v8, :cond_8

    .line 255
    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_11

    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_11

    .line 257
    const-string v23, "%s_%s"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 269
    :cond_8
    :goto_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v13    # "i$":I
    .local v12, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 271
    .local v18, "sId":I
    const/4 v7, 0x0

    .line 275
    .local v7, "code":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 277
    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_12

    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_12

    .line 279
    const-string v23, "%s_%s"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 287
    :goto_9
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 183
    .end local v7    # "code":Ljava/lang/String;
    .end local v18    # "sId":I
    .local v12, "i$":I
    .restart local v17    # "sCountry":Ljava/lang/String;
    .restart local v20    # "sLocale":Ljava/lang/String;
    :cond_a
    const/16 v23, 0x0

    aget-object v23, v22, v23

    invoke-virtual/range {v23 .. v23}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v8

    .line 161
    :cond_b
    :goto_a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 189
    :cond_c
    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 191
    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v8

    .line 193
    goto/16 :goto_3

    .line 197
    :cond_d
    const/16 v23, 0x0

    aget-object v23, v22, v23

    invoke-virtual/range {v23 .. v23}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v8

    goto :goto_a

    .line 203
    :cond_e
    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 205
    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v8

    .line 207
    goto/16 :goto_3

    .line 225
    .end local v19    # "sLang":Lcom/diotek/ime/framework/common/Language;
    :cond_f
    const/16 v23, 0x0

    aget-object v23, v22, v23

    invoke-virtual/range {v23 .. v23}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v8

    goto/16 :goto_4

    .line 241
    .end local v12    # "i$":I
    .end local v17    # "sCountry":Ljava/lang/String;
    .end local v20    # "sLocale":Ljava/lang/String;
    :cond_10
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v8, v0, :cond_7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-gtz v23, :cond_7

    .line 243
    const/16 v23, 0x0

    aget-object v23, v22, v23

    invoke-virtual/range {v23 .. v23}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v8

    .line 245
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 261
    .restart local v13    # "i$":I
    .restart local v19    # "sLang":Lcom/diotek/ime/framework/common/Language;
    :cond_11
    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_7

    .line 283
    .end local v13    # "i$":I
    .restart local v7    # "code":Ljava/lang/String;
    .local v12, "i$":Ljava/util/Iterator;
    .restart local v18    # "sId":I
    :cond_12
    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    .line 251
    .end local v7    # "code":Ljava/lang/String;
    .end local v18    # "sId":I
    :cond_13
    add-int/lit8 v12, v13, 0x1

    .local v12, "i$":I
    move v13, v12

    .end local v12    # "i$":I
    .restart local v13    # "i$":I
    goto/16 :goto_6

    .line 297
    .end local v19    # "sLang":Lcom/diotek/ime/framework/common/Language;
    :cond_14
    new-instance v11, Landroid/content/Intent;

    const-string v23, "com.sec.android.gesturepad.Action_InputLan"

    move-object/from16 v0, v23

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 299
    .local v11, "i":Landroid/content/Intent;
    const-string v23, "defaultLanguage"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string v23, "selectedLanguageList"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 305
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method private sendSwiftKeyMode(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    iget-object v2, p0, Lcom/sec/android/inputmethod/QuickCommandInfoReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v0

    .line 89
    .local v0, "IsSwiftKeyMode":Z
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.gesturepad.Action_SwiftKeyMode"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "swiftkeyMode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 93
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 95
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 57
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/QuickCommandInfoReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 59
    iget-object v0, p0, Lcom/sec/android/inputmethod/QuickCommandInfoReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v0, :cond_0

    .line 61
    invoke-static {p1}, Lcom/diotek/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/QuickCommandInfoReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 67
    :cond_0
    const-string v0, "com.sec.android.inputmethod.RequestLanguageInfo"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/QuickCommandInfoReceiver;->sendLanguageInfo(Landroid/content/Context;)V

    .line 79
    :cond_1
    :goto_0
    return-void

    .line 71
    :cond_2
    const-string v0, "com.sec.android.inputmethod.RequestSwiftKeyMode"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/QuickCommandInfoReceiver;->sendSwiftKeyMode(Landroid/content/Context;)V

    goto :goto_0
.end method
