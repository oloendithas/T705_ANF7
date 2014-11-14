.class public Lcom/samsung/android/feature/FloatingFeature;
.super Ljava/lang/Object;
.source "FloatingFeature.java"

# interfaces
.implements Lcom/samsung/android/feature/IFloatingFeature;


# static fields
.field public static final BOOL_NOTAG:Z = false

.field private static final FEATURE_XML:Ljava/lang/String; = "/system/etc/floating_feature.xml"

.field public static final INT_NOTAG:I = -0x1

.field public static final STR_NOTAG:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "FloatingFeature"

.field private static sInstance:Lcom/samsung/android/feature/FloatingFeature;


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
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/feature/FloatingFeature;->sInstance:Lcom/samsung/android/feature/FloatingFeature;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    .line 50
    :try_start_a
    invoke-direct {p0}, Lcom/samsung/android/feature/FloatingFeature;->loadFeatureFile()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    .line 54
    :goto_d
    return-void

    .line 51
    :catch_e
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FloatingFeature"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public static getInstance()Lcom/samsung/android/feature/FloatingFeature;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lcom/samsung/android/feature/FloatingFeature;->sInstance:Lcom/samsung/android/feature/FloatingFeature;

    if-nez v0, :cond_b

    .line 58
    new-instance v0, Lcom/samsung/android/feature/FloatingFeature;

    invoke-direct {v0}, Lcom/samsung/android/feature/FloatingFeature;-><init>()V

    sput-object v0, Lcom/samsung/android/feature/FloatingFeature;->sInstance:Lcom/samsung/android/feature/FloatingFeature;

    .line 60
    :cond_b
    sget-object v0, Lcom/samsung/android/feature/FloatingFeature;->sInstance:Lcom/samsung/android/feature/FloatingFeature;

    return-object v0
.end method

