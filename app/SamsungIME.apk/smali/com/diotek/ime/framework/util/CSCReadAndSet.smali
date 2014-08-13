.class public Lcom/diotek/ime/framework/util/CSCReadAndSet;
.super Ljava/lang/Object;
.source "CSCReadAndSet.java"


# static fields
.field public static final CSC_LANGUAGE_SEPERATOR:Ljava/lang/String; = "_"

.field public static final CSC_LIST_SEPERATOR:Ljava/lang/String; = ";"

.field private static final CUSTOMER_PATH:Ljava/lang/String; = "/system/csc/"

.field private static final CUSTOMER_XML:Ljava/lang/String; = "customer.xml"

.field public static DEFAULT_ENABLE_LANGUAGE_LIST:Ljava/lang/String; = null

.field private static final LANGUAGE_XML:Ljava/lang/String; = "language.xml"

.field private static final PREFS_PATH:Ljava/lang/String; = "/data/data/com.sec.android.inputmethod/shared_prefs/com.sec.android.inputmethod_preferences.xml"

.field public static final PREF_SAMSUNG_KEYPAD:Ljava/lang/String; = "com.sec.android.inputmethod_preferences"

.field private static final TAG_CUSTOMER_ROOT:Ljava/lang/String; = "Settings"

.field private static final TAG_DA_SELECT_UMLAUT_LANGUAGES:Ljava/lang/String; = "EnableUmlautList"

.field private static final TAG_DA_SUPPORT_UMLAUT_LANGUAGES:Ljava/lang/String; = "SupportUmlautList"

.field private static final TAG_ENABLE_LANG_LIST:Ljava/lang/String; = "EnableList"

.field private static final TAG_INPUT:Ljava/lang/String; = "Input"

.field private static final TAG_KEYPAD_TYPE:Ljava/lang/String; = "KeypadType"

.field private static final TAG_LANGUAGE_ROOT:Ljava/lang/String; = "LanguageSet"

.field private static final TAG_MAIN:Ljava/lang/String; = "Main"

.field private static final TAG_PHONE:Ljava/lang/String; = "Phone"

.field private static final TAG_RECOGNITION_TIME:Ljava/lang/String; = "HWR_RECOGNITION_TIME"

.field private static final TAG_RECOGNITION_TYPE:Ljava/lang/String; = "HWR_RECOGNITION_TYPE"

.field private static final TAG_SUPPORT_HWR_MODE:Ljava/lang/String; = "SUPPORT_HWR_MODE"

.field private static final TAG_SUPPORT_LANG_LIST:Ljava/lang/String; = "SupportList"

.field private static final TAG_USE_AUTO_APPEND:Ljava/lang/String; = "AUTO_APPEND"

.field private static final TAG_USE_AUTO_CAPS:Ljava/lang/String; = "AUTO_CAPITALIZATION"

.field private static final TAG_USE_AUTO_PERIOD:Ljava/lang/String; = "DOUBLESPACE"

.field private static final TAG_USE_AUTO_REPLACEMENT:Ljava/lang/String; = "AutoReplacement"

.field private static final TAG_USE_AUTO_SPACING:Ljava/lang/String; = "AUTO_SPACING"

.field private static final TAG_USE_AUTO_SUBSTITUTION:Ljava/lang/String; = "AUTO_SUBTITUTION"

.field private static final TAG_USE_CHARACTER_PREVIEW:Ljava/lang/String; = "CHARACTER_PREVIEW"

.field private static final TAG_USE_CONTINUOUS_INPUT:Ljava/lang/String; = "ContinuousInput"

.field private static final TAG_USE_HWR:Ljava/lang/String; = "HWR_ENABLED"

.field private static final TAG_USE_KEYPAD_FLICK:Ljava/lang/String; = "KEYPAD_FLICK"

.field private static final TAG_USE_KEYPAD_POINTING:Ljava/lang/String; = "KEYPAD_POINTING"

.field private static final TAG_USE_KEYPAD_SWEEPING:Ljava/lang/String; = "KEYPAD_SWEEPING"

.field private static final TAG_USE_KEYPRESS_HAPTIC:Ljava/lang/String; = "VIBRATE_ON"

.field private static final TAG_USE_KEYPRESS_SOUND:Ljava/lang/String; = "SOUND_ON"

.field private static final TAG_USE_NEXT_WORD_PREDICTION:Ljava/lang/String; = "NEXT_WORD_PREDICTION"

.field private static final TAG_USE_RECAPTURE:Ljava/lang/String; = "RECAPTURE"

.field private static final TAG_USE_REGIONAL_CORRECTION:Ljava/lang/String; = "REGIONAL_CORRECTION"

.field private static final TAG_USE_SPELL_CORRECTION:Ljava/lang/String; = "SPELL_CORRECTION"

.field private static final TAG_USE_VOICE_INPUT:Ljava/lang/String; = "VOICE_INPUT"

.field private static final TAG_USE_WORD_COMPLETION:Ljava/lang/String; = "WORD_COMPLETION"

.field private static final TAG_USE_XT9:Ljava/lang/String; = "T9Enabling"

.field private static final TAG_WORD_COMPLETION_POINT:Ljava/lang/String; = "WORD_COMPLETION_POINT"

.field private static mDoc:Lorg/w3c/dom/Document;

.field private static mNode:Lorg/w3c/dom/Node;

.field private static mRoot:Lorg/w3c/dom/Node;

.field private static sInstance:Lcom/diotek/ime/framework/util/CSCReadAndSet;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCscVal_DaLanguage:Ljava/lang/String;

.field private mCscVal_DaSelectUmlautLanguageList:Ljava/lang/String;

.field private mCscVal_DaSupportUmlautLanguageList:Ljava/lang/String;

.field private mCscVal_EnableLanguageListOnLanguageXml:Ljava/lang/String;

.field private mCscVal_KeypadType:Ljava/lang/String;

.field private mCscVal_RecognitionTime:Ljava/lang/String;

.field private mCscVal_RecognitionType:Ljava/lang/String;

.field private mCscVal_SupportLanguageListOnLanguageXml:Ljava/lang/String;

.field private mCscVal_WordCompletionPoint:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->sInstance:Lcom/diotek/ime/framework/util/CSCReadAndSet;

    .line 121
    const-string v0, ""

    sput-object v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->DEFAULT_ENABLE_LANGUAGE_LIST:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    return-void
.end method

