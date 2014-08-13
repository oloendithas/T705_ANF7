.class public final Lcom/diotek/ime/framework/common/FontManagerImpl;
.super Ljava/lang/Object;
.source "FontManagerImpl.java"

# interfaces
.implements Lcom/diotek/ime/framework/common/FontManager;


# static fields
.field private static mInstance:Lcom/diotek/ime/framework/common/FontManager;


# instance fields
.field protected mTypefaceFontSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/common/FontManagerImpl;->mInstance:Lcom/diotek/ime/framework/common/FontManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/common/FontManagerImpl;->mTypefaceFontSet:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/diotek/ime/framework/common/FontManagerImpl;->mTypefaceFontSet:Ljava/util/HashMap;

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/diotek/ime/framework/common/FontManager;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/diotek/ime/framework/common/FontManagerImpl;->mInstance:Lcom/diotek/ime/framework/common/FontManager;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/diotek/ime/framework/common/FontManagerImpl;

    invoke-direct {v0}, Lcom/diotek/ime/framework/common/FontManagerImpl;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/common/FontManagerImpl;->mInstance:Lcom/diotek/ime/framework/common/FontManager;

    .line 26
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/common/FontManagerImpl;->mInstance:Lcom/diotek/ime/framework/common/FontManager;

    return-object v0
.end method

.method private setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Typeface;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/diotek/ime/framework/common/FontManagerImpl;->mTypefaceFontSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method


# virtual methods
.method public addWordIntoTypoList(Ljava/lang/String;)V
    .locals 0
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 92
    return-void
.end method

.method public clearTypoList()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Landroid/graphics/Typeface;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/diotek/ime/framework/common/FontManagerImpl;->mTypefaceFontSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    .end local p2    # "defaultValue":Landroid/graphics/Typeface;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Landroid/graphics/Typeface;
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/common/FontManagerImpl;->mTypefaceFontSet:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    move-object p2, v0

    goto :goto_0
.end method

.method public getSystemFont()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 85
    const-string v0, "DROIDSANS_BOLD"

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0, v1}, Lcom/diotek/ime/framework/common/FontManagerImpl;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const-string v0, "DROIDSANS_BOLD"

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-direct {p0, v0, v1}, Lcom/diotek/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 53
    const-string v0, "DROIDSANS"

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-direct {p0, v0, v1}, Lcom/diotek/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 54
    const-string v0, "ROSEMARY"

    const-string v1, "/system/fonts/Rosemary.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/diotek/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 56
    const-string v0, "SAMSUNGSANS_KEYPAD"

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/SamsungKeypad-Medium.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/diotek/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 59
    const-string v0, "SAMSUNGSANS_NUM55"

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/SamsungSansNum55v.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/diotek/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 62
    const-string v0, "ROBOTO_REGULAR"

    const-string v1, "/system/fonts/Roboto-Regular.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/diotek/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 64
    const-string v0, "VOHWRPANEL"

    const-string v1, "VOHWRPANEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "HANDWRITING"

    const-string v1, "/system/fonts/LindseyforSamsung-Regular.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/diotek/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 71
    :cond_0
    const-string v0, "SAMSUNG_KEYPAD_REGULAR"

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/SamsungKeypad-Regular.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/diotek/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 77
    const-string v0, "ROBOTO_KEYPAD_MEDIUM"

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/RobotoKeypad-Medium.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/diotek/ime/framework/common/FontManagerImpl;->setFont(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 81
    return-void
.end method

.method public isContainInTypoList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public refreshContextBuffer(Z)I
    .locals 1
    .param p1, "containCurrentWord"    # Z

    .prologue
    .line 107
    const/4 v0, -0x1

    return v0
.end method
