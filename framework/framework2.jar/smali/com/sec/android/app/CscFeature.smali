.class public Lcom/sec/android/app/CscFeature;
.super Ljava/lang/Object;
.source "CscFeature.java"


# static fields
.field public static final Bool_NoTag:Z = false

.field private static final FEATURE_XML:Ljava/lang/String; = "/system/csc/feature.xml"

.field public static final Int_NoTag:I = 0x0

.field private static final MPS_FEATURE_XML:Ljava/lang/String; = "/system/csc/others.xml"

.field public static final Str_NoTag:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "CscFeature"

.field public static final TAG_BOOLEAN_TEST_FALSE:Ljava/lang/String; = "CscFeature_BooleanTestFalse"

.field public static final TAG_BOOLEAN_TEST_NULL:Ljava/lang/String; = "CscFeature_BooleanTestNull"

.field public static final TAG_BOOLEAN_TEST_TRUE:Ljava/lang/String; = "CscFeature_BooleanTestTrue"

.field public static final TAG_INTEGER_TEST:Ljava/lang/String; = "CscFeature_IntegerTest"

.field public static final TAG_INTEGER_TEST_NULL:Ljava/lang/String; = "CscFeature_IntegerTestNull"

.field public static final TAG_STRING_TEST:Ljava/lang/String; = "CscFeature_StringTest"

.field public static final TAG_STRING_TEST_NULL:Ljava/lang/String; = "CscFeature_StringTestNull"

.field private static sInstance:Lcom/sec/android/app/CscFeature;


# instance fields
.field private mFeatureList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/CscFeature;->sInstance:Lcom/sec/android/app/CscFeature;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    .line 59
    :try_start_a
    invoke-direct {p0}, Lcom/sec/android/app/CscFeature;->loadFeatureFile()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    .line 63
    :goto_d
    return-void

    .line 60
    :catch_e
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CscFeature"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public static getInstance()Lcom/sec/android/app/CscFeature;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/sec/android/app/CscFeature;->sInstance:Lcom/sec/android/app/CscFeature;

    if-nez v0, :cond_b

    .line 67
    new-instance v0, Lcom/sec/android/app/CscFeature;

    invoke-direct {v0}, Lcom/sec/android/app/CscFeature;-><init>()V

    sput-object v0, Lcom/sec/android/app/CscFeature;->sInstance:Lcom/sec/android/app/CscFeature;

    .line 69
    :cond_b
    sget-object v0, Lcom/sec/android/app/CscFeature;->sInstance:Lcom/sec/android/app/CscFeature;

    return-object v0
.end method