.method private loadFeatureFile()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    .line 138
    const/4 v9, 0x0

    .line 139
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    .line 140
    .local v7, "fi":Ljava/io/InputStream;
    const/4 v3, -0x1

    .line 141
    .local v3, "eventType":I
    const/4 v0, 0x0

    .line 142
    .local v0, "TagName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 144
    .local v1, "TagValue":Ljava/lang/String;
    :try_start_6
    iget-object v10, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v10}, Ljava/util/Hashtable;->clear()V

    .line 146
    new-instance v6, Ljava/io/File;

    const-string v10, "/system/etc/floating_feature.xml"

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v6, "featureXmlFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-virtual {v6}, Ljava/io/File;->length()J
    :try_end_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_1b} :catch_114
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_1b} :catch_112
    .catchall {:try_start_6 .. :try_end_1b} :catchall_110

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gtz v10, :cond_32

    .line 201
    :cond_22
    if-eqz v7, :cond_26

    .line 202
    :try_start_24
    throw v7
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_25} :catch_27

    .line 203
    const/4 v7, 0x0

    .line 209
    .end local v6    # "featureXmlFile":Ljava/io/File;
    :cond_26
    :goto_26
    return-void

    .line 205
    .restart local v6    # "featureXmlFile":Ljava/io/File;
    :catch_27
    move-exception v2

    .line 206
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "FloatingFeature"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 151
    .end local v2    # "e":Ljava/io/IOException;
    :cond_32
    :try_start_32
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 152
    .local v5, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 153
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 154
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_32 .. :try_end_43} :catch_114
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_43} :catch_112
    .catchall {:try_start_32 .. :try_end_43} :catchall_110

    .line 155
    .end local v7    # "fi":Ljava/io/InputStream;
    .local v8, "fi":Ljava/io/InputStream;
    const/4 v10, 0x0

    :try_start_44
    invoke-interface {v9, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 156
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 158
    :goto_4b
    if-eq v3, v14, :cond_ca

    .line 159
    const/4 v10, 0x2

    if-ne v3, v10, :cond_59

    .line 160
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_53
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_44 .. :try_end_53} :catch_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_53} :catch_a3
    .catchall {:try_start_44 .. :try_end_53} :catchall_c1

    move-result-object v0

    .line 183
    :cond_54
    :goto_54
    :try_start_54
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_b6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_54 .. :try_end_57} :catch_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_54 .. :try_end_57} :catch_a3
    .catchall {:try_start_54 .. :try_end_57} :catchall_c1

    move-result v3

    goto :goto_4b

    .line 162
    :cond_59
    const/4 v10, 0x4

    if-ne v3, v10, :cond_54

    .line 163
    :try_start_5c
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 164
    if-eqz v0, :cond_54

    if-eqz v1, :cond_54

    .line 165
    iget-object v10, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v10, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_69
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5c .. :try_end_69} :catch_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_5c .. :try_end_69} :catch_a3
    .catchall {:try_start_5c .. :try_end_69} :catchall_c1

    move-result v10

    if-eqz v10, :cond_8e

    .line 167
    :try_start_6c
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_71
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6c .. :try_end_6f} :catch_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_6c .. :try_end_6f} :catch_a3
    .catchall {:try_start_6c .. :try_end_6f} :catchall_c1

    move-result v3

    goto :goto_4b

    .line 168
    :catch_71
    move-exception v2

    .line 169
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_72
    const-string v10, "FloatingFeature"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_72 .. :try_end_7b} :catch_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_72 .. :try_end_7b} :catch_a3
    .catchall {:try_start_72 .. :try_end_7b} :catchall_c1

    goto :goto_4b

    .line 195
    .end local v2    # "e":Ljava/io/IOException;
    :catch_7c
    move-exception v2

    move-object v7, v8

    .line 196
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "featureXmlFile":Ljava/io/File;
    .end local v8    # "fi":Ljava/io/InputStream;
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7    # "fi":Ljava/io/InputStream;
    :goto_7e
    :try_start_7e
    const-string v10, "FloatingFeature"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catchall {:try_start_7e .. :try_end_87} :catchall_110

    .line 201
    if-eqz v7, :cond_26

    .line 202
    :try_start_89
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_ed

    .line 203
    const/4 v7, 0x0

    goto :goto_26

    .line 174
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v7    # "fi":Ljava/io/InputStream;
    .restart local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "featureXmlFile":Ljava/io/File;
    .restart local v8    # "fi":Ljava/io/InputStream;
    :cond_8e
    :try_start_8e
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 175
    iget-object v10, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v10, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_97} :catch_98
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8e .. :try_end_97} :catch_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_8e .. :try_end_97} :catch_a3
    .catchall {:try_start_8e .. :try_end_97} :catchall_c1

    goto :goto_54

    .line 176
    :catch_98
    move-exception v4

    .line 177
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_99
    const-string v10, "FloatingFeature"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_99 .. :try_end_a2} :catch_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_99 .. :try_end_a2} :catch_a3
    .catchall {:try_start_99 .. :try_end_a2} :catchall_c1

    goto :goto_54

    .line 197
    .end local v4    # "ex":Ljava/lang/Exception;
    :catch_a3
    move-exception v2

    move-object v7, v8

    .line 198
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "featureXmlFile":Ljava/io/File;
    .end local v8    # "fi":Ljava/io/InputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v7    # "fi":Ljava/io/InputStream;
    :goto_a5
    :try_start_a5
    const-string v10, "FloatingFeature"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catchall {:try_start_a5 .. :try_end_ae} :catchall_110

    .line 201
    if-eqz v7, :cond_26

    .line 202
    :try_start_b0
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_f9

    .line 203
    const/4 v7, 0x0

    goto/16 :goto_26

    .line 184
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "fi":Ljava/io/InputStream;
    .restart local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "featureXmlFile":Ljava/io/File;
    .restart local v8    # "fi":Ljava/io/InputStream;
    :catch_b6
    move-exception v2

    .line 185
    .local v2, "e":Ljava/io/IOException;
    :try_start_b7
    const-string v10, "FloatingFeature"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b7 .. :try_end_c0} :catch_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_b7 .. :try_end_c0} :catch_a3
    .catchall {:try_start_b7 .. :try_end_c0} :catchall_c1

    goto :goto_4b

    .line 200
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_c1
    move-exception v10

    move-object v7, v8

    .line 201
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "featureXmlFile":Ljava/io/File;
    .end local v8    # "fi":Ljava/io/InputStream;
    .restart local v7    # "fi":Ljava/io/InputStream;
    :goto_c3
    if-eqz v7, :cond_c9

    .line 202
    :try_start_c5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_105

    .line 203
    const/4 v7, 0x0

    .line 207
    :cond_c9
    :goto_c9
    throw v10

    .line 190
    .end local v7    # "fi":Ljava/io/InputStream;
    .restart local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "featureXmlFile":Ljava/io/File;
    .restart local v8    # "fi":Ljava/io/InputStream;
    :cond_ca
    :try_start_ca
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_d5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ca .. :try_end_cd} :catch_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_ca .. :try_end_cd} :catch_a3
    .catchall {:try_start_ca .. :try_end_cd} :catchall_c1

    .line 201
    :goto_cd
    if-eqz v8, :cond_117

    .line 202
    :try_start_cf
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_e0

    .line 203
    const/4 v7, 0x0

    .end local v8    # "fi":Ljava/io/InputStream;
    .restart local v7    # "fi":Ljava/io/InputStream;
    goto/16 :goto_26

    .line 191
    .end local v7    # "fi":Ljava/io/InputStream;
    .restart local v8    # "fi":Ljava/io/InputStream;
    :catch_d5
    move-exception v2

    .line 192
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_d6
    const-string v10, "FloatingFeature"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_df
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d6 .. :try_end_df} :catch_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_d6 .. :try_end_df} :catch_a3
    .catchall {:try_start_d6 .. :try_end_df} :catchall_c1

    goto :goto_cd

    .line 205
    .end local v2    # "e":Ljava/io/IOException;
    :catch_e0
    move-exception v2

    .line 206
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "FloatingFeature"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 208
    .end local v8    # "fi":Ljava/io/InputStream;
    .restart local v7    # "fi":Ljava/io/InputStream;
    goto/16 :goto_26

    .line 205
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "featureXmlFile":Ljava/io/File;
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_ed
    move-exception v2

    .line 206
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "FloatingFeature"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 205
    .local v2, "e":Ljava/io/FileNotFoundException;
    :catch_f9
    move-exception v2

    .line 206
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "FloatingFeature"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 205
    .end local v2    # "e":Ljava/io/IOException;
    :catch_105
    move-exception v2

    .line 206
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v11, "FloatingFeature"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c9

    .line 200
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_110
    move-exception v10

    goto :goto_c3

    .line 197
    :catch_112
    move-exception v2

    goto :goto_a5

    .line 195
    :catch_114
    move-exception v2

    goto/16 :goto_7e

    .end local v7    # "fi":Ljava/io/InputStream;
    .restart local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "featureXmlFile":Ljava/io/File;
    .restart local v8    # "fi":Ljava/io/InputStream;
    :cond_117
    move-object v7, v8

    .end local v8    # "fi":Ljava/io/InputStream;
    .restart local v7    # "fi":Ljava/io/InputStream;
    goto/16 :goto_26
