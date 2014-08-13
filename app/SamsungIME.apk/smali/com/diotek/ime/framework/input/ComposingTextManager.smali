.class public Lcom/diotek/ime/framework/input/ComposingTextManager;
.super Ljava/lang/Object;
.source "ComposingTextManager.java"


# static fields
.field private static mComposing:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append(C)V
    .locals 2
    .param p0, "ch"    # C

    .prologue
    .line 18
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isFullWidthMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/diotek/ime/framework/util/Utils;->convertHalftoFull(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    :goto_0
    return-void

    .line 21
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static append(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 14
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 15
    return-void
.end method

.method public static clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 26
    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_0
    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 30
    return-void
.end method

.method public static codePointAt(I)I
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 103
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v0

    return v0
.end method

.method public static composingText()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static delete(II)V
    .locals 1
    .param p0, "start"    # I
    .param p1, "end"    # I

    .prologue
    .line 111
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 112
    return-void
.end method

.method public static deleteCharAt(I)V
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 119
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 120
    return-void
.end method

.method public static deleteLastChar()V
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 124
    return-void
.end method

.method public static getFirstChar()C
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    return v0
.end method

.method public static getHashCode()I
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public static getLastChar()C
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 72
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasComposing()Z
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 43
    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasKeyAT()Z
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasKeyComma()Z
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasKeyQuestion()Z
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasKeydot()Z
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasOneChar()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 53
    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasWWWdot()Z
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "www"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty()Z
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static length()I
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public static replace(C)V
    .locals 0
    .param p0, "composing"    # C

    .prologue
    .line 83
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 84
    invoke-static {p0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    .line 85
    return-void
.end method

.method public static replace(Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "composing"    # Ljava/lang/CharSequence;

    .prologue
    .line 98
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 99
    invoke-static {p0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 100
    return-void
.end method

.method public static replace(Ljava/lang/String;)V
    .locals 0
    .param p0, "composing"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 94
    invoke-static {p0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method

.method public static replace(Ljava/lang/StringBuilder;)V
    .locals 0
    .param p0, "composing"    # Ljava/lang/StringBuilder;

    .prologue
    .line 88
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    .line 89
    invoke-static {p0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method

.method public static setCharAt(IC)V
    .locals 1
    .param p0, "index"    # I
    .param p1, "ch"    # C

    .prologue
    .line 67
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 68
    return-void
.end method

.method public static setLength(I)V
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 79
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 80
    return-void
.end method

.method public static substring(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 107
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substring(II)Ljava/lang/String;
    .locals 1
    .param p0, "start"    # I
    .param p1, "end"    # I

    .prologue
    .line 115
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trim()V
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 62
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManager;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 64
    :cond_0
    return-void
.end method