.method private loadFeatureFile()V
    .registers 16

    .prologue
    const-wide/16 v13, 0x0

    const/4 v12, 0x1

    .line 147
    const/4 v9, 0x0

    .line 148
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    .line 149
    .local v7, "fi":Ljava/io/InputStream;
    const/4 v3, -0x1

    .line 150
    .local v3, "eventType":I
    const/4 v0, 0x0

    .line 151
    .local v0, "TagName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 153
    .local v1, "TagValue":Ljava/lang/String;
    :try_start_8
    iget-object v10, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v10}, Ljava/util/Hashtable;->clear()V

    .line 155
    new-instance v6, Ljava/io/File;

    const-string v10, "/system/csc/feature.xml"

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v6, "featureXmlFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v10, v10, v13

    if-gtz v10, :cond_47

    .line 157
    :cond_22
    new-instance v6, Ljava/io/File;

    .end local v6    # "featureXmlFile":Ljava/io/File;
    const-string v10, "/system/csc/others.xml"

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .restart local v6    # "featureXmlFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_37

    invoke-virtual {v6}, Ljava/io/File;->length()J
    :try_end_32
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_32} :catch_129
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_32} :catch_127
    .catchall {:try_start_8 .. :try_end_32} :catchall_125

    move-result-wide v10

    cmp-long v10, v10, v13

    if-gtz v10, :cond_47

    .line 213
    :cond_37
    if-eqz v7, :cond_3b

    .line 214
    :try_start_39
    throw v7
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3a} :catch_3c

    .line 215
    const/4 v7, 0x0

    .line 221
    .end local v6    # "featureXmlFile":Ljava/io/File;
    :cond_3b
    :goto_3b
    return-void

    .line 217
    .restart local v6    # "featureXmlFile":Ljava/io/File;
    :catch_3c
    move-exception v2

    .line 218
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "CscFeature"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 163
    .end local v2    # "e":Ljava/io/IOException;
    :cond_47
    :try_start_47
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 164
    .local v5, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 165
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 166
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_58
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_47 .. :try_end_58} :catch_129
    .catch Ljava/io/FileNotFoundException; {:try_start_47 .. :try_end_58} :catch_127
    .catchall {:try_start_47 .. :try_end_58} :catchall_125

    .line 167
    .end local v7    # "fi":Ljava/io/InputStream;
    .local v8, "fi":Ljava/io/InputStream;
    const/4 v10, 0x0

    :try_start_59
    invoke-interface {v9, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 168
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 170
    :goto_60
    if-eq v3, v12, :cond_df

    .line 171
    const/4 v10, 0x2

    if-ne v3, v10, :cond_6e

    .line 172
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_68
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_59 .. :try_end_68} :catch_91
    .catch Ljava/io/FileNotFoundException; {:try_start_59 .. :try_end_68} :catch_b8
    .catchall {:try_start_59 .. :try_end_68} :catchall_d6

    move-result-object v0

    .line 195
    :cond_69
    :goto_69
    :try_start_69
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_69 .. :try_end_6c} :catch_91
    .catch Ljava/io/FileNotFoundException; {:try_start_69 .. :try_end_6c} :catch_b8
    .catchall {:try_start_69 .. :try_end_6c} :catchall_d6

    move-result v3

    goto :goto_60

    .line 174
    :cond_6e
    const/4 v10, 0x4

    if-ne v3, v10, :cond_69

    .line 175
    :try_start_71
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 176
    if-eqz v0, :cond_69

    if-eqz v1, :cond_69

    .line 177
    iget-object v10, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v10, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_7e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_71 .. :try_end_7e} :catch_91
    .catch Ljava/io/FileNotFoundException; {:try_start_71 .. :try_end_7e} :catch_b8
    .catchall {:try_start_71 .. :try_end_7e} :catchall_d6

    move-result v10

    if-eqz v10, :cond_a3

    .line 179
    :try_start_81
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_86
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_81 .. :try_end_84} :catch_91
    .catch Ljava/io/FileNotFoundException; {:try_start_81 .. :try_end_84} :catch_b8
    .catchall {:try_start_81 .. :try_end_84} :catchall_d6

    move-result v3

    goto :goto_60

    .line 180
    :catch_86
    move-exception v2

    .line 181
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_87
    const-string v10, "CscFeature"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_87 .. :try_end_90} :catch_91
    .catch Ljava/io/FileNotFoundException; {:try_start_87 .. :try_end_90} :catch_b8
    .catchall {:try_start_87 .. :try_end_90} :catchall_d6

    goto :goto_60

    .line 207
    .end local v2    # "e":Ljava/io/IOException;
    :catch_91
    move-exception v2

    move-object v7, v8

    .line 208
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "featureXmlFile":Ljava/io/File;
    .end local v8    # "fi":Ljava/io/InputStream;
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7    # "fi":Ljava/io/InputStream;
    :goto_93
    :try_start_93
    const-string v10, "CscFeature"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catchall {:try_start_93 .. :try_end_9c} :catchall_125

    .line 213
    if-eqz v7, :cond_3b

    .line 214
    :try_start_9e
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_102

    .line 215
    const/4 v7, 0x0

    goto :goto_3b

    .line 186
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v7    # "fi":Ljava/io/InputStream;
    .restart local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "featureXmlFile":Ljava/io/File;
    .restart local v8    # "fi":Ljava/io/InputStream;
    :cond_a3
    :try_start_a3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 187
    iget-object v10, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v10, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_ac} :catch_ad
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a3 .. :try_end_ac} :catch_91
    .catch Ljava/io/FileNotFoundException; {:try_start_a3 .. :try_end_ac} :catch_b8
    .catchall {:try_start_a3 .. :try_end_ac} :catchall_d6

    goto :goto_69

    .line 188
    :catch_ad
    move-exception v4

    .line 189
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_ae
    const-string v10, "CscFeature"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ae .. :try_end_b7} :catch_91
    .catch Ljava/io/FileNotFoundException; {:try_start_ae .. :try_end_b7} :catch_b8
    .catchall {:try_start_ae .. :try_end_b7} :catchall_d6

    goto :goto_69

    .line 209
    .end local v4    # "ex":Ljava/lang/Exception;
    :catch_b8
    move-exception v2

    move-object v7, v8

    .line 210
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "featureXmlFile":Ljava/io/File;
    .end local v8    # "fi":Ljava/io/InputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "fi":Ljava/io/InputStream;
    :goto_ba
    :try_start_ba
    const-string v10, "CscFeature"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catchall {:try_start_ba .. :try_end_c3} :catchall_125

    .line 213
    if-eqz v7, :cond_3b

    .line 214
    :try_start_c5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_10e

    .line 215
    const/4 v7, 0x0

    goto/16 :goto_3b

    .line 196
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "fi":Ljava/io/InputStream;
    .restart local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "featureXmlFile":Ljava/io/File;
    .restart local v8    # "fi":Ljava/io/InputStream;
    :catch_cb
    move-exception v2

    .line 197
    .local v2, "e":Ljava/io/IOException;
    :try_start_cc
    const-string v10, "CscFeature"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_cc .. :try_end_d5} :catch_91
    .catch Ljava/io/FileNotFoundException; {:try_start_cc .. :try_end_d5} :catch_b8
    .catchall {:try_start_cc .. :try_end_d5} :catchall_d6

    goto :goto_60

    .line 212
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_d6
    move-exception v10

    move-object v7, v8

    .line 213
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "featureXmlFile":Ljava/io/File;
    .end local v8    # "fi":Ljava/io/InputStream;
    .restart local v7    # "fi":Ljava/io/InputStream;
    :goto_d8
    if-eqz v7, :cond_de

    .line 214
    :try_start_da
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_11a

    .line 215
    const/4 v7, 0x0

    .line 219
    :cond_de
    :goto_de
    throw v10

    .line 202
    .end local v7    # "fi":Ljava/io/InputStream;
    .restart local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "featureXmlFile":Ljava/io/File;
    .restart local v8    # "fi":Ljava/io/InputStream;
    :cond_df
    :try_start_df
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e2} :catch_ea
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_df .. :try_end_e2} :catch_91
    .catch Ljava/io/FileNotFoundException; {:try_start_df .. :try_end_e2} :catch_b8
    .catchall {:try_start_df .. :try_end_e2} :catchall_d6

    .line 213
    :goto_e2
    if-eqz v8, :cond_12c

    .line 214
    :try_start_e4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_f5

    .line 215
    const/4 v7, 0x0

    .end local v8    # "fi":Ljava/io/InputStream;
    .restart local v7    # "fi":Ljava/io/InputStream;
    goto/16 :goto_3b

    .line 203
    .end local v7    # "fi":Ljava/io/InputStream;
    .restart local v8    # "fi":Ljava/io/InputStream;
    :catch_ea
    move-exception v2

    .line 204
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_eb
    const-string v10, "CscFeature"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_eb .. :try_end_f4} :catch_91
    .catch Ljava/io/FileNotFoundException; {:try_start_eb .. :try_end_f4} :catch_b8
    .catchall {:try_start_eb .. :try_end_f4} :catchall_d6

    goto :goto_e2

    .line 217
    .end local v2    # "e":Ljava/io/IOException;
    :catch_f5
    move-exception v2

    .line 218
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "CscFeature"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 220
    .end local v8    # "fi":Ljava/io/InputStream;
    .restart local v7    # "fi":Ljava/io/InputStream;
    goto/16 :goto_3b

    .line 217
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "featureXmlFile":Ljava/io/File;
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_102
    move-exception v2

    .line 218
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "CscFeature"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 217
    .local v2, "e":Ljava/io/FileNotFoundException;
    :catch_10e
    move-exception v2

    .line 218
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "CscFeature"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 217
    .end local v2    # "e":Ljava/io/IOException;
    :catch_11a
    move-exception v2

    .line 218
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v11, "CscFeature"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_de

    .line 212
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_125
    move-exception v10

    goto :goto_d8

    .line 209
    :catch_127
    move-exception v2

    goto :goto_ba

    .line 207
    :catch_129
    move-exception v2

    goto/16 :goto_93

    .end local v7    # "fi":Ljava/io/InputStream;
    .restart local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "featureXmlFile":Ljava/io/File;
    .restart local v8    # "fi":Ljava/io/InputStream;
    :cond_12c
    move-object v7, v8

    .end local v8    # "fi":Ljava/io/InputStream;
    .restart local v7    # "fi":Ljava/io/InputStream;
    goto/16 :goto_3b