.end method


# virtual methods
.method public getEnableStatus(Ljava/lang/String;)Z
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 65
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 66
    iget-object v1, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_18

    move-result v1

    .line 71
    :goto_15
    return v1

    :cond_16
    move v1, v2

    .line 68
    goto :goto_15

    .line 70
    :catch_18
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v1, v2

    .line 71
    goto :goto_15
.end method

.method public getEnableStatus(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 78
    iget-object v1, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result p2

    .line 83
    .end local p2    # "defaultValue":Z
    :cond_14
    :goto_14
    return p2

    .line 82
    .restart local p2    # "defaultValue":Z
    :catch_15
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_14
.end method

.method public getInteger(Ljava/lang/String;)I
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 113
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 114
    iget-object v1, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_18

    move-result v1

    .line 119
    :goto_15
    return v1

    :cond_16
    move v1, v2

    .line 116
    goto :goto_15

    .line 118
    :catch_18
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v1, v2

    .line 119
    goto :goto_15
.end method

.method public getInteger(Ljava/lang/String;I)I
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 126
    iget-object v1, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result p2

    .line 131
    .end local p2    # "defaultValue":I
    :cond_14
    :goto_14
    return p2

    .line 130
    .restart local p2    # "defaultValue":I
    :catch_15
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_14
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 90
    iget-object v1, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 95
    :goto_10
    return-object v1

    .line 92
    :cond_11
    const-string v1, ""
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_10

    .line 94
    :catch_14
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_10
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 102
    iget-object v1, p0, Lcom/samsung/android/feature/FloatingFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_12

    move-object p2, v1

    .line 107
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_11
    :goto_11
    return-object p2

    .line 106
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :catch_12
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_11
.end method
