.class public Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;
.super Ljava/lang/Object;
.source "PhraseItemClass.java"


# instance fields
.field private phraseCategory:Ljava/lang/String;

.field private phraseEditText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "editText"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;->setPhraseCategory(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;->setPhraseEditText(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getPhraseCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;->phraseCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getPhraseEditText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;->phraseEditText:Ljava/lang/String;

    return-object v0
.end method

.method public setPhraseCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "phraseCategory"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;->phraseCategory:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setPhraseEditText(Ljava/lang/String;)V
    .locals 0
    .param p1, "phraseEditText"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;->phraseEditText:Ljava/lang/String;

    .line 18
    return-void
.end method