.end method


# virtual methods
.method public getEnableStatus(Ljava/lang/String;)Z
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 74
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 75
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_18

    move-result v1

    .line 80
    :goto_15
    return v1

    :cond_16
    move v1, v2

    .line 77
    goto :goto_15

    .line 79
    :catch_18
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v1, v2

    .line 80
    goto :goto_15
.end method

.method public getEnableStatus(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 87
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result p2

    .line 92
    .end local p2    # "defaultValue":Z
    :cond_14
    :goto_14
    return p2

    .line 91
    .restart local p2    # "defaultValue":Z
    :catch_15
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_14
.end method

.method public getInteger(Ljava/lang/String;)I
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 122
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 123
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_18

    move-result v1

    .line 128
    :goto_15
    return v1

    :cond_16
    move v1, v2

    .line 125
    goto :goto_15

    .line 127
    :catch_18
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v1, v2

    .line 128
    goto :goto_15
.end method

.method public getInteger(Ljava/lang/String;I)I
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 135
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result p2

    .line 140
    .end local p2    # "defaultValue":I
    :cond_14
    :goto_14
    return p2

    .line 139
    .restart local p2    # "defaultValue":I
    :catch_15
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_14
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 99
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    :goto_10
    return-object v1

    .line 101
    :cond_11
    const-string v1, ""
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_10

    .line 103
    :catch_14
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_10
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 111
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_12

    move-object p2, v1

    .line 116
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_11
    :goto_11
    return-object p2

    .line 115
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :catch_12
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_11
.end method
