.class public Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;
.super Ljava/lang/Object;
.source "UmlautInfo.java"


# instance fields
.field private mKeycode:I

.field private mLanguageID:Ljava/lang/String;

.field private mUmlautString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "langID"    # Ljava/lang/String;
    .param p2, "keycode"    # I
    .param p3, "umlaut"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->mLanguageID:Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->mKeycode:I

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->mUmlautString:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->mLanguageID:Ljava/lang/String;

    .line 11
    iput p2, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->mKeycode:I

    .line 12
    iput-object p3, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->mUmlautString:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getKeyCode()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->mKeycode:I

    return v0
.end method

.method public getLanguageID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->mLanguageID:Ljava/lang/String;

    return-object v0
.end method

.method public getUmlautString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->mUmlautString:Ljava/lang/String;

    return-object v0
.end method
