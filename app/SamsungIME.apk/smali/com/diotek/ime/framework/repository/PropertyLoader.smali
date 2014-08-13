.class public final Lcom/diotek/ime/framework/repository/PropertyLoader;
.super Ljava/lang/Object;
.source "PropertyLoader.java"


# static fields
.field private static final ATT_COUNT:I = 0x3

.field private static final ATT_KEY:Ljava/lang/String; = "KEY"

.field private static final ATT_TYPE:Ljava/lang/String; = "TYPE"

.field private static final ATT_VALUE:Ljava/lang/String; = "VALUE"

.field public static final HEADER_SETTINGS_DEFAULT_VALUES:Ljava/lang/String; = "SETTINGS_DEFAULT_"

.field private static final INDEX_ATT_KEY:I = 0x0

.field private static final INDEX_ATT_TYPE:I = 0x2

.field private static final INDEX_ATT_VALUE:I = 0x1

.field private static final TAG_LOG_DEBUG:Ljava/lang/String; = "LOG_DEBUG"

.field private static final TAG_LOG_ERROR:Ljava/lang/String; = "LOG_ERROR"

.field private static final TAG_LOG_INFO:Ljava/lang/String; = "LOG_INFO"

.field private static final TAG_PROPERTIES:Ljava/lang/String; = "PROPERTIES"