.method public static getCustomerPref()Z
    .locals 4

    .prologue
    .line 288
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.sec.android.inputmethod/shared_prefs/com.sec.android.inputmethod_preferences.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .local v1, "filePrefs":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    :cond_0
    const/4 v2, 0x1

    .line 299
    :goto_0
    return v2

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "ex":Ljava/lang/Exception;
    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v2, :cond_1

    .line 295
    const-string v2, "SamsungIME"

    const-string v3, "Preference file doesn\'t exist."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lcom/diotek/ime/framework/util/CSCReadAndSet;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 129
    const-class v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->sInstance:Lcom/diotek/ime/framework/util/CSCReadAndSet;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;

    invoke-direct {v0}, Lcom/diotek/ime/framework/util/CSCReadAndSet;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->sInstance:Lcom/diotek/ime/framework/util/CSCReadAndSet;

    .line 133
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->sInstance:Lcom/diotek/ime/framework/util/CSCReadAndSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 8
    .param p1, "parent"    # Lorg/w3c/dom/Node;
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 200
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v0, v4

    .line 223
    :cond_1
    :goto_0
    return-object v0

    .line 204
    :cond_2
    sget-boolean v5, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v5, :cond_3

    .line 205
    const-string v5, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Node getTagNode(Node parent, String tagName)  tagName =["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 209
    .local v1, "children":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_6

    .line 210
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 211
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 212
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 213
    .local v0, "child":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_5

    .line 214
    sget-boolean v5, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v5, :cond_4

    .line 215
    const-string v5, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "          ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_4
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 211
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_6
    move-object v0, v4

    .line 223
    goto :goto_0
.end method

.method private getTagValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "tagFullName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 227
    if-eqz p1, :cond_0

    sget-object v3, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mNode:Lorg/w3c/dom/Node;

    if-nez v3, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-object v2

    .line 231
    :cond_1
    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v3, :cond_2

    .line 232
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "String getTagValue(String tagFullName)  tagFullName =["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_2
    sget-object v3, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mNode:Lorg/w3c/dom/Node;

    invoke-direct {p0, v3, p1}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 237
    .local v1, "node":Lorg/w3c/dom/Node;
    if-eqz v1, :cond_0

    .line 238
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 239
    .local v0, "firstChild":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    .line 240
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getTagValueReturnBoolean(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "tagFullName"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 248
    if-nez p1, :cond_1

    .line 249
    const/4 v1, 0x0

    .line 266
    :cond_0
    :goto_0
    return v1

    .line 252
    :cond_1
    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v2, :cond_2

    .line 253
    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "boolean getTagValueReturnBoolean(String tagFullName, boolean defValue)  tagFullName =["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]  defValue = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_2
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "tagValue":Ljava/lang/String;
    move v1, p2

    .line 261
    .local v1, "value":Z
    const-string v2, "enable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 262
    const/4 v1, 0x1

    goto :goto_0

    .line 263
    :cond_3
    const-string v2, "disable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "tagFullName"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 270
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 271
    :cond_0
    const/4 p2, 0x0

    .line 283
    .end local p2    # "defValue":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p2

    .line 274
    .restart local p2    # "defValue":Ljava/lang/String;
    :cond_2
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v1, :cond_3

    .line 275
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boolean getTagValueReturnString(String tagFullName, String defValue)  tagFullName =["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]  defValue = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_3
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "tagValue":Ljava/lang/String;
    if-eqz v0, :cond_1

    move-object p2, v0

    .line 283
    goto :goto_0
.end method

.method private loadXMLFile(Ljava/lang/String;)V
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 138
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 139
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 140
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/system/csc/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v7

    sput-object v7, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mDoc:Lorg/w3c/dom/Document;

    .line 141
    sget-object v7, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mDoc:Lorg/w3c/dom/Document;

    if-nez v7, :cond_1

    .line 197
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_0
    :goto_0
    return-void

    .line 144
    .restart local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_1
    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v7, :cond_2

    .line 145
    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mDoc\'s name = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v9}, Lorg/w3c/dom/Document;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_2
    sget-object v7, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    sput-object v7, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mRoot:Lorg/w3c/dom/Node;

    .line 149
    sget-object v7, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mRoot:Lorg/w3c/dom/Node;

    if-eqz v7, :cond_0

    .line 152
    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v7, :cond_3

    .line 153
    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mRoot\'s name = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mRoot:Lorg/w3c/dom/Node;

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_3
    const/4 v7, 0x3

    new-array v1, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Settings"

    aput-object v8, v1, v7

    const/4 v7, 0x1

    const-string v8, "Main"

    aput-object v8, v1, v7

    const/4 v7, 0x2

    const-string v8, "Phone"

    aput-object v8, v1, v7

    .line 159
    .local v1, "customerTagList":[Ljava/lang/String;
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "LanguageSet"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "Input"

    aput-object v8, v4, v7

    .line 165
    .local v4, "languageTagList":[Ljava/lang/String;
    const-string v7, "customer.xml"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 166
    move-object v6, v1

    .line 171
    .local v6, "tagList":[Ljava/lang/String;
    :goto_1
    sget-object v7, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mRoot:Lorg/w3c/dom/Node;

    sput-object v7, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mNode:Lorg/w3c/dom/Node;

    .line 173
    const/4 v5, 0x0

    .local v5, "tagIndex":I
    :goto_2
    array-length v7, v6

    if-ge v5, v7, :cond_6

    .line 174
    sget-object v7, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mNode:Lorg/w3c/dom/Node;

    aget-object v8, v6, v5

    invoke-direct {p0, v7, v8}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    sput-object v7, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mNode:Lorg/w3c/dom/Node;

    .line 175
    sget-object v7, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mNode:Lorg/w3c/dom/Node;

    if-nez v7, :cond_5

    .line 176
    const-string v7, "SamsungIME"

    const-string v8, "loadXMLFile() : null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 184
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "customerTagList":[Ljava/lang/String;
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "languageTagList":[Ljava/lang/String;
    .end local v5    # "tagIndex":I
    .end local v6    # "tagList":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 185
    .local v2, "ex":Ljavax/xml/parsers/ParserConfigurationException;
    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v7, :cond_0

    .line 186
    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ParserConfigurationException:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 168
    .end local v2    # "ex":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "customerTagList":[Ljava/lang/String;
    .restart local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4    # "languageTagList":[Ljava/lang/String;
    :cond_4
    move-object v6, v4

    .restart local v6    # "tagList":[Ljava/lang/String;
    goto :goto_1

    .line 173
    .restart local v5    # "tagIndex":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 181
    :cond_6
    :try_start_1
    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v7, :cond_0

    .line 182
    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mNode\'s name = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mNode:Lorg/w3c/dom/Node;

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 188
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "customerTagList":[Ljava/lang/String;
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "languageTagList":[Ljava/lang/String;
    .end local v5    # "tagIndex":I
    .end local v6    # "tagList":[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 189
    .local v2, "ex":Lorg/xml/sax/SAXException;
    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v7, :cond_0

    .line 190
    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SAXException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 192
    .end local v2    # "ex":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v2

    .line 193
    .local v2, "ex":Ljava/io/IOException;
    sget-boolean v7, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v7, :cond_0

    .line 194
    const-string v7, "SamsungIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " But, This is normal operation. That\'s OK. :)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public setCustomerCSC(Landroid/content/Context;Z)V
    .locals 34
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "force"    # Z

    .prologue
    .line 310
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mContext:Landroid/content/Context;

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string v31, "com.sec.android.inputmethod_preferences"

    const/16 v32, 0x3

    invoke-virtual/range {v30 .. v32}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 315
    .local v23, "sPrefs":Landroid/content/SharedPreferences;
    if-nez v23, :cond_1

    .line 316
    sget-boolean v30, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v30, :cond_0

    .line 317
    const-string v30, "SamsungIME"

    const-string v31, "getSharedPreferences() error"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 323
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez v6, :cond_2

    .line 324
    sget-boolean v30, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v30, :cond_0

    .line 325
    const-string v30, "SamsungIME"

    const-string v31, "edit() error"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    :cond_2
    const/4 v12, 0x0

    .line 332
    .local v12, "isEditorHasToCommit":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v30

    const-string v31, "CscFeature_Sip_DisableMultiInputLanuage"

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    .line 333
    .local v11, "isDaMode":Z
    const-string v30, "da_mode"

    move-object/from16 v0, v30

    invoke-interface {v6, v0, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 334
    const/4 v12, 0x1

    .line 337
    const-string v30, "language.xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->loadXMLFile(Ljava/lang/String;)V

    .line 339
    const-string v30, "SupportList"

    const-string v31, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 340
    .local v22, "resultTagValueString":Ljava/lang/String;
    const/16 v27, 0x0

    .line 341
    .local v27, "tempString1":Ljava/lang/String;
    const/16 v28, 0x0

    .line 342
    .local v28, "tempString2":Ljava/lang/String;
    if-eqz v22, :cond_3

    .line 343
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    .line 345
    :cond_3
    const-string v30, "SupportList"

    const-string v31, "EN_GB"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 346
    if-eqz v22, :cond_4

    .line 347
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    .line 349
    :cond_4
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_d

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_d

    .line 351
    if-eqz v11, :cond_c

    .line 352
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaLanguage:Ljava/lang/String;

    .line 366
    :cond_5
    :goto_1
    const-string v30, "EnableList"

    const-string v31, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .line 367
    if-eqz v22, :cond_6

    .line 368
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    .line 370
    :cond_6
    const-string v30, "EnableList"

    const-string v31, "EN_GB"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .line 371
    if-eqz v22, :cond_7

    .line 372
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    .line 374
    :cond_7
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_8

    if-nez v11, :cond_8

    .line 376
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_EnableLanguageListOnLanguageXml:Ljava/lang/String;

    .line 379
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_SupportLanguageListOnLanguageXml:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_f

    .line 380
    const-string v30, "support_languages"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_SupportLanguageListOnLanguageXml:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 381
    const/4 v12, 0x1

    .line 382
    new-instance v24, Ljava/util/StringTokenizer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_SupportLanguageListOnLanguageXml:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, ";"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .local v24, "supportLangStringTokenizer":Ljava/util/StringTokenizer;
    :cond_9
    :goto_2
    invoke-virtual/range {v24 .. v24}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v30

    if-eqz v30, :cond_f

    .line 385
    invoke-virtual/range {v24 .. v24}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v29

    .line 386
    .local v29, "token":Ljava/lang/String;
    if-eqz v29, :cond_9

    .line 387
    const-string v30, "_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 388
    .local v10, "index":I
    const/16 v30, -0x1

    move/from16 v0, v30

    if-eq v10, v0, :cond_e

    .line 389
    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 390
    .local v16, "language":Ljava/lang/String;
    add-int/lit8 v30, v10, 0x1

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v31

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 391
    .local v18, "locale":Ljava/lang/String;
    if-eqz v16, :cond_a

    .line 392
    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    .line 394
    :cond_a
    if-eqz v18, :cond_b

    .line 395
    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    .line 397
    :cond_b
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 398
    .local v17, "languageId":I
    const-string v30, "0x%08x"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 399
    .local v13, "key":Ljava/lang/String;
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v6, v13, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 400
    const/4 v12, 0x1

    .line 401
    goto :goto_2

    .line 354
    .end local v10    # "index":I
    .end local v13    # "key":Ljava/lang/String;
    .end local v16    # "language":Ljava/lang/String;
    .end local v17    # "languageId":I
    .end local v18    # "locale":Ljava/lang/String;
    .end local v24    # "supportLangStringTokenizer":Ljava/util/StringTokenizer;
    .end local v29    # "token":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_SupportLanguageListOnLanguageXml:Ljava/lang/String;

    goto/16 :goto_1

    .line 356
    :cond_d
    if-eqz p2, :cond_5

    .line 357
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v19

    .line 358
    .local v19, "manager":Lcom/diotek/ime/framework/common/InputManager;
    if-eqz v19, :cond_5

    .line 359
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getDefaultSupportLanguages()Ljava/lang/String;

    move-result-object v5

    .line 360
    .local v5, "defaultSupportlanguage":Ljava/lang/String;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_5

    .line 361
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_SupportLanguageListOnLanguageXml:Ljava/lang/String;

    goto/16 :goto_1

    .line 402
    .end local v5    # "defaultSupportlanguage":Ljava/lang/String;
    .end local v19    # "manager":Lcom/diotek/ime/framework/common/InputManager;
    .restart local v10    # "index":I
    .restart local v24    # "supportLangStringTokenizer":Ljava/util/StringTokenizer;
    .restart local v29    # "token":Ljava/lang/String;
    :cond_e
    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v29

    .line 403
    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 404
    .local v15, "languadeId":I
    const-string v30, "0x%08x"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 405
    .restart local v13    # "key":Ljava/lang/String;
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v6, v13, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 406
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 412
    .end local v10    # "index":I
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "languadeId":I
    .end local v24    # "supportLangStringTokenizer":Ljava/util/StringTokenizer;
    .end local v29    # "token":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_EnableLanguageListOnLanguageXml:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_16

    .line 413
    new-instance v9, Ljava/util/StringTokenizer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_EnableLanguageListOnLanguageXml:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, ";"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v9, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .local v9, "enableLangStringTokenizer":Ljava/util/StringTokenizer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .local v7, "enableLangList":Ljava/lang/StringBuilder;
    :cond_10
    :goto_3
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v30

    if-eqz v30, :cond_15

    .line 416
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v29

    .line 417
    .restart local v29    # "token":Ljava/lang/String;
    if-eqz v29, :cond_10

    .line 418
    const-string v30, "_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 419
    .restart local v10    # "index":I
    const/16 v30, -0x1

    move/from16 v0, v30

    if-eq v10, v0, :cond_13

    .line 420
    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 422
    .restart local v16    # "language":Ljava/lang/String;
    add-int/lit8 v30, v10, 0x1

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v31

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 423
    .restart local v18    # "locale":Ljava/lang/String;
    if-eqz v16, :cond_11

    .line 424
    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    .line 426
    :cond_11
    if-eqz v18, :cond_12

    .line 427
    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    .line 429
    :cond_12
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 430
    .restart local v15    # "languadeId":I
    const-string v30, "0x%08x"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 431
    .restart local v13    # "key":Ljava/lang/String;
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-interface {v6, v13, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 432
    const/4 v12, 0x1

    .line 446
    .end local v16    # "language":Ljava/lang/String;
    .end local v18    # "locale":Ljava/lang/String;
    :goto_4
    const-string v30, ";"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 434
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "languadeId":I
    :cond_13
    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v29

    .line 435
    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 436
    .restart local v15    # "languadeId":I
    const-string v30, "0x%08x"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 437
    .restart local v13    # "key":Ljava/lang/String;
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-interface {v6, v13, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 438
    const/4 v12, 0x1

    .line 439
    const-string v30, "iw"

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_14

    .line 440
    const-string v29, "he"

    .line 442
    :cond_14
    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    const-string v30, "_"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-static/range {v29 .. v29}, Lcom/diotek/ime/framework/common/LanguageID;->getCountryCodeOfLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 449
    .end local v10    # "index":I
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "languadeId":I
    .end local v29    # "token":Ljava/lang/String;
    :cond_15
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    sput-object v30, Lcom/diotek/ime/framework/util/CSCReadAndSet;->DEFAULT_ENABLE_LANGUAGE_LIST:Ljava/lang/String;

    .line 450
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "handwriting_language_list"

    sget-object v32, Lcom/diotek/ime/framework/util/CSCReadAndSet;->DEFAULT_ENABLE_LANGUAGE_LIST:Ljava/lang/String;

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 453
    .end local v7    # "enableLangList":Ljava/lang/StringBuilder;
    .end local v9    # "enableLangStringTokenizer":Ljava/util/StringTokenizer;
    :cond_16
    if-eqz v11, :cond_2a

    .line 454
    const-string v30, "SupportUmlautList"

    const-string v31, "DE"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 455
    if-eqz v22, :cond_17

    .line 456
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    .line 458
    :cond_17
    const-string v30, "SupportUmlautList"

    const-string v31, "EN_GB"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 459
    if-eqz v22, :cond_18

    .line 460
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    .line 462
    :cond_18
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_19

    .line 463
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSupportUmlautLanguageList:Ljava/lang/String;

    .line 465
    :cond_19
    const-string v30, "EnableUmlautList"

    const-string v31, "DE"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 466
    if-eqz v22, :cond_1a

    .line 467
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    .line 469
    :cond_1a
    const-string v30, "EnableUmlautList"

    const-string v31, "EN_GB"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 470
    if-eqz v22, :cond_1b

    .line 471
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    .line 474
    :cond_1b
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1c

    .line 475
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSelectUmlautLanguageList:Ljava/lang/String;

    .line 478
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaLanguage:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1f

    .line 479
    new-instance v3, Ljava/util/StringTokenizer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaLanguage:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, ";"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v3, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    .local v3, "LanguageStringTokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v30

    if-eqz v30, :cond_1f

    .line 481
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v29

    .line 482
    .restart local v29    # "token":Ljava/lang/String;
    if-eqz v29, :cond_1f

    .line 483
    const-string v30, "_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 484
    .restart local v10    # "index":I
    const/16 v30, -0x1

    move/from16 v0, v30

    if-eq v10, v0, :cond_23

    .line 485
    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 486
    .restart local v16    # "language":Ljava/lang/String;
    add-int/lit8 v30, v10, 0x1

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v31

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 487
    .restart local v18    # "locale":Ljava/lang/String;
    if-eqz v16, :cond_1d

    .line 488
    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    .line 490
    :cond_1d
    if-eqz v18, :cond_1e

    .line 491
    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    .line 493
    :cond_1e
    const-string v30, "da_language"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 494
    const/4 v12, 0x1

    .line 495
    const-string v30, "language.xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->loadXMLFile(Ljava/lang/String;)V

    .line 505
    .end local v3    # "LanguageStringTokenizer":Ljava/util/StringTokenizer;
    .end local v10    # "index":I
    .end local v16    # "language":Ljava/lang/String;
    .end local v18    # "locale":Ljava/lang/String;
    .end local v29    # "token":Ljava/lang/String;
    :cond_1f
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSupportUmlautLanguageList:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_25

    .line 506
    const-string v30, "SamsungIME"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "mCscVal_DaSupportUmlautLanguageList : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSupportUmlautLanguageList:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const-string v30, "support_languages"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSupportUmlautLanguageList:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 508
    const/4 v12, 0x1

    .line 509
    new-instance v4, Ljava/util/StringTokenizer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSupportUmlautLanguageList:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, ";"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v4, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    .local v4, "SupportUmlautLanguageStringTokenizer":Ljava/util/StringTokenizer;
    :cond_20
    :goto_6
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v30

    if-eqz v30, :cond_25

    .line 512
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v29

    .line 513
    .restart local v29    # "token":Ljava/lang/String;
    if-eqz v29, :cond_20

    .line 514
    const-string v30, "_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 515
    .restart local v10    # "index":I
    const/16 v30, -0x1

    move/from16 v0, v30

    if-eq v10, v0, :cond_24

    .line 516
    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 517
    .restart local v16    # "language":Ljava/lang/String;
    add-int/lit8 v30, v10, 0x1

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v31

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 518
    .restart local v18    # "locale":Ljava/lang/String;
    if-eqz v16, :cond_21

    .line 519
    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    .line 521
    :cond_21
    if-eqz v18, :cond_22

    .line 522
    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    .line 524
    :cond_22
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 525
    .restart local v15    # "languadeId":I
    const-string v30, "0x%08x"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 526
    .restart local v13    # "key":Ljava/lang/String;
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v6, v13, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 527
    const/4 v12, 0x1

    .line 528
    goto :goto_6

    .line 497
    .end local v4    # "SupportUmlautLanguageStringTokenizer":Ljava/util/StringTokenizer;
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "languadeId":I
    .end local v16    # "language":Ljava/lang/String;
    .end local v18    # "locale":Ljava/lang/String;
    .restart local v3    # "LanguageStringTokenizer":Ljava/util/StringTokenizer;
    :cond_23
    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v29

    .line 498
    const-string v30, "da_language"

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 499
    const/4 v12, 0x1

    goto/16 :goto_5

    .line 529
    .end local v3    # "LanguageStringTokenizer":Ljava/util/StringTokenizer;
    .restart local v4    # "SupportUmlautLanguageStringTokenizer":Ljava/util/StringTokenizer;
    :cond_24
    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v29

    .line 530
    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 531
    .restart local v15    # "languadeId":I
    const-string v30, "0x%08x"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 532
    .restart local v13    # "key":Ljava/lang/String;
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v6, v13, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 533
    const/4 v12, 0x1

    goto/16 :goto_6

    .line 539
    .end local v4    # "SupportUmlautLanguageStringTokenizer":Ljava/util/StringTokenizer;
    .end local v10    # "index":I
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "languadeId":I
    .end local v29    # "token":Ljava/lang/String;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSelectUmlautLanguageList:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2a

    .line 540
    const-string v30, "SamsungIME"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "mCscVal_DaSelectUmlautLanguageList : "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSelectUmlautLanguageList:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    new-instance v9, Ljava/util/StringTokenizer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSelectUmlautLanguageList:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, ";"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v9, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    .restart local v9    # "enableLangStringTokenizer":Ljava/util/StringTokenizer;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .local v8, "enableLangList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_26
    :goto_7
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v30

    if-eqz v30, :cond_2a

    .line 545
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v29

    .line 546
    .restart local v29    # "token":Ljava/lang/String;
    if-eqz v29, :cond_26

    .line 547
    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    const-string v30, "_"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 549
    .restart local v10    # "index":I
    const/16 v30, -0x1

    move/from16 v0, v30

    if-eq v10, v0, :cond_29

    .line 550
    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 551
    .restart local v16    # "language":Ljava/lang/String;
    add-int/lit8 v30, v10, 0x1

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v31

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 552
    .restart local v18    # "locale":Ljava/lang/String;
    if-eqz v16, :cond_27

    .line 553
    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    .line 555
    :cond_27
    if-eqz v18, :cond_28

    .line 556
    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    .line 558
    :cond_28
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 559
    .restart local v15    # "languadeId":I
    const-string v30, "0x%08x"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 560
    .restart local v13    # "key":Ljava/lang/String;
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-interface {v6, v13, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 561
    const/4 v12, 0x1

    .line 562
    goto :goto_7

    .line 563
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "languadeId":I
    .end local v16    # "language":Ljava/lang/String;
    .end local v18    # "locale":Ljava/lang/String;
    :cond_29
    sget-object v30, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v29

    .line 564
    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 565
    .restart local v15    # "languadeId":I
    const-string v30, "0x%08x"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 566
    .restart local v13    # "key":Ljava/lang/String;
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-interface {v6, v13, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 567
    const/4 v12, 0x1

    goto/16 :goto_7

    .line 575
    .end local v8    # "enableLangList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "enableLangStringTokenizer":Ljava/util/StringTokenizer;
    .end local v10    # "index":I
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "languadeId":I
    .end local v29    # "token":Ljava/lang/String;
    :cond_2a
    const-string v30, "customer.xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->loadXMLFile(Ljava/lang/String;)V

    .line 576
    const-string v30, "KeypadType"

    const-string v31, "3X4"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 577
    if-eqz v22, :cond_2b

    .line 578
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    .line 580
    :cond_2b
    const-string v30, "KeypadType"

    const-string v31, "QWERTY"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 581
    if-eqz v22, :cond_2c

    .line 582
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    .line 584
    :cond_2c
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2d

    .line 585
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_KeypadType:Ljava/lang/String;

    .line 587
    :cond_2d
    const-string v30, "WORD_COMPLETION_POINT"

    const-string v31, "2"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 588
    if-eqz v22, :cond_2e

    .line 589
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    .line 591
    :cond_2e
    const-string v30, "WORD_COMPLETION_POINT"

    const-string v31, "3"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 592
    if-eqz v22, :cond_2f

    .line 593
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    .line 595
    :cond_2f
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_30

    .line 596
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_WordCompletionPoint:Ljava/lang/String;

    .line 598
    :cond_30
    const-string v30, "HWR_RECOGNITION_TIME"

    const-string v31, "500ms"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 599
    if-eqz v22, :cond_31

    .line 600
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    .line 602
    :cond_31
    const-string v30, "HWR_RECOGNITION_TIME"

    const-string v31, "200ms"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 603
    if-eqz v22, :cond_32

    .line 604
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    .line 606
    :cond_32
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_33

    .line 607
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    .line 609
    :cond_33
    const-string v30, "HWR_RECOGNITION_TYPE"

    const-string v31, "COMPLETE"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 610
    if-eqz v22, :cond_34

    .line 611
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    .line 613
    :cond_34
    const-string v30, "HWR_RECOGNITION_TYPE"

    const-string v31, "STROKE"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 614
    if-eqz v22, :cond_35

    .line 615
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    .line 617
    :cond_35
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_36

    .line 618
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionType:Ljava/lang/String;

    .line 621
    :cond_36
    const-string v30, "T9Enabling"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 622
    .local v26, "tempBooleanTrue":Z
    const-string v30, "T9Enabling"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 623
    .local v25, "tempBooleanFalse":Z
    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_37

    .line 624
    const-string v30, "SETTINGS_DEFAULT_PREDICTION_ON"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 625
    const-string v30, "SETTINGS_DEFAULT_FOREIGN_PREDICTION_ON"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 626
    const/4 v12, 0x1

    .line 628
    :cond_37
    const-string v30, "HWR_ENABLED"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 629
    const-string v30, "HWR_ENABLED"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 630
    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_38

    .line 631
    const-string v30, "SETTINGS_DEFAULT_HWR_ON"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 632
    const/4 v12, 0x1

    .line 634
    :cond_38
    const-string v30, "KEYPAD_SWEEPING"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 635
    const-string v30, "KEYPAD_SWEEPING"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 636
    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_39

    .line 637
    const-string v30, "SETTINGS_DEFAULT_KEYPAD_SWEEPING"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 638
    const/4 v12, 0x1

    .line 640
    :cond_39
    const-string v30, "KEYPAD_POINTING"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 641
    const-string v30, "KEYPAD_POINTING"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 642
    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_3a

    .line 643
    const-string v30, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 644
    const/4 v12, 0x1

    .line 646
    :cond_3a
    const-string v30, "KEYPAD_FLICK"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 647
    const-string v30, "KEYPAD_FLICK"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 648
    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_3b

    .line 649
    const-string v30, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 650
    const/4 v12, 0x1

    .line 652
    :cond_3b
    const-string v30, "AUTO_CAPITALIZATION"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 653
    const-string v30, "AUTO_CAPITALIZATION"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 654
    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_3c

    .line 655
    const-string v30, "SETTINGS_DEFAULT_AUTO_CAPS"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 656
    const/4 v12, 0x1

    .line 658
    :cond_3c
    const-string v30, "AUTO_SPACING"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 659
    const-string v30, "AUTO_SPACING"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 660
    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_3d

    .line 661
    const-string v30, "SETTINGS_DEFAULT_AUTO_SPACING"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 662
    const/4 v12, 0x1

    .line 664
    :cond_3d
    const-string v30, "VOICE_INPUT"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 665
    const-string v30, "VOICE_INPUT"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 666
    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_3e

    .line 667
    const-string v30, "SETTINGS_DEFAULT_VOICE_INPUT"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 668
    const/4 v12, 0x1

    .line 670
    :cond_3e
    const-string v30, "DOUBLESPACE"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 671
    const-string v30, "DOUBLESPACE"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 672
    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_3f

    .line 673
    const-string v30, "SETTINGS_DEFAULT_AUTO_PERIOD"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 674
    const/4 v12, 0x1

    .line 676
    :cond_3f
    const-string v30, "CHARACTER_PREVIEW"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 677
    const-string v30, "CHARACTER_PREVIEW"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 678
    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_40

    .line 679
    const-string v30, "SETTINGS_DEFAULT_USE_PREVIEW"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 680
    const/4 v12, 0x1

    .line 682
    :cond_40
    const-string v30, "VIBRATE_ON"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 683
    const-string v30, "VIBRATE_ON"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 684
    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_41

    .line 685
    const-string v30, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 686
    const/4 v12, 0x1

    .line 692
    :cond_41
    const-string v30, "SOUND_ON"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 693
    const-string v30, "SOUND_ON"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 694
    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_42

    .line 695
    const-string v30, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 696
    const/4 v12, 0x1

    .line 697
    if-eqz v26, :cond_52

    .line 698
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "sip_key_feedback_sound"

    const/16 v32, 0x1

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 703
    :cond_42
    :goto_8
    const-string v30, "WORD_COMPLETION"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 704
    const-string v30, "WORD_COMPLETION"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 705
    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_43

    .line 706
    const-string v30, "SETTINGS_DEFAULT_WORDCOMPLETION"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 707
    const/4 v12, 0x1

    .line 708
    if-eqz v26, :cond_53

    .line 709
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "sip_key_feedback_vibration"

    const/16 v32, 0x1

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 714
    :cond_43
    :goto_9
    const-string v30, "ContinuousInput"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 715
    const-string v30, "ContinuousInput"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 716
    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_44

    .line 717
    const-string v30, "SETTINGS_DEFAULT_TRACE"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 718
    const/4 v12, 0x1

    .line 720
    :cond_44
    const-string v30, "SPELL_CORRECTION"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 721
    const-string v30, "SPELL_CORRECTION"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 722
    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_45

    .line 723
    const-string v30, "SETTINGS_DEFAULT_SPELLCORRECTION"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 724
    const/4 v12, 0x1

    .line 726
    :cond_45
    const-string v30, "NEXT_WORD_PREDICTION"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 727
    const-string v30, "NEXT_WORD_PREDICTION"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 728
    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_46

    .line 729
    const-string v30, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 730
    const/4 v12, 0x1

    .line 732
    :cond_46
    const-string v30, "AUTO_APPEND"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 733
    const-string v30, "AUTO_APPEND"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 734
    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_47

    .line 735
    const-string v30, "SETTINGS_DEFAULT_AUTOAPPEND"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 736
    const/4 v12, 0x1

    .line 738
    :cond_47
    const-string v30, "AUTO_SUBTITUTION"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 739
    const-string v30, "AUTO_SUBTITUTION"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 740
    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_48

    .line 741
    const-string v30, "SETTINGS_DEFAULT_AUTOSUBSTITUTION"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 742
    const/4 v12, 0x1

    .line 744
    :cond_48
    const-string v30, "REGIONAL_CORRECTION"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 745
    const-string v30, "REGIONAL_CORRECTION"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 746
    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_49

    .line 747
    const-string v30, "SETTINGS_DEFAULT_REGIONALCORRECTION"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 748
    const/4 v12, 0x1

    .line 750
    :cond_49
    const-string v30, "RECAPTURE"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 751
    const-string v30, "RECAPTURE"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 752
    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_4a

    .line 753
    const-string v30, "SETTINGS_DEFAULT_RECAPTURE"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 754
    const/4 v12, 0x1

    .line 757
    :cond_4a
    const-string v30, "SUPPORT_HWR_MODE"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 758
    const-string v30, "SUPPORT_HWR_MODE"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 759
    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_4b

    .line 760
    const-string v30, "support_hwr_mode"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 761
    const/4 v12, 0x1

    .line 763
    :cond_4b
    const-string v30, "NONE"

    const-string v31, "VOHWRPANEL"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_4c

    .line 764
    const-string v30, "support_hwr_mode"

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 765
    const/4 v12, 0x1

    .line 770
    :cond_4c
    const-string v30, "AutoReplacement"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 771
    const-string v30, "AutoReplacement"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 772
    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_4d

    .line 773
    const-string v30, "SETTINGS_DEFAULT_AUTO_CORRECTION"

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 774
    const/4 v12, 0x1

    .line 780
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_KeypadType:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_4e

    .line 781
    const-string v14, ""

    .line 782
    .local v14, "keypadType":Ljava/lang/String;
    const-string v30, "QWERTY"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_KeypadType:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_54

    .line 783
    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 791
    :goto_a
    const-string v30, "SETTINGS_DEFAULT_KEYPAD_TYPE"

    move-object/from16 v0, v30

    invoke-interface {v6, v0, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 792
    const/4 v12, 0x1

    .line 795
    .end local v14    # "keypadType":Ljava/lang/String;
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_WordCompletionPoint:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_4f

    .line 796
    const-string v30, "SETTINGS_DEFAULT_WORDCOMPLETIONPOINT"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_WordCompletionPoint:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 799
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_50

    .line 800
    const-string v20, ""

    .line 801
    .local v20, "recognitionTime":Ljava/lang/String;
    const-string v30, "100ms"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_57

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    add-int/lit8 v32, v32, -0x2

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 814
    :goto_b
    const-string v30, "SETTINGS_DEFAULT_HWR_RECOGNIZE_DELAY"

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 815
    const/4 v12, 0x1

    .line 818
    .end local v20    # "recognitionTime":Ljava/lang/String;
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionType:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_51

    .line 819
    const-string v21, ""

    .line 820
    .local v21, "recognitionType":Ljava/lang/String;
    const-string v30, "COMPLETE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionType:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_5c

    .line 821
    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    .line 827
    :goto_c
    const-string v30, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 828
    const/4 v12, 0x1

    .line 833
    .end local v21    # "recognitionType":Ljava/lang/String;
    :cond_51
    if-nez v12, :cond_5e

    .line 834
    sget-boolean v30, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v30, :cond_0

    .line 835
    const-string v30, "SamsungIME"

    const-string v31, "editor has nothing to commit."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 700
    :cond_52
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "sip_key_feedback_sound"

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    .line 711
    :cond_53
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "sip_key_feedback_vibration"

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 784
    .restart local v14    # "keypadType":Ljava/lang/String;
    :cond_54
    const-string v30, "3X4"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_KeypadType:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_55

    .line 785
    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_a

    .line 786
    :cond_55
    const-string v30, "HWR"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_KeypadType:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_56

    .line 787
    const/16 v30, 0x2

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_a

    .line 789
    :cond_56
    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_a

    .line 803
    .end local v14    # "keypadType":Ljava/lang/String;
    .restart local v20    # "recognitionTime":Ljava/lang/String;
    :cond_57
    const-string v30, "300ms"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_58

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    add-int/lit8 v32, v32, -0x2

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_b

    .line 805
    :cond_58
    const-string v30, "500ms"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_59

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    add-int/lit8 v32, v32, -0x2

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_b

    .line 807
    :cond_59
    const-string v30, "1000ms"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_5a

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    add-int/lit8 v32, v32, -0x2

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_b

    .line 809
    :cond_5a
    const-string v30, "2000ms"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_5b

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    add-int/lit8 v32, v32, -0x2

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_b

    .line 812
    :cond_5b
    const-string v20, "500"

    goto/16 :goto_b

    .line 822
    .end local v20    # "recognitionTime":Ljava/lang/String;
    .restart local v21    # "recognitionType":Ljava/lang/String;
    :cond_5c
    const-string v30, "STROKE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_RecognitionTime:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_5d

    .line 823
    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_c

    .line 825
    :cond_5d
    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_c

    .line 837
    .end local v21    # "recognitionType":Ljava/lang/String;
    :cond_5e
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_5f

    .line 838
    sget-boolean v30, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v30, :cond_0

    .line 839
    const-string v30, "SamsungIME"

    const-string v31, "commit() success"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 842
    :cond_5f
    sget-boolean v30, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v30, :cond_0

    .line 843
    const-string v30, "SamsungIME"

    const-string v31, "commit() fail"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setSupportLanguageFromCustomerCSC(Landroid/content/Context;Z)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "force"    # Z

    .prologue
    .line 849
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mContext:Landroid/content/Context;

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "com.sec.android.inputmethod_preferences"

    const/16 v23, 0x3

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 853
    .local v15, "sPrefs":Landroid/content/SharedPreferences;
    if-nez v15, :cond_1

    .line 854
    sget-boolean v21, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v21, :cond_0

    .line 855
    const-string v21, "SamsungIME"

    const-string v22, "getSharedPreferences() error"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_0
    :goto_0
    return-void

    .line 860
    :cond_1
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 861
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez v5, :cond_2

    .line 862
    sget-boolean v21, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v21, :cond_0

    .line 863
    const-string v21, "SamsungIME"

    const-string v22, "edit() error"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 868
    :cond_2
    const-string v21, "support_languages"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 869
    .local v17, "tempString":Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 872
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    .line 874
    .local v13, "prevSupportlanguage":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v21

    const-string v22, "CscFeature_Sip_DisableMultiInputLanuage"

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    .line 875
    .local v7, "isDaMode":Z
    const-string v21, "da_mode"

    move-object/from16 v0, v21

    invoke-interface {v5, v0, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 878
    const-string v21, "language.xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->loadXMLFile(Ljava/lang/String;)V

    .line 880
    const-string v18, ""

    .line 881
    .local v18, "tempString1":Ljava/lang/String;
    const-string v19, ""

    .line 883
    .local v19, "tempString2":Ljava/lang/String;
    const-string v21, "SupportList"

    const-string v22, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 884
    .local v14, "resultTagValueString":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 885
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 887
    :cond_3
    const-string v21, "SupportList"

    const-string v22, "EN_GB"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 888
    if-eqz v14, :cond_4

    .line 889
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 892
    :cond_4
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_7

    .line 894
    if-eqz v7, :cond_6

    .line 895
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaLanguage:Ljava/lang/String;

    .line 905
    :cond_5
    :goto_1
    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_SupportLanguageListOnLanguageXml:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 906
    sget-boolean v21, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v21, :cond_0

    .line 907
    const-string v21, "SamsungIME"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "prevSupportLanguage = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 897
    :cond_6
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_SupportLanguageListOnLanguageXml:Ljava/lang/String;

    goto :goto_1

    .line 899
    :cond_7
    if-eqz p2, :cond_5

    .line 900
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_5

    .line 901
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_SupportLanguageListOnLanguageXml:Ljava/lang/String;

    goto :goto_1

    .line 912
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_SupportLanguageListOnLanguageXml:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    .line 913
    const-string v21, "support_languages"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_SupportLanguageListOnLanguageXml:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 915
    new-instance v16, Ljava/util/StringTokenizer;

    const-string v21, ";"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v13, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    .local v16, "supportLangStringTokenizer":Ljava/util/StringTokenizer;
    :cond_9
    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v21

    if-eqz v21, :cond_d

    .line 918
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    .line 920
    .local v20, "token":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_SupportLanguageListOnLanguageXml:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 924
    if-eqz v20, :cond_9

    .line 925
    const-string v21, "_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 926
    .local v6, "index":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v6, v0, :cond_c

    .line 927
    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 928
    .local v10, "language":Ljava/lang/String;
    add-int/lit8 v21, v6, 0x1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 930
    .local v12, "locale":Ljava/lang/String;
    if-eqz v10, :cond_a

    .line 931
    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 933
    :cond_a
    if-eqz v12, :cond_b

    .line 934
    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 937
    :cond_b
    invoke-static {v10, v12}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 938
    .local v11, "languageId":I
    const-string v21, "0x%08x"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 939
    .local v8, "key":Ljava/lang/String;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v5, v8, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 942
    .end local v8    # "key":Ljava/lang/String;
    .end local v10    # "language":Ljava/lang/String;
    .end local v11    # "languageId":I
    .end local v12    # "locale":Ljava/lang/String;
    :cond_c
    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    .line 943
    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 944
    .local v9, "languadeId":I
    const-string v21, "0x%08x"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 945
    .restart local v8    # "key":Ljava/lang/String;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v5, v8, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    .line 950
    .end local v6    # "index":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "languadeId":I
    .end local v16    # "supportLangStringTokenizer":Ljava/util/StringTokenizer;
    .end local v20    # "token":Ljava/lang/String;
    :cond_d
    if-eqz v7, :cond_1c

    .line 951
    const-string v21, "SupportUmlautList"

    const-string v22, "DE"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 952
    if-eqz v14, :cond_e

    .line 953
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 955
    :cond_e
    const-string v21, "SupportUmlautList"

    const-string v22, "EN_GB"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 956
    if-eqz v14, :cond_f

    .line 957
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 959
    :cond_f
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 960
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSupportUmlautLanguageList:Ljava/lang/String;

    .line 963
    :cond_10
    const-string v21, "EnableUmlautList"

    const-string v22, "DE"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 964
    if-eqz v14, :cond_11

    .line 965
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 967
    :cond_11
    const-string v21, "EnableUmlautList"

    const-string v22, "EN_GB"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/util/CSCReadAndSet;->getTagValueReturnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 968
    if-eqz v14, :cond_12

    .line 969
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 971
    :cond_12
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 972
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSelectUmlautLanguageList:Ljava/lang/String;

    .line 975
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaLanguage:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_16

    .line 976
    new-instance v3, Ljava/util/StringTokenizer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaLanguage:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, ";"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v3, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    .local v3, "LanguageStringTokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v21

    if-eqz v21, :cond_16

    .line 978
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    .line 979
    .restart local v20    # "token":Ljava/lang/String;
    if-eqz v20, :cond_16

    .line 980
    const-string v21, "_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 981
    .restart local v6    # "index":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v6, v0, :cond_1a

    .line 982
    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 983
    .restart local v10    # "language":Ljava/lang/String;
    add-int/lit8 v21, v6, 0x1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 984
    .restart local v12    # "locale":Ljava/lang/String;
    if-eqz v10, :cond_14

    .line 985
    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 987
    :cond_14
    if-eqz v12, :cond_15

    .line 988
    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 990
    :cond_15
    const-string v21, "da_language"

    invoke-static {v10, v12}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1001
    .end local v3    # "LanguageStringTokenizer":Ljava/util/StringTokenizer;
    .end local v6    # "index":I
    .end local v10    # "language":Ljava/lang/String;
    .end local v12    # "locale":Ljava/lang/String;
    .end local v20    # "token":Ljava/lang/String;
    :cond_16
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSupportUmlautLanguageList:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1c

    .line 1002
    const-string v21, "SamsungIME"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mCscVal_DaSupportUmlautLanguageList : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSupportUmlautLanguageList:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const-string v21, "support_languages"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSupportUmlautLanguageList:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1005
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-direct {v4, v13, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    .local v4, "SupportUmlautLanguageStringTokenizer":Ljava/util/StringTokenizer;
    :cond_17
    :goto_4
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v21

    if-eqz v21, :cond_1c

    .line 1008
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    .line 1010
    .restart local v20    # "token":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/util/CSCReadAndSet;->mCscVal_DaSupportUmlautLanguageList:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_17

    .line 1014
    if-eqz v20, :cond_17

    .line 1015
    const-string v21, "_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1016
    .restart local v6    # "index":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v6, v0, :cond_1b

    .line 1017
    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1018
    .restart local v10    # "language":Ljava/lang/String;
    add-int/lit8 v21, v6, 0x1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1019
    .restart local v12    # "locale":Ljava/lang/String;
    if-eqz v10, :cond_18

    .line 1020
    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 1022
    :cond_18
    if-eqz v12, :cond_19

    .line 1023
    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 1025
    :cond_19
    invoke-static {v10, v12}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1026
    .restart local v9    # "languadeId":I
    const-string v21, "0x%08x"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1027
    .restart local v8    # "key":Ljava/lang/String;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v5, v8, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 993
    .end local v4    # "SupportUmlautLanguageStringTokenizer":Ljava/util/StringTokenizer;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "languadeId":I
    .end local v10    # "language":Ljava/lang/String;
    .end local v12    # "locale":Ljava/lang/String;
    .restart local v3    # "LanguageStringTokenizer":Ljava/util/StringTokenizer;
    :cond_1a
    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    .line 994
    const-string v21, "da_language"

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3

    .line 1030
    .end local v3    # "LanguageStringTokenizer":Ljava/util/StringTokenizer;
    .restart local v4    # "SupportUmlautLanguageStringTokenizer":Ljava/util/StringTokenizer;
    :cond_1b
    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    .line 1031
    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1032
    .restart local v9    # "languadeId":I
    const-string v21, "0x%08x"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1033
    .restart local v8    # "key":Ljava/lang/String;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v5, v8, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_4

    .line 1040
    .end local v4    # "SupportUmlautLanguageStringTokenizer":Ljava/util/StringTokenizer;
    .end local v6    # "index":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "languadeId":I
    .end local v20    # "token":Ljava/lang/String;
    :cond_1c
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1d

    .line 1041
    sget-boolean v21, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v21, :cond_0

    .line 1042
    const-string v21, "SamsungIME"

    const-string v22, "commit() success"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1045
    :cond_1d
    sget-boolean v21, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v21, :cond_0

    .line 1046
    const-string v21, "SamsungIME"

    const-string v22, "commit() fail"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