.field private static final TAG_PROPERTY:Ljava/lang/String; = "PROPERTY"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private makeSelectLanguagePrefKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "langID"    # I

    .prologue
    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select_language_list_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    .local v0, "languageListKey":Ljava/lang/StringBuilder;
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private parseAttribute(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Z
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "result"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 168
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    if-ne v4, v5, :cond_0

    if-eqz p2, :cond_0

    array-length v4, p2

    if-eq v4, v5, :cond_2

    :cond_0
    move v2, v3

    .line 187
    :cond_1
    return v2

    .line 175
    :cond_2
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 176
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "attribute":Ljava/lang/String;
    const-string v4, "KEY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 179
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v3

    .line 175
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :cond_4
    const-string v4, "VALUE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 181
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v2

    goto :goto_1

    .line 182
    :cond_5
    const-string v4, "TYPE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 183
    const/4 v4, 0x2

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p2, v4

    goto :goto_1
.end method

.method private parseXml(Landroid/content/res/XmlResourceParser;Landroid/content/Context;)Z
    .locals 14
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "settingsContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    .line 227
    .local v2, "eventType":I
    const/4 v9, 0x0

    .line 228
    .local v9, "tag":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Sip_ConfigAutoCorrection"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "defaultAutoReplacementValue":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 231
    .local v6, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 232
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x0

    .line 234
    .local v3, "hasToCommit":Z
    const/4 v4, 0x0

    .line 236
    .local v4, "isKorMode":Z
    :goto_0
    const/4 v11, 0x1

    if-eq v2, v11, :cond_10

    .line 237
    packed-switch v2, :pswitch_data_0

    .line 317
    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    goto :goto_0

    .line 239
    :pswitch_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 240
    const-string v11, "PROPERTIES"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 242
    const-string v11, "PROPERTY"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 243
    const/4 v11, 0x3

    new-array v7, v11, [Ljava/lang/String;

    .line 244
    .local v7, "property":[Ljava/lang/String;
    invoke-direct {p0, p1, v7}, Lcom/diotek/ime/framework/repository/PropertyLoader;->parseAttribute(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Z

    move-result v8

    .line 245
    .local v8, "result":Z
    if-eqz v8, :cond_0

    .line 246
    const/4 v11, 0x0

    aget-object v11, v7, v11

    const-string v12, "KOR_MODE"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x2

    aget-object v11, v7, v11

    const-string v12, "bool"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    aget-object v11, v7, v11

    const-string v12, "true"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 249
    const/4 v4, 0x1

    .line 252
    :cond_1
    const/4 v11, 0x0

    aget-object v11, v7, v11

    const-string v12, "SETTINGS_DEFAULT_"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_0

    .line 253
    const/4 v11, 0x2

    aget-object v11, v7, v11

    const-string v12, "string"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 254
    const/4 v11, 0x0

    aget-object v11, v7, v11

    const/4 v12, 0x1

    aget-object v12, v7, v12

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 255
    if-eqz v4, :cond_2

    .line 256
    const/4 v11, 0x0

    aget-object v11, v7, v11

    const-string v12, "SETTINGS_DEFAULT_KOREAN_KEYPAD_TYPE"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 257
    const/high16 v11, 0x6b6f0000

    invoke-direct {p0, v11}, Lcom/diotek/ime/framework/repository/PropertyLoader;->makeSelectLanguagePrefKey(I)Ljava/lang/String;

    move-result-object v5

    .line 258
    .local v5, "languageListKey":Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-interface {v1, v5, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 261
    .end local v5    # "languageListKey":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 262
    :cond_3
    const/4 v11, 0x2

    aget-object v11, v7, v11

    const-string v12, "int"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 263
    const/4 v11, 0x0

    aget-object v11, v7, v11

    const/4 v12, 0x1

    aget-object v12, v7, v12

    invoke-static {v12}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 265
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 266
    :cond_4
    const/4 v11, 0x2

    aget-object v11, v7, v11

    const-string v12, "bool"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 267
    const-string v11, "OFF"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    const/4 v12, 0x0

    aget-object v12, v7, v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 269
    const/4 v11, 0x0

    aget-object v11, v7, v11

    const/4 v12, 0x0

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 274
    :goto_2
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 271
    :cond_5
    const/4 v11, 0x0

    aget-object v11, v7, v11

    const/4 v12, 0x1

    aget-object v12, v7, v12

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 275
    :cond_6
    const/4 v11, 0x2

    aget-object v11, v7, v11

    const-string v12, "short"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 276
    const/4 v11, 0x0

    aget-object v11, v7, v11

    const/4 v12, 0x1

    aget-object v12, v7, v12

    invoke-static {v12}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 278
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 279
    :cond_7
    const/4 v11, 0x2

    aget-object v11, v7, v11

    const-string v12, "float"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 280
    const/4 v11, 0x0

    aget-object v11, v7, v11

    const/4 v12, 0x1

    aget-object v12, v7, v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 281
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 283
    :cond_8
    const-string v11, "SamsungIME"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    aget-object v13, v7, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, v7, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 287
    .end local v7    # "property":[Ljava/lang/String;
    .end local v8    # "result":Z
    :cond_9
    const-string v11, "LOG_INFO"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 288
    const/4 v11, 0x0

    const-string v12, "value"

    invoke-interface {p1, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 289
    .local v10, "value":Ljava/lang/String;
    const-string v11, "true"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 290
    const/4 v11, 0x1

    sput-boolean v11, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    goto/16 :goto_1

    .line 292
    :cond_a
    const/4 v11, 0x0

    sput-boolean v11, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    goto/16 :goto_1

    .line 294
    .end local v10    # "value":Ljava/lang/String;
    :cond_b
    const-string v11, "LOG_DEBUG"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 295
    const/4 v11, 0x0

    const-string v12, "value"

    invoke-interface {p1, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 296
    .restart local v10    # "value":Ljava/lang/String;
    const-string v11, "true"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 297
    const/4 v11, 0x1

    sput-boolean v11, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    goto/16 :goto_1

    .line 299
    :cond_c
    const/4 v11, 0x0

    sput-boolean v11, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    goto/16 :goto_1

    .line 301
    .end local v10    # "value":Ljava/lang/String;
    :cond_d
    const-string v11, "LOG_ERROR"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 302
    const/4 v11, 0x0

    const-string v12, "value"

    invoke-interface {p1, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 303
    .restart local v10    # "value":Ljava/lang/String;
    const-string v11, "true"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 304
    const/4 v11, 0x1

    sput-boolean v11, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    goto/16 :goto_1

    .line 306
    :cond_e
    const/4 v11, 0x0

    sput-boolean v11, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    goto/16 :goto_1

    .line 309
    .end local v10    # "value":Ljava/lang/String;
    :cond_f
    const/4 v11, 0x0

    .line 323
    :goto_3
    return v11

    .line 319
    :cond_10
    if-eqz v3, :cond_11

    .line 320
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 323
    :cond_11
    const/4 v11, 0x1

    goto :goto_3

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private parseXml(Landroid/content/res/XmlResourceParser;Lcom/diotek/ime/framework/repository/Repository;)Z
    .locals 13
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "target"    # Lcom/diotek/ime/framework/repository/Repository;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 90
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    .line 91
    .local v1, "eventType":I
    const/4 v4, 0x0

    .line 92
    .local v4, "tag":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Sip_ConfigAutoCorrection"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "defaultAutoReplacementValue":Ljava/lang/String;
    :goto_0
    if-eq v1, v7, :cond_e

    .line 95
    packed-switch v1, :pswitch_data_0

    .line 161
    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    goto :goto_0

    .line 97
    :pswitch_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 98
    const-string v8, "PROPERTIES"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 100
    const-string v8, "PROPERTY"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 101
    const/4 v8, 0x3

    new-array v2, v8, [Ljava/lang/String;

    .line 102
    .local v2, "property":[Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lcom/diotek/ime/framework/repository/PropertyLoader;->parseAttribute(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Z

    move-result v3

    .line 103
    .local v3, "result":Z
    if-eqz v3, :cond_0

    .line 104
    aget-object v8, v2, v11

    const-string v9, "string"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 105
    aget-object v8, v2, v6

    aget-object v9, v2, v7

    invoke-interface {p2, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :cond_1
    aget-object v8, v2, v11

    const-string v9, "int"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 107
    aget-object v8, v2, v6

    aget-object v9, v2, v7

    invoke-static {v9}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {p2, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    goto :goto_1

    .line 109
    :cond_2
    aget-object v8, v2, v11

    const-string v9, "bool"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 110
    const-string v8, "OFF"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    aget-object v9, v2, v6

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 112
    aget-object v8, v2, v6

    invoke-interface {p2, v8, v6}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_1

    .line 114
    :cond_3
    aget-object v8, v2, v6

    aget-object v9, v2, v7

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-interface {p2, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 117
    :cond_4
    aget-object v8, v2, v11

    const-string v9, "short"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 118
    aget-object v8, v2, v6

    aget-object v9, v2, v7

    invoke-static {v9}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->shortValue()S

    move-result v9

    invoke-interface {p2, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;S)V

    goto/16 :goto_1

    .line 120
    :cond_5
    aget-object v8, v2, v11

    const-string v9, "float"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 121
    aget-object v8, v2, v6

    aget-object v9, v2, v7

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-interface {p2, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;F)V

    goto/16 :goto_1

    .line 124
    :cond_6
    const-string v8, "SamsungIME"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v2, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v2, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 127
    .end local v2    # "property":[Ljava/lang/String;
    .end local v3    # "result":Z
    :cond_7
    const-string v8, "LOG_INFO"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 128
    const-string v8, "value"

    invoke-interface {p1, v12, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, "value":Ljava/lang/String;
    const-string v8, "true"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 130
    sput-boolean v7, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    goto/16 :goto_1

    .line 132
    :cond_8
    sput-boolean v6, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    goto/16 :goto_1

    .line 134
    .end local v5    # "value":Ljava/lang/String;
    :cond_9
    const-string v8, "LOG_DEBUG"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 135
    const-string v8, "value"

    invoke-interface {p1, v12, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 136
    .restart local v5    # "value":Ljava/lang/String;
    const-string v8, "true"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 137
    sput-boolean v7, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    goto/16 :goto_1

    .line 139
    :cond_a
    sget-boolean v8, Lcom/diotek/ime/framework/util/Debug;->ENG_MODE:Z

    if-eqz v8, :cond_b

    .line 140
    sput-boolean v7, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    goto/16 :goto_1

    .line 142
    :cond_b
    sput-boolean v6, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    goto/16 :goto_1

    .line 145
    .end local v5    # "value":Ljava/lang/String;
    :cond_c
    const-string v8, "LOG_ERROR"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 146
    const-string v8, "value"

    invoke-interface {p1, v12, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 147
    .restart local v5    # "value":Ljava/lang/String;
    const-string v8, "true"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 148
    sput-boolean v7, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    goto/16 :goto_1

    .line 150
    :cond_d
    sput-boolean v6, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    goto/16 :goto_1

    .end local v5    # "value":Ljava/lang/String;
    :cond_e
    move v6, v7

    .line 164
    :cond_f
    return v6

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public load(Lcom/diotek/ime/framework/repository/Repository;Landroid/content/res/Resources;)Z
    .locals 7
    .param p1, "target"    # Lcom/diotek/ime/framework/repository/Repository;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v4, 0x0

    .line 50
    const/4 v2, 0x0

    .line 52
    .local v2, "propertyXmlLoader":Lcom/diotek/ime/framework/util/AbstractPropertyXmlLoader;
    if-nez v2, :cond_0

    .line 53
    new-instance v3, Lcom/diotek/ime/framework/util/PropertyXmlLoaderManager;

    invoke-direct {v3}, Lcom/diotek/ime/framework/util/PropertyXmlLoaderManager;-><init>()V

    .line 54
    .local v3, "propertyXmlLoaderManager":Lcom/diotek/ime/framework/util/PropertyXmlLoaderManager;
    invoke-virtual {v3}, Lcom/diotek/ime/framework/util/PropertyXmlLoaderManager;->createXmlLoader()Lcom/diotek/ime/framework/util/AbstractPropertyXmlLoader;

    move-result-object v2

    .line 55
    if-nez v2, :cond_0

    .line 86
    .end local v3    # "propertyXmlLoaderManager":Lcom/diotek/ime/framework/util/PropertyXmlLoaderManager;
    :goto_0
    return v4

    .line 60
    :cond_0
    const/4 v1, 0x0

    .line 62
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    if-nez p2, :cond_1

    .line 63
    invoke-virtual {v2}, Lcom/diotek/ime/framework/util/AbstractPropertyXmlLoader;->getRepositoryXmlParser()Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 68
    :goto_1
    if-eqz v1, :cond_2

    .line 70
    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/diotek/ime/framework/repository/PropertyLoader;->parseXml(Landroid/content/res/XmlResourceParser;Lcom/diotek/ime/framework/repository/Repository;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 71
    const-string v5, "SamsungIME"

    const-string v6, "Porperty file parssing error! (Invalid tag)"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v5, "SamsungIME"

    const-string v6, "Porperty file parssing error!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    invoke-virtual {v2, p2}, Lcom/diotek/ime/framework/util/AbstractPropertyXmlLoader;->getRepositoryXmlParser(Landroid/content/res/Resources;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    goto :goto_1

    .line 77
    :catch_1
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "SamsungIME"

    const-string v6, "Porperty file parssing error!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    const-string v5, "SamsungIME"

    const-string v6, "Could not find porperty file!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public loadAndSetToPreference(Landroid/content/Context;)Z
    .locals 7
    .param p1, "settingsContext"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 191
    const/4 v2, 0x0

    .line 193
    .local v2, "propertyXmlLoader":Lcom/diotek/ime/framework/util/AbstractPropertyXmlLoader;
    if-nez v2, :cond_0

    .line 194
    new-instance v3, Lcom/diotek/ime/framework/util/PropertyXmlLoaderManager;

    invoke-direct {v3}, Lcom/diotek/ime/framework/util/PropertyXmlLoaderManager;-><init>()V

    .line 195
    .local v3, "propertyXmlLoaderManager":Lcom/diotek/ime/framework/util/PropertyXmlLoaderManager;
    invoke-virtual {v3}, Lcom/diotek/ime/framework/util/PropertyXmlLoaderManager;->createXmlLoader()Lcom/diotek/ime/framework/util/AbstractPropertyXmlLoader;

    move-result-object v2

    .line 196
    if-nez v2, :cond_0

    .line 221
    .end local v3    # "propertyXmlLoaderManager":Lcom/diotek/ime/framework/util/PropertyXmlLoaderManager;
    :goto_0
    return v4

    .line 201
    :cond_0
    invoke-virtual {v2}, Lcom/diotek/ime/framework/util/AbstractPropertyXmlLoader;->getRepositoryXmlParser()Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 203
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v1, :cond_1

    .line 205
    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/diotek/ime/framework/repository/PropertyLoader;->parseXml(Landroid/content/res/XmlResourceParser;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 206
    const-string v5, "SamsungIME"

    const-string v6, "Porperty file parssing error! (Invalid tag)"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v5, "SamsungIME"

    const-string v6, "Porperty file parssing error!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 212
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 213
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "SamsungIME"

    const-string v6, "Porperty file parssing error!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const-string v5, "SamsungIME"

    const-string v6, "Could not find porperty file!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method
